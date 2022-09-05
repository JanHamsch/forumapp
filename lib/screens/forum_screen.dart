import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forumapp/widgets/beitrag.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({Key? key}) : super(key: key);

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
 

  
int number = 0;
final myController = TextEditingController();

void addToList(){
  setState(() {
    checkNumberLenght();
    number++;
    
  });
}
void checkNumberLenght(){
  if(number>=10)
  {
    number =9;
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Forum"),
          actions: [
            IconButton(onPressed: () {
              addToList();
            }, icon: Icon(Icons.add)),
            IconButton(
              icon: Icon(
                Icons.replay_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
            padding: EdgeInsets.all(20),
            child: TextField(controller: myController,),),
            Expanded(
              child: ListView.builder(
                
                itemBuilder: (context, index) {
                  
                  return CustomText(myController.text);
                  
                },
               itemCount: number,
               
              ),
            )
            
          ],
        )
        );
        
  }
  
}

