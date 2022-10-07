import '../Classes/Contact.dart';

class PhoneBook{
  List<Contact> phoneBook;

  PhoneBook(this.phoneBook);
  
  void displayContacts(){
    for (var contact in phoneBook){
      print("--------------------------");
      print("Contact Name: ${contact.firstName} ${contact.lastName}");
      print("Phone Number: ${contact.phoneNumber}");
      print("Address: ${contact.address}");
      if(contact == phoneBook.last){
        print("--------------------------");
      }
    }
  }

  void addContact(String fName, String lName, String number, String address){
    phoneBook.add(Contact(fName, lName, number, address));
  }

  void deleteContact(String number){
    phoneBook.removeWhere((contact) => contact.phoneNumber.contains(number));
  }

  void searchDisplay(String fName, String lName){
    Contact searchItem = phoneBook.firstWhere((contact) => contact.firstName.contains(fName) && contact.lastName.contains(lName), 
                     orElse:() => Contact("0", "0", "0", "0"));
    if(searchItem.firstName == "0" && searchItem.lastName == "0"){
      print("Contact Not Found!!!");
    }else{
      print("--------------------------");
      print("Contact Name: ${searchItem.firstName} ${searchItem.lastName}");
      print("Phone Number: ${searchItem.phoneNumber}");
      print("Address: ${searchItem.address}");
      print("--------------------------");
    }
  }
}