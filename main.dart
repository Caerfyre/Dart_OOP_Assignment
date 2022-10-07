import 'Classes/Card.dart';
import 'Services/DeckService.dart';

void main(List<String> args) {
  List<Card> sampleDeck = <Card>[];
  DeckService deck = DeckService(sampleDeck);
  //New Deck
  print("----------------------------");
  print("New Deck:");
  print("----------------------------");
  deck.createDeck();
  deck.printCards();

  //Shuffled Deck
  print("----------------------------");
  print("Shuffled Deck:");
  print("----------------------------");
  deck.shuffle();
  deck.printCards();

  //New Deck with Suits
  List<Card> cardSuit = deck.cardWithSuit('Hearts');
  DeckService newDeck = DeckService(cardSuit);

  print("----------------------------");
  print("Cards with Suit:");
  print("----------------------------");
  newDeck.printCards();
}