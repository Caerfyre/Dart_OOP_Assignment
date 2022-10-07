import 'Classes/Contact.dart';
import 'Services/PhoneBook.dart';

void main(List<String> args) {
  List<Contact> contacts = <Contact>[];
  contacts.add(Contact("Calliope", "Mori", "11111111111", "Address1"));
  contacts.add(Contact("Kiara", "Takanashi", "22222222222", "Address2"));
  contacts.add(Contact("Gura", "Gawr", "33333333333", "Address3"));
  contacts.add(Contact("Amelia", "Waston", "44444444444", "Address4"));
  contacts.add(Contact("Ina'nis", "Ninomae", "55555555555", "Address5"));

  PhoneBook myPhoneBook = PhoneBook(contacts);
  print("\nCURRENT CONTACTS\n");
  myPhoneBook.displayContacts();

  //Add Contact
  print("\nCONTACT ADDED\n");
  myPhoneBook.addContact("Korone", "Inugami", "66666666666", "Address6");
  myPhoneBook.displayContacts();

  //Delete Contact
  print("\nCONTACT DELETED\n");
  myPhoneBook.deleteContact("11111111111");
  myPhoneBook.displayContacts();

  //Search and Display Search Contact
  print("\nSEARCHED CONTACT\n");
  myPhoneBook.searchDisplay("Korone", "Inugami");
}
