import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class UserMainScreen extends StatefulWidget {

  @override
  _UserMainScreenState createState() => _UserMainScreenState();
}

class _UserMainScreenState extends State<UserMainScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                color: Colors.black12,
            child: ListTile(
              leading: Image.asset('assets/images/Person.jpg'),
              title: Text(
                       'User Account',
                       style: TextStyle(
                          fontWeight: FontWeight.bold
                       ),
                     ),
              trailing: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.exit_to_app),
              ),
            ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 110
                ),
                padding: EdgeInsetsDirectional.only(top: 20),
                decoration: BoxDecoration(

                    color: Colors.white60,

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    border: Border.all(color: Colors.grey,)
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('home'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      tileColor: Colors.black26,
                      onTap: (){
                        Navigator.of(context).pop();
                      },

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(Icons.accessibility),
                      title: Text('Personal Profile'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      tileColor: Colors.black26,
                      onTap: (){
                        Navigator.of(context).pushNamed('PersonalProfile');
                      },

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(Icons.request_page_sharp),
                      title: Text('My requests'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      tileColor: Colors.black26,
                      onTap: (){
                        Navigator.of(context).pushNamed('Requests');
                      },

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Complaints and suggestions'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      tileColor: Colors.black26,
                      onTap: (){
                        Navigator.of(context).pushNamed('ComplaintsAndSuggestions');
                      },

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(Icons.help_center_outlined),
                      title: Text('About'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      tileColor: Colors.black26,
                      onTap: (){
                        Navigator.of(context).pushNamed('AboutApp');
                      },

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(Icons.warning_amber_outlined),
                      title: Text('Terms and Conditions'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      tileColor: Colors.black26,
                      onTap: (){
                        Navigator.of(context).pushNamed('TermsAndConditions');
                      },

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(

                      color: Colors.white,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){_launchInBrowser(_launchWhatsUrl);}, icon: Icon(MdiIcons.whatsapp),color: Colors.green,),
                          IconButton(onPressed: (){_launchInBrowser(_launchTwitterUrl);}, icon: Icon(MdiIcons.twitter),color: Colors.blue,),
                          IconButton(onPressed: (){_launchInBrowser(_launchFacebookUrl);}, icon: Icon(MdiIcons.facebook),color: Colors.blue,),
                          IconButton(onPressed: (){_launchInBrowser(_launchInstaUrl);}, icon: Icon(MdiIcons.instagram),color: Colors.red),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Wrap(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: MaterialButton(
              onPressed: (){
                Navigator.of(context).pushNamed('Samsung');
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
                        'assets/images/samsung.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: double.infinity,

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
                        'Samsung',
                        style: TextStyle(
                          fontSize: 20,
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
                Navigator.of(context).pushNamed('Apple');
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
                        'assets/images/apple.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: double.infinity,

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
                        'Apple',
                        style: TextStyle(
                          fontSize: 20,
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
                Navigator.of(context).pushNamed('Xiaomi');
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
                        'assets/images/xiaomi.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: double.infinity,

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
                        'Xiaomi',
                        style: TextStyle(
                          fontSize: 20,
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
