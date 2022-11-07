import UIKit

extension UColor {
    
    public static func getRGBA(color: UIColor) -> (CGFloat, CGFloat, CGFloat, CGFloat) {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return (red, green, blue, alpha)
    }
    
    public static func getGradientColor(fromColor: UIColor, toColor: UIColor, progress: CGFloat) -> UIColor {
        let (red1, green1, blue1, alpha1) = getRGBA(color: fromColor)
        let (red2, green2, blue2, alpha2) = getRGBA(color: toColor)
        
        let red3: CGFloat = (red2 - red1) * progress + red1
        let green3: CGFloat = (green2 - green1) * progress + green1
        let blue3: CGFloat = (blue2 - blue1) * progress + blue1
        let alpha3: CGFloat = (alpha2 - alpha1) * progress + alpha1
        return UIColor(red: red3, green: green3, blue: blue3, alpha: alpha3)
    }
    
}
