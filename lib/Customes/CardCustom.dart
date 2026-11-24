import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cardcustom extends StatelessWidget {
 final String Titlee;
  final IconData EditIcon;
 final IconData DeleteIcon;
  const Cardcustom({super.key,required this.Titlee,required this.EditIcon,required this.DeleteIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: 
      ListTile(
     title: Text(Titlee),
     trailing: Container(
      height: 50,
      width: 100,
      child: Row(children: [ Icon(EditIcon),SizedBox(width: 4,),Icon(DeleteIcon)])) ,
     

     
      )


    );
  }
}