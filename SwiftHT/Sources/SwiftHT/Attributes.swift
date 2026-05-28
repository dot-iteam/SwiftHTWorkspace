//
//  Attributes.swift
//  SwiftHT
//
//  Created by Dot iTeam on 2026-05-27.
//

public extension HTAttribute {
    @inlinable
    static func accept(_ value: String) -> HTAttribute {
        .attr("accept", value)
    }
    @inlinable
    static func acceptCharset(_ value: String) -> HTAttribute {
        .attr("accept-charset", value)
    }
    @inlinable
    static func acccessKey(_ value: String) -> HTAttribute {
        .attr("accesskey", value)
    }
    @inlinable
    static func action(_ value: String) -> HTAttribute {
        .attr("action", value)
    }
    @inlinable
    static func allow(_ value: String) -> HTAttribute {
        .attr("allow", value)
    }
    @inlinable
    static func alpha(_ value: String) -> HTAttribute {
        .attr("alpha", value)
    }
    @inlinable
    static func alt(_ value: String) -> HTAttribute {
        .attr("alt", value)
    }
    @inlinable
    static func `as`(_ value: String) -> HTAttribute {
        .attr("as", value)
    }
    @inlinable
    static func `async`(_ value: String) -> HTAttribute {
        .attr("async", value)
    }
    @inlinable
    static func autocapitalize(_ value: String) -> HTAttribute {
        .attr("autocapitalize", value)
    }
    @inlinable
    static func autocomplete(_ value: String) -> HTAttribute {
        .attr("autocomplete", value)
    }
    @inlinable
    static func autoplay() -> HTAttribute {
        .single("autoplay")
    }
    @inlinable
    static func background(_ value: String) -> HTAttribute {
        .attr("background", value)
    }
    @inlinable
    static func bgcolor(_ value: String) -> HTAttribute {
        .attr("bgcolor", value)
    }
    @inlinable
    static func border(_ value: String) -> HTAttribute {
        .attr("border", value)
    }
    @inlinable
    static func capture(_ value: String) -> HTAttribute {
        .attr("capture", value)
    }
    @inlinable
    static func charset(_ value: String) -> HTAttribute {
        .attr("charset", value)
    }
    @inlinable
    static func checked() -> HTAttribute {
        .single("checked")
    }
    @inlinable
    static func cite(_ value: String) -> HTAttribute {
        .attr("cite", value)
    }
    @inlinable
    static func `class`(_ value: String) -> HTAttribute {
        .attr("class", value)
    }
    @inlinable
    static func color(_ value: String) -> HTAttribute {
        .attr("color", value)
    }
    @inlinable
    static func colorspace(_ value: String) -> HTAttribute {
        .attr("colorspace", value)
    }
    @inlinable
    static func cols(_ value: String) -> HTAttribute {
        .attr("cols", value)
    }
    @inlinable
    static func colspan(_ value: String) -> HTAttribute {
        .attr("colspan", value)
    }
    @inlinable
    static func content(_ value: String) -> HTAttribute {
        .attr("content", value)
    }
    @inlinable
    static func contenteditable(_ value: String) -> HTAttribute {
        .attr("contenteditable", value)
    }
    @inlinable
    static func controls() -> HTAttribute {
        .single("controls")
    }
    @inlinable
    static func coords(_ value: String) -> HTAttribute {
        .attr("coords", value)
    }
    @inlinable
    static func crossorigin(_ value: String) -> HTAttribute {
        .attr("crossorigin", value)
    }
    @inlinable
    static func command(_ value: String) -> HTAttribute {
        .attr("command", value)
    }
    @inlinable
    static func commandform(_ value: String) -> HTAttribute {
        .attr("commandfor", value)
    }
    @inlinable
    static func csp(_ value: String) -> HTAttribute {
        .attr("csp", value)
    }
    @inlinable
    static func data(_ value: String) -> HTAttribute {
        .attr("data", value)
    }
    @inlinable
    static func datetime(_ value: String) -> HTAttribute {
        .attr("datetime", value)
    }
    @inlinable
    static func decoding(_ value: String) -> HTAttribute {
        .attr("decoding", value)
    }
    @inlinable
    static func `default`(_ value: String) -> HTAttribute {
        .attr("default", value)
    }
    @inlinable
    static func `defer`(_ value: String) -> HTAttribute {
        .attr("defer", value)
    }
    @inlinable
    static func dir(_ value: String) -> HTAttribute {
        .attr("dir", value)
    }
    @inlinable
    static func dirname(_ value: String) -> HTAttribute {
        .attr("dirname", value)
    }
    @inlinable
    static func disabled(_ value: String) -> HTAttribute {
        .attr("disabled", value)
    }
    @inlinable
    static func download() -> HTAttribute {
        .single("download")
    }
    @inlinable
    static func draggable(_ value: String) -> HTAttribute {
        .attr("draggable", value)
    }
    @inlinable
    static func enctype(_ value: String) -> HTAttribute {
        .attr("enctype", value)
    }
    @inlinable
    static func enterkeyhint(_ value: String) -> HTAttribute {
        .attr("enterkeyhint", value)
    }
    @inlinable
    static func elementtiming(_ value: String) -> HTAttribute {
        .attr("elementtiming", value)
    }
    @inlinable
    static func fetchpriority(_ value: String) -> HTAttribute {
        .attr("fetchpriority", value)
    }
    @inlinable
    static func `for`(_ value: String) -> HTAttribute {
        .attr("for", value)
    }
    @inlinable
    static func form(_ value: String) -> HTAttribute {
        .attr("form", value)
    }
    @inlinable
    static func formaction(_ value: String) -> HTAttribute {
        .attr("formaction", value)
    }
    @inlinable
    static func formenctype(_ value: String) -> HTAttribute {
        .attr("formenctype", value)
    }
    @inlinable
    static func formmethod(_ value: String) -> HTAttribute {
        .attr("formmethod", value)
    }
    @inlinable
    static func formnovalidate() -> HTAttribute {
        .single("formnovalidate")
    }
    @inlinable
    static func formtarget(_ value: String) -> HTAttribute {
        .attr("formtarget", value)
    }
    @inlinable
    static func headers(_ value: String) -> HTAttribute {
        .attr("headers", value)
    }
    @inlinable
    static func height(_ value: String) -> HTAttribute {
        .attr("height", value)
    }
    @inlinable
    static func hidden() -> HTAttribute {
        .single("hidden")
    }
    @inlinable
    static func high(_ value: String) -> HTAttribute {
        .attr("high", value)
    }
    @inlinable
    static func href(_ value: String) -> HTAttribute {
        .attr("href", value)
    }
    @inlinable
    static func hreflang(_ value: String) -> HTAttribute {
        .attr("hreflang", value)
    }
    @inlinable
    static func httpEquiv(_ value: String) -> HTAttribute {
        .attr("http-equiv", value)
    }
    @inlinable
    static func id(_ value: String) -> HTAttribute {
        .attr("id", value)
    }
    @inlinable
    static func integrity(_ value: String) -> HTAttribute {
        .attr("integrity", value)
    }
    @inlinable
    static func inputmode(_ value: String) -> HTAttribute {
        .attr("inputmode", value)
    }
    @inlinable
    static func ismap() -> HTAttribute {
        .single("ismap")
    }
    @inlinable
    static func itemprop(_ value: String) -> HTAttribute {
        .attr("itemprop", value)
    }
    @inlinable
    static func kind(_ value: String) -> HTAttribute {
        .attr("kind", value)
    }
    @inlinable
    static func label(_ value: String) -> HTAttribute {
        .attr("label", value)
    }
    @inlinable
    static func lang(_ value: String) -> HTAttribute {
        .attr("lang", value)
    }
    @inlinable
    static func language(_ value: String) -> HTAttribute {
        .attr("language", value)
    }
    @inlinable
    static func loading(_ value: String) -> HTAttribute {
        .attr("loading", value)
    }
    @inlinable
    static func list(_ value: String) -> HTAttribute {
        .attr("list", value)
    }
    @inlinable
    static func loop() -> HTAttribute {
        .single("loop")
    }
    @inlinable
    static func low(_ value: String) -> HTAttribute {
        .attr("low", value)
    }
    @inlinable
    static func max(_ value: String) -> HTAttribute {
        .attr("max", value)
    }
    @inlinable
    static func maxlength(_ value: String) -> HTAttribute {
        .attr("maxlength", value)
    }
    @inlinable
    static func minlength(_ value: String) -> HTAttribute {
        .attr("minlength", value)
    }
    @inlinable
    static func media(_ value: String) -> HTAttribute {
        .attr("media", value)
    }
    @inlinable
    static func method(_ value: String) -> HTAttribute {
        .attr("method", value)
    }
    @inlinable
    static func multiple() -> HTAttribute {
        .single("multiple")
    }
    @inlinable
    static func muted() -> HTAttribute {
        .single("muted")
    }
    @inlinable
    static func name(_ value: String) -> HTAttribute {
        .attr("name", value)
    }
    @inlinable
    static func novalidate() -> HTAttribute {
        .single("novalidate")
    }
    @inlinable
    static func open() -> HTAttribute {
        .single("open")
    }
    @inlinable
    static func optimum(_ value: String) -> HTAttribute {
        .attr("optimum", value)
    }
    @inlinable
    static func pattern(_ value: String) -> HTAttribute {
        .attr("pattern", value)
    }
    @inlinable
    static func ping(_ value: String) -> HTAttribute {
        .attr("ping", value)
    }
    @inlinable
    static func placeholder(_ value: String) -> HTAttribute {
        .attr("placeholder", value)
    }
    @inlinable
    static func playsinline() -> HTAttribute {
        .single("playsinline")
    }
    @inlinable
    static func poster(_ value: String) -> HTAttribute {
        .attr("poster", value)
    }
    @inlinable
    static func preload(_ value: String) -> HTAttribute {
        .attr("preload", value)
    }
    @inlinable
    static func popover() -> HTAttribute {
        .single("popover")
    }
    @inlinable
    static func popovertarget(_ value: String) -> HTAttribute {
        .attr("popovertarget", value)
    }
    @inlinable
    static func popovertargetaction(_ value: String) -> HTAttribute {
        .attr("popovertargetaction", value)
    }
    @inlinable
    static func readonly() -> HTAttribute {
        .single("readonly")
    }
    @inlinable
    static func referrerpolicy(_ value: String) -> HTAttribute {
        .attr("referrerpolicy", value)
    }
    @inlinable
    static func rel(_ value: String) -> HTAttribute {
        .attr("rel", value)
    }
    @inlinable
    static func required() -> HTAttribute {
        .single("required")
    }
    @inlinable
    static func role(_ value: String) -> HTAttribute {
        .attr("role", value)
    }
    @inlinable
    static func rows(_ value: String) -> HTAttribute {
        .attr("rows", value)
    }
    @inlinable
    static func rowspan(_ value: String) -> HTAttribute {
        .attr("rowspan", value)
    }
    @inlinable
    static func sandbox(_ value: String) -> HTAttribute {
        .attr("sandbox", value)
    }
    @inlinable
    static func selected() -> HTAttribute {
        .single("selected")
    }
    @inlinable
    static func shape(_ value: String) -> HTAttribute {
        .attr("shape", value)
    }
    @inlinable
    static func size(_ value: String) -> HTAttribute {
        .attr("size", value)
    }
    @inlinable
    static func sizes(_ value: String) -> HTAttribute {
        .attr("sizes", value)
    }
    @inlinable
    static func slot(_ value: String) -> HTAttribute {
        .attr("size", value)
    }
    @inlinable
    static func span(_ value: String) -> HTAttribute {
        .attr("span", value)
    }
    @inlinable
    static func spellcheck(_ value: String) -> HTAttribute {
        .attr("spellcheck", value)
    }
    @inlinable
    static func src(_ value: String) -> HTAttribute {
        .attr("src", value)
    }
    @inlinable
    static func srcdoc(_ value: String) -> HTAttribute {
        .attr("srcdoc", value)
    }
    @inlinable
    static func srclang(_ value: String) -> HTAttribute {
        .attr("srclang", value)
    }
    @inlinable
    static func srcset(_ value: String) -> HTAttribute {
        .attr("srcset", value)
    }
    @inlinable
    static func start(_ value: String) -> HTAttribute {
        .attr("start", value)
    }
    @inlinable
    static func step(_ value: String) -> HTAttribute {
        .attr("step", value)
    }
    @inlinable
    static func style(_ value: String) -> HTAttribute {
        .attr("style", value)
    }
    @inlinable
    static func tabindex(_ value: String) -> HTAttribute {
        .attr("tabindex", value)
    }
    @inlinable
    static func target(_ value: String) -> HTAttribute {
        .attr("target", value)
    }
    @inlinable
    static func title(_ value: String) -> HTAttribute {
        .attr("title", value)
    }
    @inlinable
    static func translate(_ value: String) -> HTAttribute {
        .attr("translate", value)
    }
    @inlinable
    static func type(_ value: String) -> HTAttribute {
        .attr("type", value)
    }
    @inlinable
    static func value(_ value: String) -> HTAttribute {
        .attr("value", value)
    }
    @inlinable
    static func width(_ value: String) -> HTAttribute {
        .attr("width", value)
    }
    @inlinable
    static func wrap(_ value: String) -> HTAttribute {
        .attr("wrap", value)
    }
}
