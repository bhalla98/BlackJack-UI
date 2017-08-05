
import UIKit

class ViewController: UIViewController {
    
    
    func playGame() -> Player {
        let dealer = Dealer()
        dealer.deal()
        var turn = "player"
        if let _ = dealer.winner {
            dealer.award()
        }
        
        while dealer.winner == nil {
            let player = turn == "player" ? dealer.house : dealer.player
            dealer.turn(player)
            turn = turn == "player" ? "house" : "player"
        }
        
        dealer.award()
        return dealer.winner!
        
    }
}


