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
      body: Container(
        color: Colors.redAccent,
        height: 500,
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          textDirection: TextDirection.ltr,
          alignment: WrapAlignment.spaceAround,
          runAlignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Hello World')),
            ElevatedButton(onPressed: () {}, child: Text('Hello World')),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Hello World'),
              icon: Icon(Icons.home),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Hello World')),
            ElevatedButton(onPressed: () {}, child: Text('Hello World')),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Hello World'),
              icon: Icon(Icons.home),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Hello World')),
            ElevatedButton(onPressed: () {}, child: Text('Hello World')),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Hello World'),
              icon: Icon(Icons.home),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {
            print('Hello World');
          }),
    );
  }
}
