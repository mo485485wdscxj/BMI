import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatelessWidget {
    LoginPage({super.key});

  //Take Data Of Users
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_balance_sharp,size: 30),
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
      child:Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white12),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children:[
          SizedBox(height: 40),
          CircleAvatar(
          radius: 100,
            backgroundImage:NetworkImage('data:image/png;base64,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') ,
            child: Icon(Icons.add,color: Colors.green,),

            ),
            SizedBox(height: 10),
            Container(
            width: 300,
            child: TextFormField(
              controller: email,
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                labelText:"Email",
              ),
            ),
          ),
            SizedBox(height: 30 ),
            Container(
              width: 300,
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: "@",
                controller: pass,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText:"Password",
                ),
              ),
            ),
            SizedBox(height: 30),
            MaterialButton(onPressed: ()
            {
              String Mail = email.text;
              String password =pass.text;

              if(Mail=="momen@gmail.com"&&password=="123")
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("DONE☻"),backgroundColor: Colors.green,));

                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));

                }
              else
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: const Text('No'),backgroundColor: Colors.red,));
                }

            },
            child: const Text("Login"),
              color: Colors.orange,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do not Have Acounnt?'),
                TextButton(onPressed: (){}, child: Text('Sign Up'))
              ],
            )
           ],
          ),
         ),
        ),
       );
      }
    }


