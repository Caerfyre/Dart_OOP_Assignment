import '../Classes/Card.dart';

class DeckService {
  List<Card> deck;

  DeckService(this.deck);

  void CreateDeck(){
    const suits = ['Spades','Hearts', 'Diamonds', 'Clubs'];
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
}

void main(List<String> args) {
  List<Card> sample = <Card>[];
  DeckService deck = DeckService(sample);
  deck.CreateDeck();
  deck.printCards();
}