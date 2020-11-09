import 'package:flutter/material.dart';
class SideLeftMenu extends StatefulWidget{
  @override
  _SideLeftMenuState createState() => _SideLeftMenuState();
}


class _SideLeftMenuState extends State<SideLeftMenu> {
  String _text = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            // accountEmail: Text('teste@gmail.com'),
            // accountName: Text('Teste'),
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
            title: Text("Curiosidades"),
            onTap: () {
              Navigator.pushNamed(context, '/curiosidades-homepage');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Referências"),
            onTap: () {
              Navigator.pushNamed(context, '/referencias-homepage');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.device_unknown),//sticky_note_2
            title: Text("Sobre o Desenvolvimento"),
            onTap: () {
              Navigator.pushNamed(context, '/sobre-desenvolvimento');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Fale Conosco'),
            onTap: (){
              Navigator.pushNamed(context, '/fale-conosco');
            },
          ),
        ]),
      ),
    );
  }

  // void _sendEmail() async {
  //   var email = Email('viniciusstroff@gmail.com', 'frosthealhs');
  //   bool result = await email.sendMessage('Ola teste', 'stroffproduction@gmail.com', 'Sem assunto por enquanto');

  //   setState(() {
  //     _text = result ? 'Enviado.' : 'Não enviado.';
  //   });
  // }
  
}



