import 'package:flutter/material.dart';
class ForgotPassword extends StatefulWidget {

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  void initState() {

    super.initState();
  }

  final TextEditingController phoneController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset('assets/images/repair.jpg'),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(

                        color: Colors.white60,

                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                        border: Border.all(color: Colors.grey,)
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    padding: EdgeInsets.all(20),
                    // margin: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Phone Number',
                              style: TextStyle(

                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          TextFormField(
                            controller: phoneController,
                            keyboardType: TextInputType.phone,
                            // onFieldSubmitted: (value){
                            //   print(value);
                            // },
                            // onChanged: (value){
                            //   print(value);
                            // },

                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              border: OutlineInputBorder(),


                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: MaterialButton(

                              onPressed: (){
                                Navigator.of(context).pushNamed('PasswordReset');
                              },
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
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
          ],
        ),
      ),
    );
  }
}
