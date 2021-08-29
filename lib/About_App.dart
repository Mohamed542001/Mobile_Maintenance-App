import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class AboutApp extends StatefulWidget {

  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About the app'),
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
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset('assets/images/repair.jpg'),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    """Mobile maintenance application An application for the maintenance of mobile devices
iPad, iPhone and tablet, taking into account that all spare parts For non-genuine Apple devices

Through the application, you can make a maintenance request for your device, and it will be
Communicate with you to get to your site and do maintenance for your device with all
ease.
                    """
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
