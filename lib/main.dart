import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
runApp(Newapp());
}

class Newapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp( home: Myhome(), );
  }
}

class Myhome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.home_filled, color: Colors.black54, size: 20,  ),
        title: Text('Home',style: TextStyle(
          color: Colors.blue.shade800,
           fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
       body: Row (
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisSize: MainAxisSize.max ,
         children: [
           Text('wellcome'),
           Text(' to'),
           Text(' this'),
           Text(' app'),
           Image.network('https://androidayuda.com/wp-content/uploads/2019/08/Android-10.jpg',
             width: 200
           ),
           Column(
             children: [
               Text('This '),
               Text('is'),
               Text('flutter'),
               Text('projecct'),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder:(context) {
                return AlertDialog(
                  title: Text( ' Tap button info'),
                  content: Text(' This is a tap button . \n wellcome to this app'),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text('Cancle'))
                  ],


                );
              });
            },
                child: Text('TAp'))
             ],
           )
         ],
       ) ,


    );

  }


}


