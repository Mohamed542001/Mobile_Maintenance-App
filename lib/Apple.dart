import 'package:flutter/material.dart';

class Apple extends StatefulWidget {

  @override
  _Apple createState() => _Apple();
}

class _Apple extends State<Apple> {
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
                Navigator.of(context).pushNamed('IphoneXsServices');
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
                        'assets/images/iphoneXs.jpg',
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
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'iphone Xs',
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
                Navigator.of(context).pushNamed('Iphone13Services');
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
                        'assets/images/iphone13.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: 65,

                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 28,
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.blue, width: 1.5))
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'iphone 13',
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
