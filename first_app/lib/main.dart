import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      bottomNavigationBar: BottomNavigationBar(items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home",),
        ] ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 70,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.facebook),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: ElevatedButton(onPressed: () {}, child: Text("theme"),),
                onTap: () {},
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl:
                    "https://i.pinimg.com/736x/ed/bc/74/edbc74d00fdfab468779d47c79a2cef8.jpg",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
