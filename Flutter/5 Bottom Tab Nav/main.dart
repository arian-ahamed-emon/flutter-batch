import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp()); // Application
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green) ,
        darkTheme: ThemeData(primarySwatch:Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home:const HomeActivity()
    );

  }
}


class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  MySnackBar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){MySnackBar("I am comments",context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("I am search",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I am settings",context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("I am email",context);}, icon: Icon(Icons.email))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add) ,
        backgroundColor: Colors.green,
        onPressed: (){
          MySnackBar("I am floating action button",context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar("I am home bottom menu",context);
          }
          if(index==1){
            MySnackBar("I am contact bottom menu",context);
          }
          if(index==2){
            MySnackBar("I am profile bottom menu",context);
          }
        },


      ),

    );

  }



}