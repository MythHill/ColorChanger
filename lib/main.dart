import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

Map<String, Color> colors = {
  'Purple': Colors.purple,
  'Blue': Colors.blue,
  'Green': Colors.green,
  'yellow': Colors.yellow,
  'Orange': Colors.orange,
  'Red': Colors.red
};

Color? selectedColor;

void setColor(String colorname, Color color){
  setState((){
    selectedColor = color;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        backgroundColor: selectedColor,
        title: Text("Color Changer"),),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var entry in colors.entries)
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(600, 60),
                  primary: entry.value),
                  child: Text(''), onPressed: (){
                  setColor(entry.key , entry.value);
                },),
              )
            ],
          ),
        ),
    );
  }
}