//
//  CSS.swift
//  SwiftHT
//
//  Created by Dot iTeam on 2026-05-27.
//

public protocol CSSElement : HTElement {
    
}
public struct CSSGroup<each E: CSSElement> : CSSElement {
    public let value: (repeat each E)
    public init(value: repeat each E) {
        self.value = (repeat each value)
    }
    public func write(to writer: inout some HTWriter) {
        repeat (each value).write(to: &writer)
    }
}
public struct EmptyCSS : CSSElement {
    public func write(to _: inout some HTWriter) {
        
    }
}
public struct CSSOptional<E: CSSElement> : CSSElement {
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
public struct AnyCSSElement : CSSElement {
    public let value: any CSSElement
    public init<E: CSSElement>(_ value: E) {
        self.value = value
    }
    public func write(to writer: inout some HTWriter) {
        value.write(to: &writer)
    }
}
public struct CSSArray<E: CSSElement> : CSSElement {
    public let value: [E]
    public init(_ value: [E]) {
        self.value = value
    }
    public func write(to writer: inout some HTWriter) {
        value.forEach { $0.write(to: &writer) }
    }
}
public struct CSSConditional<TrueContent: CSSElement, FalseContent: CSSElement> : CSSElement {
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
public struct CSSBuilder {
    public static func buildExpression<C: CSSElement>(_ element: C) -> C {
        element
    }
    public static func buildExpression(_ element: (String, String)) -> CSSProperty {
        .prop(element.0, element.1)
    }
    public static func buildBlock<each E: CSSElement>(_ components: repeat each E) -> CSSGroup<repeat each E> {
        CSSGroup<repeat each E>(value: repeat each components)
    }
    public static func buildPartialBlock<C1: CSSElement>(first: C1) -> CSSGroup<C1> {
        return CSSGroup<C1>(value: first)
    }
    public static func buildPartialBlock<each E: CSSElement, C: CSSElement>(accumulated: CSSGroup<repeat each E>, next: C) -> CSSGroup<repeat each E, C> {
        return CSSGroup<repeat each E, C>(value: repeat each accumulated.value, next)
    }
    public static func buildOptional<C: CSSElement>(_ component: C?) -> CSSOptional<C> {
        return CSSOptional(component)
    }
    public static func buildEither<TrueContent: CSSElement, FalseContent: CSSElement>(first: TrueContent) -> CSSConditional<TrueContent, FalseContent> {
        CSSConditional(condition: true, first: first, second: nil)
    }
    public static func buildEither<TrueContent: CSSElement, FalseContent: CSSElement>(second: FalseContent) -> CSSConditional<TrueContent, FalseContent> {
        CSSConditional(condition: false, first: nil, second: second)
    }
    public static func buildArray<C: CSSElement>(_ components: [C]) -> CSSArray<C> {
        CSSArray(components)
    }
}
public enum CSSProperty : CSSElement {
    case prop(String, String)
    case none
    public func write(to writer: inout some HTWriter) {
        switch self {
            case .prop(let key, let value):
            writer.write("\(key):\(value);")
        case .none:
            break
        }
    }
}
extension Dictionary: HTElement where Key == String, Value == String {
    public func write(to writer: inout some HTWriter) {
        self.forEach { key, value in
            CSSProperty.prop(key, value).write(to: &writer)
        }
    }
}
public func prop(_ key: String, _ value: String) -> CSSProperty {
    .prop(key, value)
}
public struct Css<Content: CSSElement>: CSSElement {
    public let value: String
    public let properties: [CSSProperty]
    public let content: Content
    public init(_ value: String, _ properties: CSSProperty..., @CSSBuilder content: () -> Content) {
        self.value = value
        self.properties = properties
        self.content = content()
    }
    public init(_ value: String, _ properties: [CSSProperty] = [], @CSSBuilder content: () -> Content) {
        self.value = value
        self.properties = properties
        self.content = content()
    }
    public func write(to writer: inout some HTWriter) {
        writer.write("\(value){")
        properties.forEach { $0.write(to: &writer) }
        content.write(to: &writer)
        writer.write("}")
    }
}
extension Css where Content == EmptyCSS {
    public init(_ value: String, _ properties: CSSProperty...) {
        self.value = value
        self.properties = properties
        self.content = EmptyCSS()
    }
}
public func css(_ value: String, _ properties: CSSProperty...) -> Css<CSSGroup<EmptyCSS>> {
    .init(value, properties, content: { EmptyCSS() })
}
public func css(_ value: String, _ properties: CSSProperty..., @CSSBuilder content: () -> some CSSElement) -> some CSSElement {
    Css(value, properties, content: content)
}
