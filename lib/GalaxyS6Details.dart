import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalaxyS6Details extends StatefulWidget {
  const GalaxyS6Details({Key? key}) : super(key: key);

  @override
  _GalaxyS6DetailsState createState() => _GalaxyS6DetailsState();
}

class _GalaxyS6DetailsState extends State<GalaxyS6Details> {
  bool selected1=true;
  bool selected2=true;
  originalSelected(){
    setState(() {
      selected1=!selected1;
    });
  }
  firstClassSelected(){
    setState(() {
      selected2=!selected2;
    });
  }
  bool check=false;
  bool check1=false;
  bool check2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        centerTitle: true,
      ),

      floatingActionButton: Container(
        width: double.infinity,
        margin: EdgeInsetsDirectional.only(start: 20),
        child: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },

          label:  Text(
              'Send Request',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon:  CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back_ios,),
          ),
          backgroundColor: Colors.blue,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(

              width: double.infinity,
              height:50 ,

              child: Card(

                elevation: 5,
                margin: EdgeInsets.all(5),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(5),
                  child: Text(
                      'Change Screen',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),

                    textAlign: TextAlign.start,
                  ),
                ),

              ),
            ),
            Row(
              children: [
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(5),
                  child: InkWell(
                    onTap: ()=>originalSelected(),

                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Original',
                            style: TextStyle(
                              color: selected1?Colors.black:Colors.blue,
                              fontSize: 16
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              '1000 SR',
                            style: TextStyle(
                              color: selected1?Colors.black:Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(5),
                  child: InkWell(
                    onTap: ()=>firstClassSelected(),

                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'First class',
                            style: TextStyle(
                              color: selected2?Colors.black:Colors.blue,
                              fontSize: 16
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              '800 SR',
                            style: TextStyle(
                              color: selected2?Colors.black:Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Wrap(
              children: [
                Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsetsDirectional.only(start: 20,end: 20),
                      child: TextButton(onPressed: (){},child: Text('Add Image'),)
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsetsDirectional.only(start: 20,end: 20),
                      child: TextButton(onPressed: (){},child: Text('Add Video'),)
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height:50 ,

              child: Card(
                elevation: 10,
                margin: EdgeInsets.all(5),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Other Information',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),

                    textAlign: TextAlign.start,
                  ),
                ),

              ),
            ),
            Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(value: check,onChanged: (val){
                          setState(() {
                            check=val!;
                          });
                        },),
                        Text(
                            'Did you put the phone on the ground?',
                          style: TextStyle(
                            fontSize: 17
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: check1,onChanged: (val){
                          setState(() {
                            check1=val!;
                          });
                        },),
                        Text(
                            'Has the phone been serviced before?',
                          style: TextStyle(
                            fontSize: 17
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: check2,onChanged: (val){
                          setState(() {
                            check2=val!;
                          });
                        },),
                        Text(
                            'Did the phone fall into the water?',
                          style: TextStyle(
                            fontSize: 17
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              height:50 ,

              child: Card(
                elevation: 10,
                margin: EdgeInsets.all(10),
                child: Container(

                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'What type of device and how did the problem occur?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),

                    textAlign: TextAlign.start,
                  ),
                ),

              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Write the device color and the details of the problem here',

                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height:50 ,

              child: Card(
                elevation: 10,
                margin: EdgeInsets.all(5),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),

                    textAlign: TextAlign.start,
                  ),
                ),

              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text(
                'Location on the map',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,),
                borderRadius: BorderRadius.circular(15),
              ),
                child: Image.asset('assets/images/map.jpg')
            ),
            SizedBox(
              height: 100,
            ),


          ],
        ),
      ),
    );
  }
}
