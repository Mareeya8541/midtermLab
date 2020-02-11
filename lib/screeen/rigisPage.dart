import 'package:flutter/material.dart';
import 'package:mareeya/screeen/prorigispage.dart';
import 'package:flutter/services.dart';

class RigisPage extends StatefulWidget {
  @override
  _RigisPageState createState() => _RigisPageState();
}

class _RigisPageState extends State<RigisPage> {
  final String titleString =" ลงทะเบียนเข้าใช้ระบบ";
  var name = new TextEditingController();
  var username = new TextEditingController();
  var pass = new TextEditingController();
  var tell = new TextEditingController();

  Widget showText() {
    return Text(
      'ลงทะเบียน',
      style: TextStyle(
          fontSize: 28.0, 
          fontWeight: FontWeight.bold, 
          color: Colors.limeAccent[400]),
    );
  }

  Widget myname(){
    return Container(
      width: 300.0,
      child: TextFormField(
        controller: name,
        decoration: InputDecoration(
          icon: Icon(Icons.account_circle,
          size: 35.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Name and Sername',
          hintText: 'Enter Name and Sername'
        ),
      ),
    );
  }

  Widget myusername(){
    return Container(
      width: 300.0,
      child: TextFormField(
        controller: username,
        decoration: InputDecoration(
          icon: Icon(Icons.account_box,
          size: 35.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Username',
          hintText: 'Enter Username'
        ),
      ),
    );
  }

  Widget mypass(){
    return Container(
      width: 300.0,
      child: TextFormField(
        obscureText: true,
        controller: pass,
        decoration: InputDecoration(
          icon: Icon(Icons.vpn_lock,
          size: 35.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Password',
          hintText: 'Enter your password'
        ),
      ),
    );
  }

  Widget mytel(){
    return Container(
      width: 300.0,
      child: TextFormField(
        controller: tell,
        decoration: InputDecoration(
          icon: Icon(Icons.add_call,
          size: 35.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Tellephone',
          hintText: 'Number only'
        ),inputFormatters: [WhitelistingTextInputFormatter(RegExp("[0-9]"))],
        maxLines: null,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget buttonrigis(){
    return Container(
      width: 300.0,
      child: RaisedButton.icon(
        color: Colors.limeAccent[400],
        icon: Icon(Icons.recent_actors ,
        size: 30.0,
      ),
      label: Text('RIGISTOR'),
      onPressed: (){
        var route = MaterialPageRoute(
            builder: (BuildContext context) => ProRigisPage(
              valueFromRigisPage: name.text,
              valueFromRigisPage1: username.text,
              valueFromRigisPage2: pass.text,
              valueFromRigisPage3: tell.text,
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
              myname(),
              myusername(),
              mypass(),
              mytel(),
              buttonrigis(),
            ],
          ),),
      ),
    );
  }
}
