void main() {
 var data = Deck();
 // data.shuffle();
 // data.cardsWithSuits('Spades');
 print(data);
 print(data.deal(5));
 print(data);
}

class Deck {
  List<Card>? cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four'];
    var suits = ['Diamond', 'Spades', 'Hearts', 'Clubs'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank, suit);
        cards!.add(card);
      }
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return cards.toString();
  }

  shuffle() {
    cards!.shuffle();
  }

  cardsWithSuits(String suit) => cards!.where((card) => card.suit == suit
    );

  deal(int handSize) {
    var hand = cards!.sublist(0, handSize);
    cards!.sublist(handSize);

    return hand;
  }

}

class Card{
  String? rank;
  String? suit;

  Card(
      this.rank,
      this.suit,
      );

  @override
  String toString() {
    // TODO: implement toString
    return rank.toString() + ' of ' + suit.toString();
  }
}