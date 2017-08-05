
import Foundation

class House: Player {
    init() {
        super.init(name: "House")
    }

    override func willHit(_ bet: UInt) -> Bool {
        return handValue < 17
    }
}
