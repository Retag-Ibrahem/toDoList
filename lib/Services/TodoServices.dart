import 'package:dio/dio.dart';
import 'package:todolist/Models/ToDoModel.dart';


class Todoservices {
 static Dio dio=Dio();
 static Future GetToDo()async{
  try{
  Response response=await dio.get("https://mytodoapi.runasp.net/api/TodoItems/");
  return Todomodel.fromjson(response.data);

 }
 catch(errorsms){
  throw Exception(errorsms);
 }

 }
}

class TodoServicesPost{
  static Dio dio=Dio();
 static Future postToDo(String title,String description)async{
  try{
  Response response=await dio.post("https://mytodoapi.runasp.net/api/TodoItems/",
  data: {
    "title":title,
    "description":description
  }
  );
  return Todomodel.fromjson(response.data);

 }on DioException catch(diosms){
  throw Exception(diosms);
 }
 catch(errorsms){
  throw Exception(errorsms);
 }

 }

}