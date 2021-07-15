import 'package:flutter/material.dart';
import 'package:rfg/src/pages/home_page.dart';
import 'package:rfg/src/provider/floof_provider.dart';

class FloofPull extends StatelessWidget{

  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds:2)
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ 
                SizedBox(height: 25.0, child: (
                  Container(decoration: BoxDecoration(color: Colors.blue),)
                ),),
                Container(
                  height: 55.0,
                  alignment: Alignment.center,
                  child: Text(
                    'Pull a Floof!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0)
                    ))),
                SizedBox(height: 50.0,),    
                _floofBall(context),
                SizedBox(height: 54.0,),
                _getFloof(context), 
                SizedBox(height: 10.0,),
                _backToMenu(context),
                SizedBox(height: 20.0,),
               Expanded(child: Container(
                  height: 30.0,
                  decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0) )
                ), 
               )   
               ) 
              ]
            )
      
        
     ),
    );
  }


  Widget _floofBall(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: FloofProvider().generarFloof(),
        builder: (context, snapshot){
          String data = snapshot.data;
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(
              child: 
                  Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(360.0),
                    image: DecorationImage (
                      image: NetworkImage(snapshot.data), 
                      fit: BoxFit.fitWidth)
                    ),
                  ),
            );
          }  
        }
      ),
    );
  }

  Widget _backToMenu(BuildContext context){
    return ElevatedButton(
      child: Text(
        'Back to Menu',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.0),
      ),
       onPressed: (){
         Navigator.pushAndRemoveUntil(
          context, 
          MaterialPageRoute(builder: (context) => HomePage()),
          ModalRoute.withName('/')          
         );
       }
    );
  }

  Widget _getFloof(BuildContext context){
    return ElevatedButton(
      child: Text(
        'Pull a NEW FLOOF!',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0),
      ),
       onPressed: (){
        Navigator.pushAndRemoveUntil(
          context, 
          MaterialPageRoute(builder: (context) => FloofPull()),
          ModalRoute.withName('/')          
         );
       }
    );
  }
}