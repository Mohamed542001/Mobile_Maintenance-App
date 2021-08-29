import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iphone13Services extends StatefulWidget {

  @override
  _Iphone13ServicesState createState() => _Iphone13ServicesState();
}

class _Iphone13ServicesState extends State<Iphone13Services> {
  bool selected=true;
  isSelected(){
    setState(() {
      selected=!selected;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Select one or more services'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // direction: Axis.vertical,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(15),
            child: MaterialButton(
              onPressed: ()=>isSelected(),
              child: Container(

                decoration: BoxDecoration(
                  border: Border.all(color: selected?Colors.black:Colors.blue,width: 1.5),
                ),
                width: 115,
                height: 131,
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        'assets/images/s6Screen.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: 100,

                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 28,
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: selected?Colors.black:Colors.blue, width: 1.5))
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        color: selected?Colors.white:Colors.blue,
                        alignment: Alignment.center,
                        child: Text(
                          'Change Screen',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: selected?Colors.black:Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 590,
          // ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: (){
                Navigator.of(context).pushNamed('Iphone13Details');
              },
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
