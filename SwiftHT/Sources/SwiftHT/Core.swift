//
//  Core.swift
//  SwiftHT
//
//  Created by Dot iTeam on 2026-05-27.
//

public protocol HTElement : CustomStringConvertible {
    func write(to writer: inout some HTWriter)
}
public extension HTElement {
    var description: String {
        var writer = BufferedHTWriter()
        self.write(to: &writer)
        return String(bytes: writer.data, encoding: .utf8) ?? ""
    }
}
public struct HTGroup<each E: HTElement> : HTElement {
    public let value: (repeat each E)
    public init(value: repeat each E) {
        self.value = (repeat each value)
    }
    public func write(to writer: inout some HTWriter) {
        repeat (each value).write(to: &writer)
    }
}
public func writeEncodedHtml(
    _ value: some CustomStringConvertible,
    to writer: inout some HTWriter
) {
    value.description.forEach {
        switch $0 {
        case ">":
            writer.write("&gt;")
        case "<":
            writer.write("&lt;")
        case "&":
            writer.write("&amp;")
        case "\"":
            writer.write("&quot;")
        case "\'":
            writer.write("&apos;")
        default:
            writer.write($0)
        }
    }
}
public enum HTAttribute : HTElement {
    case attr(String, String)
    case single(String)
    case none
    public func write(to writer: inout some HTWriter) {
        switch self {
        case .attr(let name, let value):
            writer.write(" \(name)=\"")
            writeEncodedHtml(value, to: &writer)
            writer.write("\"")
        case .single(let name):
            writer.write(" \(name)")
        case .none:
            break
        }
    }
}
public struct Empty : HTElement {
    public init() {}
    public func write(to _: inout some HTWriter) {
        
    }
}
public struct HTOptional<E: HTElement> : HTElement {
    public let value: E?
    public init(_ value: E?) {
        self.value = value
    }
    public func write(to writer: inout some HTWriter) {
        if let value {
            value.write(to: &writer)
        }
    }
}
public struct AnyHTElement : HTElement {
    public let value: any HTElement
    public init<E: HTElement>(_ value: E) {
        self.value = value
    }
    public func write(to writer: inout some HTWriter) {
        value.write(to: &writer)
    }
}
public struct HTArray<E: HTElement> : HTElement {
    public let value: [E]
    public init(_ value: [E]) {
        self.value = value
    }
    public func write(to writer: inout some HTWriter) {
        value.forEach { $0.write(to: &writer) }
    }
}
public struct HTConditional<TrueContent: HTElement, FalseContent: HTElement> : HTElement {
    public let condition: Bool
    public let first: TrueContent?
    public let second: FalseContent?
    public init(condition: Bool, first: TrueContent?, second: FalseContent?) {
        self.condition = condition
        self.first = first
        self.second = second
    }
    public func write(to writer: inout some HTWriter) {
        if condition {
            if let first {
                first.write(to: &writer)
            }
        } else {
            if let second {
                second.write(to: &writer)
            }
        }
    }
}

