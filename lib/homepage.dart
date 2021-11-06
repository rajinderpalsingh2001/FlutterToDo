import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  void showalertdialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Add a Task"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    cursorColor: Colors.purple,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: RaisedButton(
                            onPressed: () {},
                            child: Text("Add"),
                            color: Colors.purple),
                      ),
                    ],
                  )
                ],
              ),
            ));
  }

  Widget mycard(String task) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Container(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text("$task"),
            onLongPress: () => print("Called"),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showalertdialog,
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mycard("my Text"),
            mycard("Going to work"),
            mycard("Going to work"),
          ],
        ),
      ),
    );
  }
}
