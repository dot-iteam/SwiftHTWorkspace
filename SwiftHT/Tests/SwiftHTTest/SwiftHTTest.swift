import Testing
@testable import SwiftHT

@Test func simpleTest() async throws {
    let entity : some HTElement = Div {
        Style {
            css("button") {
                ("background", "white")
            }
        }
        Button(.title("Click me")) {
            "Button"
        }
    }
    #expect(entity.description == "<div><style>button{background:white;}</style><button title=\"Click me\">Button</button></div>")
}
