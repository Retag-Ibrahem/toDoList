import 'package:flutter/foundation.dart';
import 'package:todolist/Models/ToDoModel.dart';
import 'package:todolist/Services/TodoServices.dart';

class Todoprovider extends ChangeNotifier {
  Todomodel?todomodel;
  GetToDoProvider()async{
    todomodel=await Todoservices.GetToDo();
    notifyListeners();
  }
}