import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_ecommerce/utils/formatters/formatter.dart';

class UserModel {
  // Keep those values final which you do not want to update
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  // Constructor for USeModel
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  // Helper Function to get the full name.
  String get fullName => '$firstName $lastName';

  // Hellper Function to format phone number
  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

  // Static functipon to split full namr into first and last name
  static List<String> nameparts(fullName) => fullName.split(" ");

  static String generateUsername(fullName){
    List<String> nameparts = fullName.split(" ");
    String firstName = nameparts[0].toLowerCase();
    String lastName = nameparts.length > 1 ? nameparts[1].toLowerCase() : "";

    String cancelCaseUsername = '$firstName$lastName'; // Combine fisrt and last name
    String usernameWithPrefix = 'cwt_$cancelCaseUsername'; //Add "cwt_" prefix
    return usernameWithPrefix;
  }

  // Static function to create an empty user model
  static UserModel empty() => UserModel(id: '', firstName: '', lastName: '', username: '', email: '', phoneNumber: '', profilePicture: '');   
  // Convert model to JSON structure for storing data in firebase
  Map<String, dynamic> toJson(){
  return {
    'firstName': firstName,
    'lastName': lastName,
    'username': username,
    'email': email,
    'phoneNumber': phoneNumber,
    'profilePicture': profilePicture,
  };
}


  // Factory method to create a UserModel from a Firebase document snapshot
  factory UserModel.fromSnapShot(DocumentSnapshot<Map<String, dynamic>> document){
    if(document.data() != null){
      final data = document.data()!;
      return UserModel(
      id: document.id, 
      firstName: data['firstName'] ?? '', 
      lastName: data['lastName'] ?? '', 
      username: data['username'] ?? '', 
      email: data['email'] ?? '', 
      phoneNumber: data['phoneNumber'] ?? '', 
      profilePicture: data['profilePicture'] ?? ''
    );
    }
    throw Exception('Document data is null');
  }
}
