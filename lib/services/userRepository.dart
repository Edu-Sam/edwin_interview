import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import '../model/module.dart';
import 'package:http/http.dart' as http;


class UserRepository{
   final String url='https://jsonplaceholder.typicode.com/users';
  UserRepository(){}

Future<List<Users>> getUsers() async{
    try{
      http.Response response=await http.get(Uri.parse(url),
          headers: {'header':'Accept'});


      var data=jsonDecode(response.body);
      print(data);
      var users=data as List;
      List<Users> list_users=users.map((e) => Users.fromJson(e)).toList();
      return list_users;
    }
    catch(e,stacktrace){
    print(stacktrace);
    return [];
}
}}