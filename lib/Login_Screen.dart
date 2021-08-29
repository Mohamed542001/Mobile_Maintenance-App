import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {

    super.initState();
  }
  bool passwordvisible=true;

  final TextEditingController phoneController=new TextEditingController();

  final TextEditingController passwordController=new TextEditingController();
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
                          Text(
                              'Login',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
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
                            height: 20.0,
                          ),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passwordvisible,
                            onFieldSubmitted: (value){
                              print(value);
                            },
                            onChanged: (value){
                              print(value);
                            },
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),

                                suffixIcon: IconButton(
                                  onPressed:(){
                                    setState(() {
                                      passwordvisible=!passwordvisible;
                                    });
                                  } ,
                                  icon:Icon(passwordvisible?Icons.visibility:Icons.visibility_off) ,
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
                                Navigator.of(context).pushNamed('UserMainScreen');
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(

                            width: double.infinity,

                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: MaterialButton(

                              onPressed: (){
                                Navigator.of(context).pushNamed('Main_Screen');
                              },
                              child: Text(
                                'Log in as a visitor',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            width: double.infinity,
                              child: TextButton(onPressed: (){
                                Navigator.of(context).pushNamed('ForgotPassword');
                              },
                                child: Text('Forgot Your Password?!'),)
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                              ),
                              TextButton(onPressed: (){Navigator.of(context).pushNamed('NewRegistration');}, child: Text('Register Now'),),
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
