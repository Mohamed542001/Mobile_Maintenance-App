import 'package:flutter/material.dart';

class Samsung extends StatefulWidget {

  @override
  _Samsung createState() => _Samsung();
}

class _Samsung extends State<Samsung> {
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
                Navigator.of(context).pushNamed('GalaxyS6Services');
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
                        'assets/images/galaxy.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: 70,

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
                        'galaxy s6',
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
                Navigator.of(context).pushNamed('GalaxyNote10Services');
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
                        'assets/images/galaxy1.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: 100,

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
                        'galaxy note 10',
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
