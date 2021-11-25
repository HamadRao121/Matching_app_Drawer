import 'package:flutter/material.dart';




class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Drawer Menu')
      ),

      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Hamad Rao'),

                accountEmail: Text('gghamad64@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/hmadrao.jpeg'),
                ),

                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    child: Text('H'),
                    backgroundColor: Colors.white60,
                  ),
                  CircleAvatar(
                    child: Text('R'),
                  ),
                ],

                onDetailsPressed: (){},


                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/fundo.jpg"),
                        fit: BoxFit.cover)
                ),),

              ListTile(
                title: Text('NUMBER'),
                leading: Icon(Icons.confirmation_number),
                onLongPress: (){},
              ),


              ListTile(
                title: Text('ALPHABET'),
                leading: Icon(Icons.text_fields),
                onLongPress: (){},
              ),

              Divider(),


              ListTile(
                  title: Text('Close'),
                  leading: Icon(Icons.close),
                  onTap: (){
                    Navigator.of(context).pop();}
              ),
            ]
        ),
      ),
    );

  }

}