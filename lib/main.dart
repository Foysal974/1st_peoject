

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){


}
class MyApp extends StatelessWidget {

  bool isDark=false;

  @override
  Widget build(BuildContext context) {
  return MaterialApp(

    title: 'My First App',
    home: HomeScerean(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: isDark==false?Brightness.dark:Brightness.light,
      // primarySwatch: Colors.lightBlue,

    ),
  );
  }
}

class HomeScerean extends StatelessWidget {

  List<String> userList=['Home','Category','Favorite','Shopping','Cart'];

  // userList[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      drawer: Drawer(
        child: ListView(
          children: [ const UserAccountsDrawerHeader(
              accountName: Text('Foysal'),
              accountEmail: Text('muhammadfoysal2448@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: Icon(Icons.person_outlined),
          ),
          ),
            ListTile(
              onTap: (){
                Navigator.pop(context);

              },
              title: Text(userList[0]),
              leading: const CircleAvatar(
                child: Icon(Icons.home),
              ),
              trailing: const Text('10'),
              subtitle: const Text('Tap to go home'),
            ),
            const Divider(height: 1,),
            ListTile(
              onTap: (){

              },
              title: Text(userList[1]),
              leading: const CircleAvatar(
                child: Icon(Icons.category_outlined),
              ),
              trailing: const Text('10'),
            ),
            const Divider(height: 1,),
            ListTile(
              onTap: (){

              },
              title: Text(userList[2]),
              leading: const CircleAvatar(
                child: Icon(Icons.favorite_border_outlined),
              ),
              trailing: const Text('10'),
            ),
            const Divider(height: 1,),
            ListTile(
              onTap: (){

              },
              title: Text(userList[3]),
              leading: const CircleAvatar(
                child: Icon(Icons.shopping_bag),
              ),
              trailing: const Text('10'),
            ),
            const Divider(height: 1,),
            ListTile(
              onTap: (){

              },
              title: Text(userList[4]),
              leading: const CircleAvatar(
                child: Icon(Icons.shopping_cart_outlined),
              ),
              trailing: const Text('10'),
            ),
            const Divider(height: 1,),


          ],
        ),
      ),
      appBar: AppBar(
        elevation: 10.0,
         actions: [
           IconButton(onPressed: (){
           print('IconButton Clicked');
            Fluttertoast.showToast(msg: 'Searching...');
         },

             icon:const Icon(Icons.search_outlined),
         ),
           IconButton(
               onPressed:(){
                 print('IconButton Clicked');
               },
               icon:const Icon(Icons.shopping_cart_outlined),),
           IconButton(
               onPressed:(){
                 print('IconButton Clicked');
               },
               icon:const Icon(Icons.person_outlined),),
           IconButton(
               onPressed:(){
                 print('IconButton Clicked');
               },
               icon:const Icon(Icons.shop),),
         ],


        title: const Text('Home Screen'),),
      body: Container(
        color: Colors.black ,),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
          onPressed: (){
            print('Clicked');
        },
        child: const Icon(Icons.shopping_cart_outlined),
      ),

     );
   }
}