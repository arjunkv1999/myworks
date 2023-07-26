import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myproject/myflutterprgms/homescreen.dart';
import 'package:myproject/myflutterprgms/registrationpage.dart';
//void main() {
// runApp(DevicePreview(
 //   builder: (BuildContext context) => MaterialApp(
  //   useInheritedMediaQuery: true,
  //   home: Login_with_validation(),
   //   debugShowCheckedModeBanner: false,
  //  ),
 // ));
//}
class Login_with_validation extends StatefulWidget {
  
  
  @override
  State<Login_with_validation> createState() => _Login_with_validationState();
}

class _Login_with_validationState extends State<Login_with_validation> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Login Validation"),
       ),
       body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icon/profile.png",width: 200,height: 200,),
          Padding(padding: const EdgeInsets.all(8.0),
           child: TextFormField(
            
            decoration:InputDecoration(
            prefixIcon: Icon(Icons.account_box_sharp),
            hintText: "UserName",
            labelText: "UserName",
            helperText: "UserName should be email or phonenumber",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
          ) ,
           validator: (uname){
            if(uname!.isEmpty || !uname.contains('@') || !uname.contains('.')){
              return 'Enter a valid UserName';
            }else{
              return null;
            }
           }
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: showpass,
              obscuringCharacter: "*",
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    if(showpass){
                      showpass = false;
                    }else {
                      showpass = true;
                    }
                  });
                }, 
                icon: Icon(showpass == true
                ? Icons.visibility_off : Icons.visibility)),
              hintText: "Password",
              labelText: "Password",
              helperText: "Password length grater than 6",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
            ),
            validator: (password){
              if(password!.isEmpty || password!.length<8){
                return 'Enter valid Password';
              }else{
                return null;
              }
            }
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child:ElevatedButton(
              onPressed:(){
                final valid = formkey.currentState!.validate();
                if(valid){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Homepage()));
                }
              },
              child:const Text(
               "Login",
            style: TextStyle(fontSize: 15),
          )),),
          TextButton(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Registration()));
            },
            child: const Text("Not a User?? SignUp Now!",
            style: TextStyle(fontSize: 15),)),  
        ]  
          ),
        ),
       ),
    );
  }
}