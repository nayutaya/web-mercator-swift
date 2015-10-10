
public class Projector {
    public static let LATITUDE_MAXIMUM_IN_DEGREES = Projector.mercatorYToLatitude(+1.0)
    public static let LATITUDE_MINIMUM_IN_DEGREES = Projector.mercatorYToLatitude(-1.0)
    public static let LATITUDE_DELTA_IN_DEGREES = LATITUDE_MAXIMUM_IN_DEGREES - LATITUDE_MINIMUM_IN_DEGREES
    public static let LONGITUDE_MAXIMUM_IN_DEGREES = Projector.mercatorXToLongitude(+1.0)
    public static let LONGITUDE_MINIMUM_IN_DEGREES = Projector.mercatorXToLongitude(-1.0)
    public static let LONGITUDE_DELTA_IN_DEGREES = LONGITUDE_MAXIMUM_IN_DEGREES - LONGITUDE_MINIMUM_IN_DEGREES

    // 度をラジアンに変換するための係数
    private static let DEGREE_TO_RADIAN = M_PI / 180.0
    // ラジアンを度に変換するための係数
    private static let RADIAN_TO_DEGREE = 180.0 / M_PI
    
    // 緯度をメルカトルY座標に変換する
    public class func latitudeToMercatorY(latitudeInDegrees: Double) -> Double {
        return atanh(sin(latitudeInDegrees * DEGREE_TO_RADIAN)) / M_PI
    }
    
    // 経度をメルカトルX座標に変換する
    public class func longitudeToMercatorX(longitudeInDegrees: Double) -> Double {
        return longitudeInDegrees / 180.0
    }
    
    // メルカトルY座標を緯度に変換する
    public class func mercatorYToLatitude(mercatorY: Double) -> Double {
        return asin(tanh(mercatorY * M_PI)) * RADIAN_TO_DEGREE
    }
    
    // メルカトルX座標を経度に変換する
    public class func mercatorXToLongitude(mercatorX: Double) -> Double {
        var x = mercatorX
        while ( x < -1.0 ) { x += 2.0 }
        while ( x > +1.0 ) { x -= 2.0 }
        return x * 180.0
    }
}
