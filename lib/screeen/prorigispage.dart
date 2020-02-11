import 'package:flutter/material.dart';
import 'package:mareeya/screeen/home.dart';


class ProRigisPage extends StatefulWidget {
  final String valueFromRigisPage;
  final String valueFromRigisPage1;
  final String valueFromRigisPage2;
  final String valueFromRigisPage3;
  ProRigisPage({Key key,this.valueFromRigisPage,this.valueFromRigisPage1,this.valueFromRigisPage2,this.valueFromRigisPage3}):super(key:key);
  @override
  _ProRigisPageState createState() => _ProRigisPageState();
}

class _ProRigisPageState extends State<ProRigisPage> {
  final String titleString =" กรุณาตรวจสอบข้อมูล ";

  Widget myname(){
    return Text("Name: ${widget.valueFromRigisPage}");
  }
  Widget myusername(){
    return Text("UserName: ${widget.valueFromRigisPage1}");
  }
  Widget mypass(){
    return Text("Password: ${widget.valueFromRigisPage2}");
  }
  Widget mytel(){
    return Text("Telephon: ${widget.valueFromRigisPage3}");
  }

  Widget buttonhome(){
    return Container(
      width: 300.0,
      child: RaisedButton.icon(
        color: Colors.limeAccent[400],
        icon: Icon(Icons.check,
        size: 30.0,
      ),
      label: Text('Confirm'),
      onPressed: (){
        var route = MaterialPageRoute(
            builder: (BuildContext context) => Home()
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
              myname(),
              myusername(),
              mypass(),
              mytel(),
              buttonhome()
            ],
          ),),
      ),
    );
  }
}