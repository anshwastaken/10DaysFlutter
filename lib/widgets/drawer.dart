import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://cdn.pixabay.com/photo/2023/02/08/02/40/iron-man-7775599_960_720.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Ansh Malik"),
                accountEmail: Text("anshm953@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
              padding: EdgeInsets.zero,
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            )
          ],
        ),
      ),
    );
  }
}
