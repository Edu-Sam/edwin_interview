import 'module.dart';
import 'package:flutter/material.dart';
class Address{
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Address({required this.street,required this.suite,required this.city,required this.zipcode,required this.geo});

  Map<String,dynamic> toJson()=>{
    'street':this.street,
    'suite':this.suite,
    'city':this.city,
    'zipcode':this.zipcode,
    'geo': geo.toJson()
  };

  factory Address.fromJson(Map<String,dynamic> parsedJson){
    return Address(
      street: parsedJson['street'],
      suite: parsedJson['suite'],
      city: parsedJson['city'],
      zipcode: parsedJson['zipcode'],
      geo: Geo.fromJson(parsedJson['geo'])
    );
  }


}