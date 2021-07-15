import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rfg/src/provider/floof_provider.dart';


class FloofGallery extends StatelessWidget {

  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Floof Gallery',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            ),
        ),        
      ),
      body: Center(
        child: Column(
            children: [             
              Container(
                height: 520.0,
                width: 320.0,
                child: FutureBuilder(
                  future: FloofProvider().generarFloof(),
                  builder: (context, snapshot){
                    String data = snapshot.data;
                    
                    if(!snapshot.hasData){
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return Center(
                        child: 
                          Column(
                            children: [
                              SizedBox(height: 20.0,),
                              Expanded(child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30.0)
                                  ),
                               child: GridView.builder(
                                 itemCount: 123,
                                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                   crossAxisCount: 2,
                                   crossAxisSpacing: 10,
                                   mainAxisSpacing: 5, 
                                   ),
                                itemBuilder: (context, index){
                                  return Image.network(data);
                                })
                              ))
                            ],
                          )
                      );
                    }
                  }, 
                )
              ),
            ]
          )
      )
    );
  }
}
