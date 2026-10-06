import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
   // return Scaffold(body:Text("Hello Flutter"));
   // return const Placeholder();
   return Scaffold(appBar: AppBar(title:Text("HomePage"),
   backgroundColor: Colors.green,
   foregroundColor: Colors.white10,
  //  leading: Icon(Icons.home),
   actions:[
    IconButton(onPressed: (){}, icon: Icon(Icons.person)),
    IconButton(onPressed: (){}, icon: Icon(Icons.person)),

   ],
   ),
   drawer: Drawer(
    child: Column(
      children:[
        UserAccountsDrawerHeader(decoration: BoxDecoration(color:Colors.blueGrey),
        accountName: Text("Name"),
        accountEmail: Text("Email"),
        ),
        ListTile(
          trailing: Icon(Icons.home),
          title: Text("HomePage"),
          hoverColor: Colors.limeAccent,
          splashColor: Colors.greenAccent,
          onTap:() {},
        ),
        Divider(color:Colors.blue),
        ListTile(
          trailing: Icon(Icons.settings),
          title: Text("Setting"),
          hoverColor: Colors.limeAccent,
          splashColor: const Color.fromARGB(255, 111, 143, 127),
          onTap:() {},
        ),
        Spacer(),
        ListTile(
          trailing: Icon(Icons.logout),
          title: Text("Logout"),
          hoverColor: Colors.limeAccent,
          splashColor: const Color.fromARGB(255, 111, 143, 127),
          onTap:() {},
        ),
      ]
    ),
   ),
      body: Text("Hello Flutter",
      style: GoogleFonts.lobster(
        textStyle: TextStyle(
          fontSize: 30,
          color: const Color.fromARGB(255, 39, 93, 185),
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.blueGrey,
        tooltip:"Add something",
        shape:CircleBorder(),
        child:Icon(Icons.add),
        ),
   );
  }
}