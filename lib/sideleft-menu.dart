import 'package:flutter/material.dart';
//import 'package:teste/FirstRoute.dart';
//import 'package:teste/SecondRoute.dart';

class SideLeftMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountEmail: Text('teste@gmail.com'),
            accountName: Text('Teste'),
            // currentAccountPicture: CircleAvatar(
            //   backgroundImage: NetworkImage(
            //       'http://icons.iconarchive.com/icons/diversity-avatars/avatars/512/batman-icon.png'),
            // ),
            // otherAccountsPictures: <Widget>[
            //   GestureDetector(
            //     onTap: () {
            //       showDialog(
            //           context: context,
            //           builder: (context) {
            //             return AlertDialog(
            //                 title: Text('Adding new Account...'));
            //           });
            //     },
            //     child: CircleAvatar(
            //       child: Icon(Icons.add),
            //     ),
            //   )
            // ],
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("14 de Novembro - Dia Mundial do Diabetes"),
            trailing: Icon(Icons.arrow_upward),
            onTap: () {
              Navigator.pushNamed(context, '/curiosidades-homepage');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Referências"),
            trailing: Icon(Icons.arrow_upward),
            onTap: () {
              Navigator.pushNamed(context, '/referencias-homepage');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.ac_unit),//sticky_note_2
            title: Text("Referências"),
            trailing: Icon(Icons.arrow_upward),
            onTap: () {
              Navigator.pushNamed(context, '/references');
            },
          ),
        ]),
      ),
    );
  }
}
