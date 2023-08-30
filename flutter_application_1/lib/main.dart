import 'package:flutter/material.dart'; 
import '../screens/about.dart'; 
import '../screens/product.dart';
  
void main() {  
  runApp(MaterialApp( home: MyApp(),));  
}  
  
class MyApp extends StatefulWidget {  
  @override  
  _State createState() => _State();  
}  
  
class _State extends State<MyApp> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
        appBar: AppBar(  
          title: Text('My App'),  
        ),  
        body: Center(  
            child: 
               Column(  
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[  
                ElevatedButton(   
                  child: Text('Product Page'),  
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Product()));
                  },  
                ),
                ElevatedButton(   
                  child: Text('About Page'),  
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                  },  
                ),   
              ],  
            ) ,
            ),
           
        );
  }  
}  