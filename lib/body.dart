import 'package:flutter/material.dart';
import 'package:library_ui/dummy_data.dart';

class Bodypart extends StatelessWidget {
  const Bodypart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,crossAxisSpacing: 10,
    ), itemBuilder: (BuildContext context, int index){
      return Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(cardlist[index].image),
            SizedBox(
              height: 10,
            ),
            Text(cardlist[index].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            SizedBox(
              height: 10,
            ),
            Text(cardlist[index].desc),
          ],
        ) ,
      );
    },
    itemCount: cardlist.length,
    );
  }
}

