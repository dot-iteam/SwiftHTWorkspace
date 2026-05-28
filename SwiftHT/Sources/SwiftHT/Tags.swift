// The Swift Programming Language
// https://docs.swift.org/swift-book

public func A<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "a", attributes, build: build)
}
public func Abbr<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "abbr", attributes, build: build)
}
public func Address<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "address", attributes, build: build)
}
public func Area<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "area", attributes, build: build)
}
public func Article<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "article", attributes, build: build)
}
public func Aside<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "aside", attributes, build: build)
}
public func Audio<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "audio", attributes, build: build)
}
public func B<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "b", attributes, build: build)
}
public func Base<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "base", attributes, build: build)
}
public func Bdi<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "bdi", attributes, build: build)
}
public func Bdo<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "bdo", attributes, build: build)
}
public func Blockquote<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "blockquote", attributes, build: build)
}
public func Body<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "body", attributes, build: build)
}
public func Br(_ attributes: HTAttribute...) -> ClosedTag {
    .init(name: "br", attributes)
}
public func Button<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "button", attributes, build: build)
}
public func Canvas<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "canvas", attributes, build: build)
}
public func Caption<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "caption", attributes, build: build)
}
public func Cite<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "cite", attributes, build: build)
}
public func Code<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "code", attributes, build: build)
}
public func Col(_ attributes: HTAttribute...) -> ClosedTag {
    .init(name: "col", attributes)
}
public func Colgroup<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "colgroup", attributes, build: build)
}
public func Data<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "data", attributes, build: build)
}
public func DataList<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "datalist", attributes, build: build)
}
public func Dd<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "dd", attributes, build: build)
}
public func Del<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "del", attributes, build: build)
}
public func Details<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "details", attributes, build: build)
}
public func Dfn<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "dfn", attributes, build: build)
}
public func Dialog<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "dialog", attributes, build: build)
}
public func Div<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "div", attributes, build: build)
}
public func Dl<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "dl", attributes, build: build)
}
public func Dt<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "dt", attributes, build: build)
}
public func Em<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "em", attributes, build: build)
}
public func Embed<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "embed", attributes, build: build)
}
public func FencedFrame<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "fencedframe", attributes, build: build)
}
public func Fieldset<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "fieldset", attributes, build: build)
}
public func Figcaption<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "figcaption", attributes, build: build)
}
public func Figure<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "figure", attributes, build: build)
}
public func Footer<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "footer", attributes, build: build)
}
public func Form<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "form", attributes, build: build)
}
public func Geolocation<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "geolocation", attributes, build: build)
}
public func H1<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "h1", attributes, build: build)
}
public func H2<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "h2", attributes, build: build)
}
public func H3<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "h3", attributes, build: build)
}
public func H4<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "h4", attributes, build: build)
}
public func H5<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "h5", attributes, build: build)
}
public func H6<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "h6", attributes, build: build)
}
public func Head<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "head", attributes, build: build)
}
public func Header<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "header", attributes, build: build)
}
public func Hgroup<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "hgroup", attributes, build: build)
}
public func Hr(_ attributes: HTAttribute...) -> ClosedTag {
    .init(name: "hr", attributes)
}
public func Html<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "html", attributes, build: build)
}
public func I<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "i", attributes, build: build)
}
public func Iframe<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "iframe", attributes, build: build)
}
public func Img(_ attributes: HTAttribute...) -> ClosedTag {
    .init(name: "img", attributes)
}
public func Input<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "input", attributes, build: build)
}
public func Ins<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "ins", attributes, build: build)
}
public func Kbd<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "kbd", attributes, build: build)
}
public func Label<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "label", attributes, build: build)
}
public func Li<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "li", attributes, build: build)
}
public func Link(_ attributes: HTAttribute...) -> ClosedTag {
    .init(name: "link", attributes)
}
public func Main<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "main", attributes, build: build)
}
public func Map<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "map", attributes, build: build)
}
public func Mark<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "mark", attributes, build: build)
}
public func Menu<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "menu", attributes, build: build)
}
public func Meta(_ attributes: HTAttribute...) -> ClosedTag {
    .init(name: "meta", attributes)
}
public func Meter<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "meter", attributes, build: build)
}
public func Nav<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "nav", attributes, build: build)
}
public func Noscript<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "noscript", attributes, build: build)
}
public func Object<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "object", attributes, build: build)
}
public func Ol<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "ol", attributes, build: build)
}
public func Optgroup<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "optgroup", attributes, build: build)
}
public func Output<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "output", attributes, build: build)
}
public func P<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "p", attributes, build: build)
}
public func Picture<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "picture", attributes, build: build)
}
public func Pre<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "pre", attributes, build: build)
}
public func Progress<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "progress", attributes, build: build)
}
public func Q<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "q", attributes, build: build)
}
public func Rp<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "rp", attributes, build: build)
}
public func Rt<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "rt", attributes, build: build)
}
public func Ruby<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "ruby", attributes, build: build)
}
public func S<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "s", attributes, build: build)
}
public func Samp<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "samp", attributes, build: build)
}
public func Script<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "script", attributes, build: build)
}
public func Search<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "search", attributes, build: build)
}
public func Section<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "section", attributes, build: build)
}
public func Select<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "select", attributes, build: build)
}
public func SelectedContent<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "selectedcontent", attributes, build: build)
}
public func Slot<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "slot", attributes, build: build)
}
public func Small<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "small", attributes, build: build)
}
public func Source<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "source", attributes, build: build)
}
public func Span<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "span", attributes, build: build)
}
public func Strong<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "strong", attributes, build: build)
}
public func Style<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "style", attributes, build: build)
}
public func Sub<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "sub", attributes, build: build)
}
public func Summary<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "summary", attributes, build: build)
}
public func Sup<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "sup", attributes, build: build)
}
public func Table<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "table", attributes, build: build)
}
public func Td<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "td", attributes, build: build)
}
public func Template<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "template", attributes, build: build)
}
public func Textarea<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "textarea", attributes, build: build)
}
public func TFoot<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "tfoot", attributes, build: build)
}
public func Th<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "th", attributes, build: build)
}
public func THead<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "thead", attributes, build: build)
}
public func Time<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "time", attributes, build: build)
}
public func Title<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "title", attributes, build: build)
}
public func Tr<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    Tag(name: "tr", attributes, build: build)
}
public func Track<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "track", attributes, build: build)
}
public func U<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "u", attributes, build: build)
}
public func Ul<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "ul", attributes, build: build)
}
public func Var<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "var", attributes, build: build)
}
public func Video<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "video", attributes, build: build)
}
public func Wbr<Content: HTElement>(_ attributes: HTAttribute..., @HTBuilder build: () -> Content) -> Tag<Content> {
    .init(name: "wbr", attributes, build: build)
}
