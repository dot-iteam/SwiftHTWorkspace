// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftHT
import Vapor
public struct MimeView: ResponseEncodable, AsyncResponseEncodable, Sendable {
    public var data: ByteBuffer
    public let type: HTTPMediaType
    public init(data: ByteBuffer, type: HTTPMediaType) {
        self.data = data
        self.type = type
    }

    public func encodeResponse(for request: Request) -> EventLoopFuture<Response> {
        let response = Response()
        response.headers.contentType = type
        response.body = .init(buffer: self.data)
        return request.eventLoop.makeSucceededFuture(response)
    }
    public func encodeResponse(for request: Request) async throws -> Response {
        let response = Response()
        response.headers.contentType = type
        response.body = .init(buffer: self.data)
        return response
    }
}
public func HTServe<each E: HTElement>(type: HTTPMediaType = .html, @HTBuilder build: () -> HTGroup<repeat each E>) -> MimeView {
    var writer = BufferedHTWriter()
    build().write(to: &writer)
    return MimeView(data: ByteBuffer(bytes: writer.data), type: type)
}
