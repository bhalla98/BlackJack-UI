
import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffleInPlace() {
        // Borrowed from: <https://codedump.io/share/OCJt0TU9IfzE/1/how-do-i-shuffle-an-array-in-swift>
        guard count > 1 else { return }
        
    
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            if i != j {
                swap(&self[i], &self[j])
            }
        }
    }
}



