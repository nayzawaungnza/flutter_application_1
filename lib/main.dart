import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  List<Contact> _list = List.generate(100, (index) {
    return Contact(
        name: 'Name $index', email: 'Email $index', phone: 'Phone $index');
  });

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
      body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: ListTile(
                title: Text(_list[index].name!),
                subtitle: Text(_list[index].email!),
                trailing: Text(_list[index].phone!),
                leading: Icon(Icons.person),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {
            print('Hello World');
          }),
    );
  }
}

class Contact {
  final String? name;
  final String? phone;
  final String? email;
  Contact({this.name, this.phone, this.email});
}
