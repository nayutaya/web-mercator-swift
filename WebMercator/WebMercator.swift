
public class WebMercator {
    public static let LATITUDE_MAXIMUM_IN_DEGREES = Projector.mercatorYToLatitude(+1.0)
    public static let LATITUDE_MINIMUM_IN_DEGREES = Projector.mercatorYToLatitude(-1.0)
    public static let LATITUDE_DELTA_IN_DEGREES = LATITUDE_MAXIMUM_IN_DEGREES - LATITUDE_MINIMUM_IN_DEGREES
    public static let LONGITUDE_MAXIMUM_IN_DEGREES = Projector.mercatorXToLongitude(+1.0)
    public static let LONGITUDE_MINIMUM_IN_DEGREES = Projector.mercatorXToLongitude(-1.0)
    public static let LONGITUDE_DELTA_IN_DEGREES = LONGITUDE_MAXIMUM_IN_DEGREES - LONGITUDE_MINIMUM_IN_DEGREES
}
