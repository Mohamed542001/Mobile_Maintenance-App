import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class ComplaintsAndSuggestions extends StatefulWidget {

  @override
  _ComplaintsAndSuggestionsState createState() => _ComplaintsAndSuggestionsState();
}

class _ComplaintsAndSuggestionsState extends State<ComplaintsAndSuggestions> {
  @override
  void initState() {

    super.initState();
  }
  late Future<void> _launcher;
  String _launchWhatsUrl='https://www.whatsapp.com/';
  String _launchInstaUrl='https://www.instagram.com/';
  String _launchTwitterUrl='https://www.twitter.com/';
  String _launchFacebookUrl='https://www.facebook.com/';
  Future<void> _launchInBrowser(String url) async{
    if(await canLaunch(url)){
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String,String>{'header_key':'header_value'},
      );
    }else{
      throw 'Could not launch $url';
    }
  }
  final TextEditingController nameController=new TextEditingController();
  final TextEditingController emailController=new TextEditingController();
  final TextEditingController textController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ComplaintsAndSuggestions'),
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
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset('assets/images/repair.jpg'),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: textController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Message',
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('or via social media'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){_launchInBrowser(_launchWhatsUrl);}, icon: Icon(MdiIcons.whatsapp),color: Colors.green,),
                  IconButton(onPressed: (){_launchInBrowser(_launchTwitterUrl);}, icon: Icon(MdiIcons.twitter),color: Colors.blue,),
                  IconButton(onPressed: (){_launchInBrowser(_launchFacebookUrl);}, icon: Icon(MdiIcons.facebook),color: Colors.blue,),
                  IconButton(onPressed: (){_launchInBrowser(_launchInstaUrl);}, icon: Icon(MdiIcons.instagram),color: Colors.red),
                ],
              ),

            ],
          ),
        ),
      ),


    );
  }
}
