import 'package:flutter/foundation.dart';

class Todomodel {
  bool status;
  String message;
  List <dynamic>todoList;

  Todomodel({required this.status,required this.message,required this.todoList});

  factory Todomodel.fromjson(Map<String ,dynamic>json){

   return Todomodel(status: json["status"], message: json["message"],todoList:json["todoList"] );


  }


}