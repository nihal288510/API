import 'package:flutter/material.dart';

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
      },child: Icon(Icons.lightbulb),),
      body: Column(mainAxisAlignment:  MainAxisAlignment.center,
        
        children: [
          Center

            (child:
          Image.network("https://th.bing.com/th/id/R.f2d6ce890034fa832bdbe582fdc0d63c?rik=brhj0bdCmbo9OA&riu=http%3a%2f%2fcelebrityinsider.org%2fwp-content%2fuploads%2f2017%2f12%2fKylie-Jenn.jpg&ehk=bcKDib6bUA21B4yIkmml9zsf0rGW7ebJiF16kJd9kkE%3d&risl=&pid=ImgRaw&r=0",height: 300,)),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {

          }, child: Text("Text"))
        ],

        
      ),
    );
  }
}