@resultBuilder
public struct HTBuilder {
    public static func buildExpression<C: HTElement>(_ element: C) -> C {
        element
    }
    public static func buildBlock<each E: HTElement>(_ components: repeat each E) -> HTGroup<repeat each E> {
        HTGroup<repeat each E>(value: repeat each components)
    }
    public static func buildPartialBlock<C1: HTElement>(first: C1) -> HTGroup<C1> {
        return HTGroup<C1>(value: first)
    }
    public static func buildPartialBlock<each E: HTElement, C: HTElement>(accumulated: HTGroup<repeat each E>, next: C) -> HTGroup<repeat each E, C> {
        return HTGroup<repeat each E, C>(value: repeat each accumulated.value, next)
    }
    public static func buildOptional<C: HTElement>(_ component: C?) -> HTOptional<C> {
        return HTOptional(component)
    }
    public static func buildEither<TrueContent: HTElement, FalseContent: HTElement>(first: TrueContent) -> HTConditional<TrueContent, FalseContent> {
        HTConditional(condition: true, first: first, second: nil)
    }
    public static func buildEither<TrueContent: HTElement, FalseContent: HTElement>(second: FalseContent) -> HTConditional<TrueContent, FalseContent> {
        HTConditional(condition: false, first: nil, second: second)
    }
    public static func buildArray<C: HTElement>(_ components: [C]) -> HTArray<C> {
        HTArray(components)
    }
}
public struct HTDocument<Content: HTElement> : HTElement {
    public let content: Content
    public init(@HTBuilder content: () -> Content) {
        self.content = content()
    }
    public func write(to writer: inout some HTWriter) {
        writer.write("<!doctype html>")
        content.write(to: &writer)
    }
}
public protocol HTTag : HTElement {
    associatedtype Content: HTElement
    var name : () -> String { get }
    var content: Content { get }
    var attributes: [HTAttribute] { get set }
}
public extension HTTag {
    func write(to writer: inout some HTWriter) {
        writer.write("<\(name())")
        attributes.forEach { attribute in
            attribute.write(to: &writer)
        }
        writer.write(">")
        content.write(to: &writer)
        writer.write("</\(name())>")
    }
    mutating func attr(_ attributes: HTAttribute...) -> Self {
        self.attributes.append(contentsOf: attributes)
        return self
    }
}
public struct Tag<Content: HTElement>: HTTag {
    public var content: Content
    public var attributes: [HTAttribute] = []
    public var name: () -> String
    public init(name: @autoclosure @escaping () -> String, _ attributes: HTAttribute..., @HTBuilder build: () -> Content) {
        self.name = name
        self.attributes = attributes
        self.content = build()
    }
    public init(name: @autoclosure @escaping () -> String, _ attributes: [HTAttribute] = [], @HTBuilder build: () -> Content) {
        self.name = name
        self.attributes = attributes
        self.content = build()
    }
}
public protocol HTClosedTag : HTElement {
    var name : () -> String { get }
    var attributes: [HTAttribute] { get set }
}
public extension HTClosedTag {
    func write(to writer: inout some HTWriter) {
        writer.write("<\(name())")
        attributes.forEach { attribute in attribute.write(to: &writer) }
        writer.write("/>")
    }
}
public struct ClosedTag : HTClosedTag {
    public var name: () -> String
    public var attributes: [HTAttribute] = []
    public init(name: @autoclosure @escaping () -> String, _ attributes: HTAttribute...) {
        self.name = name
        self.attributes = attributes
    }
    public init(name: @autoclosure @escaping () -> String, _ attributes: [HTAttribute] = []) {
        self.name = name
        self.attributes = attributes
    }
}
public struct RawHTML: HTElement {
    public var content: String
    public init(_ content: String) {
        self.content = content
    }
    public func write(to writer: inout some HTWriter) {
        writer.write(content)
    }
}
extension CustomStringConvertible {
    public func write(to writer: inout some HTWriter) {
        writeEncodedHtml(self, to: &writer)
    }
}
extension String : HTElement {

}
extension Int : HTElement {
    
}
extension Float : HTElement {
    
}
extension Double : HTElement {
    
}
#if canImport(SwiftUI) && canImport(WebKit)
    import SwiftUI
    import WebKit
    @available(macOS 26.0, iOS 26.0, *)
    public struct HTView<U: View, E: HTElement> : View {
        
        @State public var page: WebPage
        public let view: U
        public let element: () -> E
        public init(page: () -> WebPage = { WebPage() }, view: (WebPage) -> U = { WebView($0) }, @HTBuilder _ element: @escaping () -> E) {
            let p = page()
            self._page = State(initialValue: p)
            self.view = view(p)
            self.element = element
        }
        public var body: some View {
            view.task {
                var writer = BufferedHTWriter()
                element().write(to: &writer)
                self.page.load(html: String(bytes: writer.data, encoding: .utf8) ?? "")
            }
        }
    }
#endif
