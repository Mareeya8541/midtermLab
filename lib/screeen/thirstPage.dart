import 'package:flutter/material.dart';
import 'package:mareeya/screeen/home.dart';


class ThirstPage extends StatefulWidget {
  final String valueFromSecondPage;
  final String valueFromSecondPage1;
  ThirstPage({Key key ,this.valueFromSecondPage,this.valueFromSecondPage1}):super(key:key);
  @override
  _ThirstPageState createState() => _ThirstPageState();
}

class _ThirstPageState extends State<ThirstPage> {
  final String titleString =" ผลลัพธ์";
   
  
  Widget process(){
    int inter1 ;
    int inter2 ;
    inter1 =int.parse(widget.valueFromSecondPage);
    inter2 =int.parse(widget.valueFromSecondPage1);
    int intsum =inter1+inter2;
    String sum =intsum.toString();
    return Text("บวก: ${widget.valueFromSecondPage} + ${widget.valueFromSecondPage1} = "+sum);
  }
  Widget process1(){
    int inter1 ;
    int inter2 ;
    inter1 =int.parse(widget.valueFromSecondPage);
    inter2 =int.parse(widget.valueFromSecondPage1);
    int intsum =inter1-inter2;
    String sum =intsum.toString();
    return Text("ลบ: ${widget.valueFromSecondPage} - ${widget.valueFromSecondPage1} = "+sum);
  }
  Widget process2(){
    int inter1 ;
    int inter2 ;
    inter1 =int.parse(widget.valueFromSecondPage);
    inter2 =int.parse(widget.valueFromSecondPage1);
    int intsum =inter1*inter2;
    String sum =intsum.toString();
    return Text("คูณ: ${widget.valueFromSecondPage} * ${widget.valueFromSecondPage1} = "+sum);
  }
  Widget process3(){
    int inter1 ;
    int inter2 ;
    inter1 =int.parse(widget.valueFromSecondPage);
    inter2 =int.parse(widget.valueFromSecondPage1);
    double intsum =inter1/inter2;
    String sum =intsum.toString();
    return Text("หาร: ${widget.valueFromSecondPage} / ${widget.valueFromSecondPage1} = "+sum);
  }

  Widget buttonhome(){
    return Container(
      width: 300.0,
      child: RaisedButton.icon(
        color: Colors.limeAccent[400],
        icon: Icon(Icons.backup,
        size: 30.0,
      ),
      label: Text('Back to Home'),
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
              process(),
              process1(),
              process2(),
              process3(),
              buttonhome(),
            ],
          ),),
      ),
    );
  }
}