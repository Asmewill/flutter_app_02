import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldFocusDemo extends StatefulWidget {
  @override
  State<TextFieldFocusDemo> createState() {
    // TODO: implement createState
    return new TextFieldFocusDemoState();
  }
}

class TextFieldFocusDemoState extends State<TextFieldFocusDemo> {
  TextEditingController nameController,pwController;
  FocusNode nameFocus,pwFocus;
  @override
  void initState() {
    // TODO: implement initState
    nameController=TextEditingController();
    pwController=TextEditingController();
    nameFocus=FocusNode();
    pwFocus=FocusNode();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 80.0),
            Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 32.0),
              ),
            ),
            const SizedBox(height: 80.0),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Material(
                borderRadius: BorderRadius.circular(10.0),
                child: TextField(
                    focusNode: nameFocus,
                    controller: nameController,
                    obscureText: false,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (input){
                      nameFocus.unfocus();
                      FocusScope.of(context).requestFocus(pwFocus);
                       print("UserName--onSubmitted");
                    },
                    decoration: InputDecoration(
                      labelText: "UserName",
                    ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Material(
                borderRadius:BorderRadius.circular(10),
                child: TextField(
                    focusNode: pwFocus,
                    controller:pwController ,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (input){
                      pwFocus.unfocus();
                        print("Password--onSubmitted");
                    },
                    decoration: InputDecoration(
                      labelText:"Password" 
                    ),
                           
                ),
              ),
            ),
            const SizedBox(height: 30),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    pwController.text.toString();
                    print(nameController.text.toString()+"---"+pwController.text.toString());
                  },
                  child: Text("login"),
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
