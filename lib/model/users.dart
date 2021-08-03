import 'module.dart';

class Users{
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;
  
  Users({required this.id,required this.name,required this.username,required this.email,
       required this.address,required this.phone,required this.website,required this.company});
  
  Map<String,dynamic> toJson()=>{
    'name':this.name,
    'username':this.username,
    'email':this.email,
    'address': this.address.toJson(),
    'phone':this.phone,
    'website':this.website,
    'company':this.company.toJson()
  };
  
  factory Users.fromJson(Map<String,dynamic> parsedJson){
    return Users(
      id: parsedJson['id'],
      name: parsedJson['name'],
      username:parsedJson['username'],
      email:parsedJson['email'],
      address: Address.fromJson(parsedJson['address']),
      phone: parsedJson['phone'],
      website: parsedJson['website'],
      company: Company.fromJson(parsedJson['company'])
    );
  }

  
}