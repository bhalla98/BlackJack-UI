
import Foundation

class Deck {
    var cards: [Card]
    var nextCard: Int

    init() {
        nextCard = 0
        cards = []
        for suit in ["♠️", "♣️", "♥️", "♦️"] {
            for rank in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] {
                let card = Card(suit: suit, rank: rank)
                cards.append(card)
            }
        }
        shuffle()
    }

    func drawCard() -> Card? {
        guard nextCard < cards.count else { return nil }
        let card = cards[nextCard]
        nextCard += 1
        return card
    }

    func shuffle() {
        nextCard = 0
        cards.shuffleInPlace()
    }
}
