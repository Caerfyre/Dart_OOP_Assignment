import 'Classes/Card.dart';
import 'Services/DeckService.dart';

void main(List<String> args) {
  List<Card> sampleDeck = <Card>[];
  DeckService deck = DeckService(sampleDeck);
  //New Deck
  print("\n----------------------------");
  print("New Deck:");
  print("----------------------------\n");
  deck.createDeck();
  deck.printCards();

  //Shuffled Deck
  print("\n----------------------------");
  print("Shuffled Deck:");
  print("----------------------------\n");
  deck.shuffle();
  deck.printCards();

  //New Deck with Suits
  List<Card> cardSuit = deck.cardWithSuit('Diamonds');
  DeckService newDeck = DeckService(cardSuit);

  print("\n----------------------------");
  print("Cards with Suit:");
  print("----------------------------\n");
  newDeck.printCards();
}