import 'package:flutter/material.dart';
class NewRegistration extends StatefulWidget {

  @override
  _NewRegistrationState createState() => _NewRegistrationState();
}

class _NewRegistrationState extends State<NewRegistration> {
  bool check=false;
  @override
  void initState() {

    super.initState();
  }
  bool passwordVisible=true;

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
                              'New Registration',
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
                            // onFieldSubmitted: (value){
                            //   print(value);
                            // },
                            // onChanged: (value){
                            //   print(value);
                            // },

                            decoration: InputDecoration(
                              labelText: 'Name',
                              border: OutlineInputBorder(),


                            ),
                          ),
                          SizedBox(
                            height: 20,
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
                            obscureText: passwordVisible,
                            // onFieldSubmitted: (value){
                            //   print(value);
                            // },
                            // onChanged: (value){
                            //   print(value);
                            // },
                            decoration: InputDecoration(
                                labelText: 'password',
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
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Checkbox(value: check, onChanged: (val){
                                setState(() {
                                  check = val!;
                                });
                              }),
                              TextButton(
                                onPressed: (){
                                  Navigator.of(context).pushNamed('TermsAndConditions1');
                                },
                                child: Text('Agree to the terms and conditions'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
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
                                'Registration',
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
                                'Already have an account?',
                              ),
                              TextButton(onPressed: (){Navigator.of(context).pushNamed('Login_Screen');}, child: Text('Login'),),
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
