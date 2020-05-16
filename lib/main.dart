import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double angka1 = 0.0, angka2 = 0.0, hasil = 0.0;

  TextEditingController angka1Controller = TextEditingController();
  TextEditingController angka2Controller = TextEditingController();

  void tambah (){
    setState(() {
      angka1 = double.parse(angka1Controller.text);
      angka2 = double.parse(angka2Controller.text);
      hasil = angka1+angka2;
    });
  }

  void kurang (){
    setState(() {
      angka1 = double.parse(angka1Controller.text);
      angka2 = double.parse(angka2Controller.text);
      hasil = angka1-angka2;
    });
  }

  void kali (){
    setState(() {
      angka1 = double.parse(angka1Controller.text);
      angka2 = double.parse(angka2Controller.text);
      hasil = angka1*angka2;
    });
  }

  void bagi (){
    setState(() {
      angka1 = double.parse(angka1Controller.text);
      angka2 = double.parse(angka2Controller.text);
      hasil = angka1/angka2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFormField(

              decoration: InputDecoration(
                  hintText: "masukkan angka"
              ),
              controller: angka1Controller,
            ),
            TextFormField(

              decoration: InputDecoration(
                  hintText: "masukkan angka"
              ),
              controller: angka2Controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                    color: Colors.greenAccent,
                    child: Text("+"),
                    onPressed: tambah),
                Padding(padding: EdgeInsets.only(left: 10)),
                MaterialButton(
                    color: Colors.greenAccent,
                    child: Text("-"),
                    onPressed: kurang),
                Padding(padding: EdgeInsets.only(left: 10)),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                    color: Colors.greenAccent,
                    child: Text("x"),
                    onPressed: kali),
                Padding(padding: EdgeInsets.only(left: 10)),
                MaterialButton(
                    color: Colors.greenAccent,
                    child: Text(":"),
                    onPressed: bagi),
                Padding(padding: EdgeInsets.only(left: 10))

              ],
            ),
            Text("hasil = $hasil", style: TextStyle(
              fontSize: 50.0,
            ),)

          ],
        ),
      ),
    );
  }
}
