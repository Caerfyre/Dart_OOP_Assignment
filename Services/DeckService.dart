import '../Classes/Card.dart';

class DeckService {
  List<Card> deck;

  DeckService(this.deck);

  void createDeck(){
    const suits = ['Diamonds','Hearts','Clubs','Spades'];
    const cardTypes = ["Ace","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Jack","Queen","King",];
  
    for(var suit in suits){
      for(var type in cardTypes){
        var deckCard = Card(type, suit);
        this.deck.add(deckCard);
      }
    }
  }

  void printCards(){
    print("[");
    for(var card in deck){
      if(card != deck.last){
        print("${card.type} of ${card.suit},");
      }else{
        print("${card.type} of ${card.suit}]");
      }
      
    }
  }

  void shuffle(){
    deck.shuffle();
  }

  List<Card> cardWithSuit(String suit){
    var suitList = deck.where((item) => item.suit.contains(suit));
    return suitList.toList();
  }
}
