import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class PersonalProfile extends StatefulWidget {

  @override
  _PersonalProfileState createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Profile'),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
      ),
      body:  SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: 100,
                        child: Image.asset('assets/images/Person.jpg'),
                      ),
                      Container(child: IconButton(onPressed: (){}, icon: Icon(Icons.edit),color: Colors.blue,))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          'Name',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          'Phone Number',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(),

                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(

                    width: double.infinity,

                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: MaterialButton(

                      onPressed: (){
                        Navigator.of(context).pushNamed('ChangePassword');
                      },
                      child: Text(
                        'Change your password',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: MaterialButton(

                      onPressed: (){
                      },
                      child: Text(
                        'Save changes',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),


    );
  }
}
