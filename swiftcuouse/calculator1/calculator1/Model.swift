import Foundation
import SwiftUI

struct KeyboardButton {
    
    let title: String
    let textColor: Color
    let backbgoundColor: Color
    let isDoubleWidth: Bool
    let type: ButtonType
}


enum ButtonType {
    case number(Int)
    case operation(OperationType)
    case result
    case reset
}


enum OperationType {
    case sum
    case multiplication
}
