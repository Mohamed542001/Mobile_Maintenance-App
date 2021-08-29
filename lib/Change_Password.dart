import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool passwordVisible=true;
  bool newPasswordVisible=true;
  bool confirmPasswordVisible=true;

  final TextEditingController passwordController=new TextEditingController();
  final TextEditingController newPasswordController=new TextEditingController();
  final TextEditingController confirmPasswordController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
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
                labelText: 'Old password',
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
          ),

            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: newPasswordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: newPasswordVisible,
                // onFieldSubmitted: (value){
                //   print(value);
                // },
                // onChanged: (value){
                //   print(value);
                // },
                decoration: InputDecoration(
                    labelText: 'New password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed:(){
                        setState(() {
                          newPasswordVisible=!newPasswordVisible;
                        });
                      } ,
                      icon:Icon(newPasswordVisible?Icons.visibility:Icons.visibility_off) ,
                    )

                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
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
                    labelText: 'Confirm password',
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
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              margin: EdgeInsets.all(15),
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
      ),
    );
  }
}
