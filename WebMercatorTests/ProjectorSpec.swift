
import Quick
import Nimble
@testable import WebMercator

class ProjectorSpec : QuickSpec {
    override func spec() {
        describe("const") {
            it("") {
                expect(Projector.LATITUDE_MAXIMUM_IN_DEGREES).to(beCloseTo( +85.051128, within: 1e-5))
                expect(Projector.LATITUDE_MINIMUM_IN_DEGREES).to(beCloseTo( -85.051128, within: 1e-5))
                expect(Projector.LATITUDE_DELTA_IN_DEGREES  ).to(beCloseTo(+170.102257, within: 1e-5))
                expect(Projector.LONGITUDE_MAXIMUM_IN_DEGREES).to(beCloseTo(+180.0, within: 1e-5))
                expect(Projector.LONGITUDE_MINIMUM_IN_DEGREES).to(beCloseTo(-180.0, within: 1e-5))
                expect(Projector.LONGITUDE_DELTA_IN_DEGREES  ).to(beCloseTo(+360.0, within: 1e-5))
            }
        }

        describe(".latitudeToMercatorY") {
            it("緯度をメルカトルY座標に変換する") {
                expect(Projector.latitudeToMercatorY(+85.05112)).to(beCloseTo(+1.0, within: 1e-5))
                expect(Projector.latitudeToMercatorY(  0.00000)).to(beCloseTo( 0.0, within: 1e-15))
                expect(Projector.latitudeToMercatorY(-85.05112)).to(beCloseTo(-1.0, within: 1e-5))
            }
        }
        
        describe(".longitudeToMercatorX") {
            it("経度をメルカトルX座標に変換する") {
                expect(Projector.longitudeToMercatorX(+180.0)).to(beCloseTo(+1.0, within: 1e-5))
                expect(Projector.longitudeToMercatorX( +90.0)).to(beCloseTo(+0.5, within: 1e-5))
                expect(Projector.longitudeToMercatorX(   0.0)).to(beCloseTo( 0.0, within: 1e-5))
                expect(Projector.longitudeToMercatorX( -90.0)).to(beCloseTo(-0.5, within: 1e-5))
                expect(Projector.longitudeToMercatorX(-180.0)).to(beCloseTo(-1.0, within: 1e-5))
            }
        }
        
        describe(".mercatorYToLatitude") {
            it("メルカトルY座標を緯度に変換する") {
                expect(Projector.mercatorYToLatitude(+1.0)).to(beCloseTo(+85.05112, within: 1e-5))
                expect(Projector.mercatorYToLatitude( 0.0)).to(beCloseTo(  0.00000, within: 1e-15))
                expect(Projector.mercatorYToLatitude(-1.0)).to(beCloseTo(-85.05112, within: 1e-5))
            }
        }
        
        describe(".mercatorXToLongitude") {
            it("メルカトルX座標を経度に変換する") {
                expect(Projector.mercatorXToLongitude(+1.5)).to(beCloseTo( -90.0, within: 1.0e-15))
                expect(Projector.mercatorXToLongitude(+1.0)).to(beCloseTo(+180.0, within: 1.0e-15))
                expect(Projector.mercatorXToLongitude(+0.5)).to(beCloseTo( +90.0, within: 1.0e-15))
                expect(Projector.mercatorXToLongitude( 0.0)).to(beCloseTo(   0.0, within: 1.0e-15))
                expect(Projector.mercatorXToLongitude(-0.5)).to(beCloseTo( -90.0, within: 1.0e-15))
                expect(Projector.mercatorXToLongitude(-1.0)).to(beCloseTo(-180.0, within: 1.0e-15))
                expect(Projector.mercatorXToLongitude(-1.5)).to(beCloseTo( +90.0, within: 1.0e-15))
            }
        }
    }
}
