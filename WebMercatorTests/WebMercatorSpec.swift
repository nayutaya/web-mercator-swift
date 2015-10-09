
import Quick
import Nimble
@testable import WebMercator

class WebMercatorSpec : QuickSpec {
    override func spec() {
        describe("const") {
            it("") {
                expect(WebMercator.LATITUDE_MAXIMUM_IN_DEGREES).to(beCloseTo( +85.051128, within: 1.0e-5))
                expect(WebMercator.LATITUDE_MINIMUM_IN_DEGREES).to(beCloseTo( -85.051128, within: 1.0e-5))
                expect(WebMercator.LATITUDE_DELTA_IN_DEGREES  ).to(beCloseTo(+170.102257, within: 1.0e-5))
                expect(WebMercator.LONGITUDE_MAXIMUM_IN_DEGREES).to(beCloseTo(+180.0, within: 1.0e-5))
                expect(WebMercator.LONGITUDE_MINIMUM_IN_DEGREES).to(beCloseTo(-180.0, within: 1.0e-5))
                expect(WebMercator.LONGITUDE_DELTA_IN_DEGREES  ).to(beCloseTo(+360.0, within: 1.0e-5))
            }
        }
    }
}
