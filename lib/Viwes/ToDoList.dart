import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/Customes/CardCustom.dart';
import 'package:todolist/Models/ToDoModel.dart';
import 'package:todolist/Providers/ToDoProvider.dart';

class Todolist extends StatelessWidget {
  const Todolist({super.key});

  @override
  Widget build(BuildContext context) {
    var objprov=Provider.of<Todoprovider>(context,listen: false);
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column (children: [
        SizedBox(height: 40,),
        
        Row(children:[ Icon(Icons.menu),  Text("ToDayDo",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),]
),
      
        SizedBox(height: 20,),
        Consumer<Todoprovider>(
          builder: (context,value,child){
            if(value.todomodel==null){
              value.GetToDoProvider();
            return  CircularProgressIndicator();
              
            }
            else{
            return
            Container(
            height: 600,
            width: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color:Colors.white,
            ),
            
           child: ListView.builder(itemCount: value.todomodel!.todoList.length,itemBuilder: (context,index)=>
       
            Cardcustom(Titlee: value.todomodel!.todoList[index]["title"]??"no title", EditIcon: Icons.edit, DeleteIcon: Icons.delete)
            )
            );
   }
    },
    )
    ]
          ,),
              
              );
              
            
          
            
            

          }
          }
         
      
   
    
    
   
  

