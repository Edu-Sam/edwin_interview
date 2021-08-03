import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import '../model/module.dart';
import 'package:http/http.dart' as http;


class UserRepository{
   final String url='https://jsonplaceholder.typicode.com/users';
  UserRepository(){}

Future<List<Users>> getUsers() async{
    http.Response response=await http.post(Uri.parse(url),
    headers: {'header':'Accept'});

    var data=jsonDecode(response.body);
    var users=data as List;
    List<Users> list_users=users.map((e) => Users.fromJson(e)).toList();

    return list_users;
}
}