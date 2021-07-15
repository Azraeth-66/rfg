
import 'package:rfg/src/pages/floof_gallery.dart';
import 'package:flutter/material.dart';
import 'package:rfg/src/pages/floof_pull.dart';

class HomePage extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return 
      Container(
        color: Colors.lightBlue.shade200,
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(height: 60.0),
            Expanded(child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 35.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0)
                ),
              child: Column(
                children: [
                  SizedBox(height: 50,
                    child: Text('Floof Generation',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Image.network('https://art.pixilart.com/ed662b18ec46a15.png'),
                    ),
                  SizedBox(height: 20.0,),
                  _toPullFloof(context),
                  SizedBox(height: 30.0),
                  _toFloofGallery(context),
                ],
              ),
            )),
            SizedBox(height: 50.0,)
          ], 
        ) 
      )
    );

  }
  Widget _toPullFloof(BuildContext context){
    return ElevatedButton(
      child: Text(
        'Pull a Floof!',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0),
      ),
       onPressed: (){
         Navigator.push(context,
         MaterialPageRoute(builder: (context) => FloofPull()));
       },
    );
   }

  Widget _toFloofGallery(BuildContext context){
    return ElevatedButton(
      child: Text(
        'Gallery',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0),
      ),
      onPressed: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => FloofGallery())
        );
      },
      
    );
  }
}

