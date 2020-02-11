import 'package:flutter/material.dart';
import 'package:mareeya/screeen/thirstPage.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final String titleString =" Welcom to SecondPage ";
  var enterX = new TextEditingController();
  var enterY = new TextEditingController();
  


   Widget showText() {
    return Text(
      'Calculator',
      style: TextStyle(
          fontSize: 28.0, 
          fontWeight: FontWeight.bold, 
          color: Colors.limeAccent[400]),
    );
  }

  Widget calX(){
    return Container(
      width: 300.0,
      child: TextFormField(
        controller: enterX,
        decoration: InputDecoration(
          icon: Icon(Icons.apps,
          size: 35.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Enter Value X',
        ),
        inputFormatters: [WhitelistingTextInputFormatter(RegExp("[0-9]"))],
        maxLines: null,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget calY(){
    return Container(
      width: 300.0,
      child: TextFormField(
        controller: enterY,
        decoration: InputDecoration(
          icon: Icon(Icons.apps,
          size: 35.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Enter Value Y',
        ),
        inputFormatters: [WhitelistingTextInputFormatter(RegExp("[0-9]"))],
        maxLines: null,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget buttoncal(){
    return Container(
      width: 300.0,
      child: RaisedButton.icon(
        color: Colors.limeAccent[400],
        icon: Icon(Icons.assistant ,
        size: 30.0,
      ),
      label: Text('Calculater'),
      onPressed: (){
        var route = MaterialPageRoute(
            builder: (BuildContext context) => ThirstPage(
              valueFromSecondPage: enterX.text,
              valueFromSecondPage1: enterY.text,
            )
          );
          Navigator.of(context).push(route);
      },
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/ya.jpg'))),
          child: Center(child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showText(),
              calX(),
              calY(),
              buttoncal(),
            ],
          ),),
      ),
      
    );
  }
}