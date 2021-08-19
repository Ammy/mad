import UIKit
class Year64{
    var BirthYear: Int = 0
    func YearOf64() -> Int{
        return BirthYear + 64
    }
}
let New = Year64()
New.BirthYear = 1999
print(New.YearOf64())

