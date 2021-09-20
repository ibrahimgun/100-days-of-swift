import UIKit

let name = "İbrahim"



extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex,offsetBy: i)])
    }
}

let letter2 = name[3]
