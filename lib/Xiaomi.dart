import 'package:flutter/material.dart';

class Xiaomi extends StatefulWidget {

  @override
  _Xiaomi createState() => _Xiaomi();
}

class _Xiaomi extends State<Xiaomi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Mobile Type'),
        centerTitle: true,
      ),

      body: Wrap(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: MaterialButton(
              onPressed: (){
                Navigator.of(context).pushNamed('PocoX3Services');
              },
              child: Container(

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue,width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 115,
                height: 131,
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        'assets/images/xiaomi1.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: 90,

                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 28,
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.blue, width: 1.5))
                      ),                      alignment: Alignment.center,
                      child: Text(
                        'poco x3',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: MaterialButton(
              onPressed: (){
                Navigator.of(context).pushNamed('Mi10Services');
              },
              child: Container(

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue,width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 120,
                height: 131,
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        'assets/images/xiaomi2.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: 90,

                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 28,
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.blue, width: 1.5))
                      ),                      alignment: Alignment.center,
                      child: Text(
                        'mi 10',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
