//
//  Component.swift
//  SwiftHT
//
//  Created by Dot iTeam on 2026-05-28.
//

public protocol HTComponent : HTElement where Content: HTElement {
    associatedtype Content
    var body: Content { get }
}
public extension HTComponent {
    func write(to writer: inout some HTWriter) {
        body.write(to: &writer)
    }
}
public protocol CSSComponent : CSSElement where Content: CSSElement {
    associatedtype Content
    var style: Content { get }
}
public extension CSSComponent {
    func write(to writer: inout some HTWriter) {
        style.write(to: &writer)
    }
}
