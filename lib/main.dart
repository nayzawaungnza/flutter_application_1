import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'DEVELOPER NAY',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'SansQH',
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.redAccent,
          elevation: 10,
          leading: Icon(Icons.home),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Settings'),
                      duration: Duration(seconds: 5),
                      backgroundColor: Colors.redAccent,
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                        textColor: Colors.greenAccent,
                        disabledTextColor: Colors.redAccent,
                        disabledBackgroundColor: Colors.blueAccent,
                        backgroundColor: Colors.amberAccent,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu))
          ],
          shadowColor: Colors.greenAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)))),
      body: Column(
        children: [
          Image(image: AssetImage('images/1.jpg')),
          // Image(
          //   image: FileImage(file),
          // ),
          // Image(
          //   image: MemoryImage(bytes),
          // ),
          Image(
            image: NetworkImage(
                'https://i0.wp.com/tokyotreatblog.wpcomstaging.com/wp-content/uploads/2023/10/mt-fuji-thumbnail.png?w=1024&ssl=1'),
            loadingBuilder: (_, widget, loadingProgress) {
              if (loadingProgress == null) return widget;
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {
            print('Hello World');
          }),
    );
  }
}
