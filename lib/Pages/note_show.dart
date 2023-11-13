import 'package:flutter/material.dart';
import 'package:note_app_02/data_list.dart';
import 'package:note_app_02/home_page.dart';

class NoteShow extends StatefulWidget {
  const NoteShow({super.key,required this.nameRead,required this.descriptionRead});
  final String?nameRead;
  final String? descriptionRead;

  @override
  State<NoteShow> createState() => _NoteShowState();
}
class _NoteShowState extends State<NoteShow> {

  @override

  Widget build(BuildContext context) {

    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.amber.shade600,
        title: Text("Read",style: TextStyle(color: Colors.white,fontSize: 30),),
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
                    width: w/1.10,
                    height: h/5,
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
                            width: w/3,
                            height: h/20,
                            child:
                            Text(widget.nameRead.toString(),style: TextStyle(color: Colors.white,fontSize: 30),),
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
                        mainAxisAlignment: MainAxisAlignment.start,
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

                            child:
                          Text(widget.descriptionRead.toString(),style: TextStyle(color: Colors.white,fontSize: 30),)
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
            SizedBox(
              height: 10,
            ),




          ],
        ),
      ),
    );
  }
}
