import 'package:flutter/material.dart';
import 'package:myproject/Storage/sqflitestorage/sqfliteUserLogin/sqlusderloginpg.dart';
import 'package:myproject/Storage/sqflitestorage/sqfliteUserLogin/userhelper.dart';
import 'package:myproject/Storage/sqflitestorage/sqfliteUserLogin/usermainpg.dart';

class sqlusrregpg extends StatefulWidget {
  const sqlusrregpg({super.key});

  @override
  State<sqlusrregpg> createState() => _sqlusrregpgState();
}

class _sqlusrregpgState extends State<sqlusrregpg> {
   GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  var confirmpass ;
  var conemail = TextEditingController();
  var conname = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void Addnewuser(String name, String email, String password) async {
      var id = await USRHelper.AddNewUser(name,email,password);

      if (id != null){
        Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context)=>loginsqlpg() ));
      } else {
        Navigator.pushReplacement(
          context,MaterialPageRoute(builder: (context)=>userlogpg() ) );
      }
    }
    return Scaffold(
          body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("REGISTRATION PAGE",style: 
          TextStyle(backgroundColor: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),
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
              if(password!.isEmpty || password.length<6){
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
              onPressed:() async {
                final valid = formkey.currentState!.validate();
                if(valid){
                  String uemail = conemail.text;

                  var data = await USRHelper.userFound(uemail);

                  if(data.isNotEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("user already exists")));
                  }else {
                    Addnewuser(conname.text, conemail.text, pass.text);
                  }
                  //Navigator.push(context,MaterialPageRoute(builder: (context)=> loginsqlpg()));
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