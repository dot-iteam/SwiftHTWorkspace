//
//  Writer.swift
//  SwiftHT
//
//  Created by Dot iTeam on 2026-05-27.
//

public protocol HTWriter {
    mutating func write(_ value: some CustomStringConvertible)
}
public struct BufferedHTWriter : HTWriter {
    public var data: Array<UInt8>
    public init(capacity: Int = 4*1024) {
        data = []
        data.reserveCapacity(capacity)
    }
    public mutating func write(_ value: some CustomStringConvertible) {
        data.append(contentsOf: value.description.utf8)
    }
}
