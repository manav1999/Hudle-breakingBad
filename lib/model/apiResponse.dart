import 'dart:convert';

import 'character.dart';

class ApiResponse {

  List<Character> c;

  factory ApiResponse.fromJson(String s) {
    final r = jsonDecode(s);
    List<Character> temp=[];
    for(var x in r){
      temp.add(Character.fromJson(x));
    }

    return ApiResponse(temp);


  }

  ApiResponse(this.c);


}