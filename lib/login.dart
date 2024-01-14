import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var username=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextFormField(controller: username,),
          TextFormField(controller: password,),
          ElevatedButton(onPressed: () {
            nihal();

          }, child: Text("login"))
        ],
      ),

    );
  }
  void nihal()async{
    final pref=await SharedPreferences.getInstance();
    pref.setString('k', username.text);
    pref.setString('p', password.text);
    var user= pref.getString('k');
    var pass =pref.getString('p');
    print(user);
    print(pass);
  }

}
