import 'package:flutter/material.dart';

class Requests extends StatefulWidget {

  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Orders'),
            leading: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_outlined),
            ),
          ),
          body: DefaultTabController(
            length: 3,
            child: Container(
              child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: TabBar(
                        indicatorColor: Colors.green,
                        unselectedLabelColor: Colors.blue,
                        labelColor: Colors.white,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              'New',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Current',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Finished',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],),

                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 400,
                      child: TabBarView(
                        children: [
                          Container(

                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            child: Text(
                              'There are no items',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            child: Text(
                              'There are no items',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.all(15),
                            width: double.infinity,
                            child: Text(
                              'There are no items',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ) ,
        ),
    );
  }
}
