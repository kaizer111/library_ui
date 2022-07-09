

import 'package:flutter/material.dart';
import 'package:library_ui/body.dart';
import 'package:library_ui/device_sized.dart';

class Displaypage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.white,
          actions: [
            Icon(Icons.notifications_outlined,size: 40,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.search,size: 40,),
            ),

          ],
      ),
      drawer: Drawer(
      
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Library',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: displayHeight(context)*0.1,
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                        hintText: 'search...',
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(style: BorderStyle.solid,width: 1.5,),
                        ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(style: BorderStyle.solid,width: 1.5,),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
    Padding(
    padding: const EdgeInsets.fromLTRB(20.0,6.0,6.0,6.0),
    child: Icon(Icons.sort),
    ),
    Padding(
    padding: const EdgeInsets.fromLTRB(20.0,6.0,6.0,6.0),
    child: Icon(Icons.list),
    ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 10.0),
            child: Text('Family Constitution', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Bodypart(),
          )),
        ],

      ),
    );
  }
}
