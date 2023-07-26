import 'package:flutter/material.dart';
import 'package:myproject/myflutterprgms/login_with_validation.dart';
class Registration extends StatefulWidget {
  const Registration ({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  var confirmpass ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Registration Page"),
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
              confirmpass = password;
              if(password!.isEmpty || password!.length<8){
                return 'Enter valid Password';
              }else{
                return null;
              }
            }
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (cpass){
                if(cpass != confirmpass || cpass!.isEmpty){
                  return "password mismatch";
                }else{
                  return null;
                }
              },
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child:ElevatedButton(
              onPressed:(){
                final valid = formkey.currentState!.validate();
                if(valid){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Login_with_validation()));
                }
              },
              child:const Text(
               "SignUp",
            style: TextStyle(fontSize: 15),
          )),),
          
        ]  
          ),
        ),
       ),
    );
  }
}