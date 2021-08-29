import 'package:flutter/material.dart';
class PasswordReset extends StatefulWidget {

  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  @override
  void initState() {

    super.initState();
  }
  bool passwordVisible=true;
  bool confirmPasswordVisible=true;

  final TextEditingController phoneController=new TextEditingController();

  final TextEditingController passwordController=new TextEditingController();
  final TextEditingController confirmPasswordController=new TextEditingController();
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
                              'PasswordReset',
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
                            // onFieldSubmitted: (value){
                            //   print(value);
                            // },
                            // onChanged: (value){
                            //   print(value);
                            // },

                            decoration: InputDecoration(
                              labelText: 'activation code',
                              border: OutlineInputBorder(),


                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passwordVisible,
                            // onFieldSubmitted: (value){
                            //   print(value);
                            // },
                            // onChanged: (value){
                            //   print(value);
                            // },
                            decoration: InputDecoration(
                                labelText: 'new password',
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed:(){
                                    setState(() {
                                      passwordVisible=!passwordVisible;
                                    });
                                  } ,
                                  icon:Icon(passwordVisible?Icons.visibility:Icons.visibility_off) ,
                                )

                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          TextFormField(
                            controller: confirmPasswordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: confirmPasswordVisible,
                            // onFieldSubmitted: (value){
                            //   print(value);
                            // },
                            // onChanged: (value){
                            //   print(value);
                            // },
                            decoration: InputDecoration(
                                labelText: 'Confirm passcode',
                                border: OutlineInputBorder(),

                                suffixIcon: IconButton(
                                  onPressed:(){
                                    setState(() {
                                      confirmPasswordVisible=!confirmPasswordVisible;
                                    });
                                  } ,
                                  icon:Icon(confirmPasswordVisible?Icons.visibility:Icons.visibility_off) ,
                                )

                            ),
                          ),
                          SizedBox(
                            height: 30.0,
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
                                print(phoneController.text);
                                print(passwordController.text);
                              },
                              child: Text(
                                'Send',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t receive a code?',
                              ),
                              TextButton(onPressed: (){}, child: Text('Send Code'),),
                            ],
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
