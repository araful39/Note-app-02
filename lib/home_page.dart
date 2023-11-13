import 'package:flutter/material.dart';
import 'package:note_app_02/Pages/note-write.dart';
import 'package:note_app_02/Pages/note_edite.dart';
import 'package:note_app_02/Pages/note_show.dart';
import 'package:note_app_02/data_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber.shade600,
        title: Text("Note App",style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: namelist.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: ListTile(
                onLongPress:  (){
    namelist.removeAt(index);
    descriptionlist.removeAt(index);
    setState(() {

    });},
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NoteShow(nameRead: namelist[index].toString(), descriptionRead: descriptionlist[index].toString())));
                },
                tileColor:  Colors.amber[700],

                leading: Icon(Icons.notes,color: Colors.white,),
                title: Text(namelist[index].toString(),style: TextStyle(color: Colors.white),),
                subtitle: Text(descriptionlist[index].toString(),style: TextStyle(color: Colors.white,),maxLines: 1,overflow:TextOverflow.clip,),
                trailing: Container(
                  height: 50,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){
                          namelist.removeAt(index);
                           descriptionlist.removeAt(index);
                          setState(() {

                          });

                        },icon: Icon(Icons.delete,color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor:  Colors.amber.shade600,
        onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>NotePage()));
        },
        child: Text("add"),
      ),
    );
  }
}
