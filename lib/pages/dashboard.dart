import 'package:flutter/material.dart';
import '../model/module.dart';
import '../services/module.dart';
import '../widgets/module.dart';
class Dashboard extends StatefulWidget{

  @override
  DashboardState createState()=> DashboardState();
}

class DashboardState extends State<Dashboard>{

  UserRepository userRepository=new UserRepository();
  late Future<List<Users>> future_users;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future_users=this.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: FutureBuilder<List<Users>>(
        future: this.future_users,
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done && snapshot.data!=null){
            List<Users> users=snapshot.data?? [];
            return ListView.builder(
                itemCount: users.length,
                itemBuilder:(context,index){
             return UserTile(title: users.elementAt(index).username,
             id: users.elementAt(index).id,);
            });
          }

          else if(snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          else if(snapshot.hasError){
            return Center(
              child: Text("Error: " + snapshot.error.toString()),
            );
          }

          else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }

        },
      ),
    );
  }

  Future<List<Users>> getUsers() async{
    List<Users> users= await userRepository.getUsers();
    return users.sublist(0,5);
  }
}