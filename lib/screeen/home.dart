
import 'package:flutter/material.dart';
import 'package:mareeya/screeen/rigisPage.dart';
import 'package:mareeya/screeen/secondPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  final String titleString ="Home";
  var textEditController = new TextEditingController();
  var textEditController1 = new TextEditingController();

  Widget showlogo(){
    return Image.asset('images/cake.png',width: 110,);
  }


  Widget showText() {
    return Text(
      'WELCOM TO MY PAGE',
      style: TextStyle(
          fontSize: 25.0, 
          fontWeight: FontWeight.bold, 
          color: Colors.limeAccent[400]),
    );
  }
  Widget emailText(){
    return Container(
      width: 300.0,
      child: TextFormField(
        controller: textEditController,
        decoration: InputDecoration(
          icon: Icon(Icons.email,
          size: 30.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Username',
          hintText: 'your@email.com'
        ),
      ),
    );
  }
  
  Widget passText(){
    return Container(
      width: 300.0,
      child: TextFormField(
        obscureText: true,
        controller: textEditController1,
        decoration: InputDecoration(
          icon: Icon(Icons.vpn_key,
          size : 30.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Password',
          hintText: 'more 8 charactor'
        
        ),
      ),
    );
  }
  Widget buttonlogin(){
    return Container(
      width: 300.0,
      child: RaisedButton.icon(
        color: Colors.limeAccent[400],
        icon: Icon(Icons.camera ,
        size: 30.0,
      ),
      label: Text('LOGIN'),
      onPressed: (){
        var route = MaterialPageRoute(
            builder: (BuildContext context) => SecondPage()
          );
          Navigator.of(context).push(route);
      },
    ),
    );
  }
  Widget buttonrigis(){
    return Container(
      width: 300.0,
      child: RaisedButton.icon(
        color: Colors.limeAccent[400],
        icon: Icon(Icons.account_circle,
        size: 30.0,
      ),
      label: Text('RIGISTOR'),
      onPressed: (){
        var route = MaterialPageRoute(
            builder: (BuildContext context) => RigisPage()
          );
          Navigator.of(context).push(route);
      },
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/ya.jpg'))),
          child: Center(child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showlogo(),Text('\n'),
              showText(),
              emailText(),
              passText(),
              buttonlogin(),
              buttonrigis(),
            ],
          ),),
        ),
        ),
    );
  }
}