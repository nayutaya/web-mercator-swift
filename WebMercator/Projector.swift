
import Foundation

class Projector {
    // 度をラジアンに変換するための係数
    static let DEGREE_TO_RADIAN = M_PI / 180.0
    // ラジアンを度に変換するための係数
//    static let RADIAN_TO_DEGREE = 180.0 / M_PI
    
    // 緯度をメルカトルY座標に変換する
    class func latitudeToMercatorY(latitudeInDegrees: Double) -> Double {
        return atanh(sin(latitudeInDegrees * DEGREE_TO_RADIAN)) / M_PI
    }
}

/*
module.exports = class Projector
  PI   = Math.PI
  exp  = Math.exp
  log  = Math.log
  sin  = Math.sin
  asin = Math.asin

  # 双曲線正弦を求める
  sinh = (x)-> (exp(x) - exp(-x)) / 2.0
  # 双曲線余弦を求める
  cosh = (x)-> (exp(x) + exp(-x)) / 2.0
  # 双曲線正接を求める
  tanh = (x)-> sinh(x) / cosh(x)
  # 双曲線逆正接を求める
  atanh = (x)-> log((1 + x) / (1 - x)) / 2

  # 経度をメルカトルX座標に変換する
  @longitudeToMercatorX: (longitudeInDegrees)->
    return longitudeInDegrees / 180.0

  # メルカトルY座標を緯度に変換する
  @mercatorYToLatitude: (mercatorY)->
    return asin(tanh(mercatorY * PI)) * RADIAN_TO_DEGREE

  # メルカトルX座標を経度に変換する
  @mercatorXToLongitude: (mercatorX)->
    x = mercatorX
    x += 2.0 while ( x < -1.0 )
    x -= 2.0 while ( x > +1.0 )
    return x * 180.0
*/