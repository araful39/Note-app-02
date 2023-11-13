import 'package:flutter/material.dart';
import 'package:note_app_02/data_list.dart';
import 'package:note_app_02/home_page.dart';

class NoteEdite extends StatefulWidget {
  const NoteEdite({super.key, this.nameChange, this.descripChange});
final String? nameChange;
  final String? descripChange;

  @override
  State<NoteEdite> createState() => _NoteEditeState();
}

class _NoteEditeState extends State<NoteEdite> {

  TextEditingController _subController=TextEditingController();
  TextEditingController _desceController=TextEditingController();
  @override

  Widget build(BuildContext context) {
    NoteEdite change1=NoteEdite(
      nameChange: _subController.text,descripChange: _desceController.text,
    );
    NoteEdite change2=NoteEdite();
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.amber.shade600,
        title: Text("Edite"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(


          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: w/2,
                    height: h/7,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60),
                              bottomLeft: Radius.circular(0),
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(0)
                          )
                      ),
                      color:Colors.amber.shade600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Subject Name",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(height: 2,),
                          SizedBox(
                            width: w/2.5,
                            height: 70,
                            child: TextField(
                              showCursor: true,
                              autofocus: true,
                              maxLength: 15,
                              controller: _subController,
                              textInputAction:TextInputAction.next,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                prefix: Icon(Icons.edit),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2),
                                    borderSide: BorderSide(color: Colors.amber.shade600,width: 2)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2),
                                    borderSide: BorderSide(color:Colors.amber.shade600,width: 2)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: w/1.10,
                    height: h/2,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60),
                              bottomLeft: Radius.circular(0),
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(0)
                          )
                      ),
                      color:Colors.amber.shade600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Description",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30),),
                          Padding(
                            padding: const EdgeInsets.only(right: 40,left: 40),
                            child: Divider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            width: w/1.3,

                            child: TextField(
                              controller: _desceController,
                              maxLines: 15,
                              // maxLength: 10,

                              // textInputAction:TextInputAction.next,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(

                                prefix: Icon(Icons.edit),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2),
                                    borderSide: BorderSide(color: Colors.amber.shade600,width: 2)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2),
                                    borderSide: BorderSide(color:Colors.amber.shade600,width: 2)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

                }, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Update"),
                ),style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade600,
                ),),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));


                }, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Cancell"),
                ),style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade600,
                ),)

              ],
            )
          ],
        ),
      ),
    );
  }
}
