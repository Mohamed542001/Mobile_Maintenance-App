import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:url_launcher/url_launcher.dart';
class TermsAndConditions1 extends StatefulWidget {

  @override
  _TermsAndConditions1State createState() => _TermsAndConditions1State();
}

class _TermsAndConditions1State extends State<TermsAndConditions1> {
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
                      """Terms and conditions of service
As a user ("you/customer/you")
For the site you must read and know the terms and conditions below
("Terms and Conditions").
By purchasing through the store, you agree to be subject to the terms
and provisions. Read carefully before using the online service. If it does not
You agree (or cannot submit to the terms and conditions of any of the
Terms and Conditions, You must not use the Service.
Terms of use

-All spare parts for Apple devices are not original
We provide Apple phone repair services but this will lead to
void their Apple warranty.

Use of the store is available to any legally qualified natural person
To approve contracts under applicable law. Other people
Contract eligible” as per local law they are not allowed
using the store.
If you are a minor (for example: you are under 18 years old)
You can use the store under the supervision of a parent or legal guardian
Who, in turn, agrees to the terms of use.
Unless there are additional provisions for services or products
These terms and conditions supersede all previous ones
representations, understandings or agreements.
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
