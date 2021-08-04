import 'package:flutter/material.dart';

class UserTile extends StatelessWidget{
  UserTile({required this.title,required this.id});
  String title;
  int id;
  @override
   Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1/6,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(1.0,1.0),
              spreadRadius: 1.0,
              blurRadius: 1.0,
              color: Colors.black12
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
              child: Text(title,style: TextStyle(color: Colors.black,fontSize: 15,
                fontWeight: FontWeight.w600,),),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
              child: Text(id.toString(),style: TextStyle(color: Colors.black54,fontSize: 12,
                fontWeight: FontWeight.w500,),),
            ),
          ],
        ),
        // title: Text(title),
        // subtitle: Text(id.toString()),
      ),
    );
  }
}