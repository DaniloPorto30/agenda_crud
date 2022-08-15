import 'package:agenda_crud/app/my_app.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final lista = [
    {
      'nome': 'Danilo',
      'telefone': '999595081',
      'avatar':
          'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'
    },
    {
      'nome': 'Maysa',
      'telefone': '999794062',
      'avatar':
          'https://cdn.pixabay.com/photo/2014/04/02/14/10/female-306407_960_720.png'
    },
    {
      'nome': 'Ines',
      'telefone': '34694552',
      'avatar':
          'https://cdn.pixabay.com/photo/2014/03/24/17/19/teacher-295387_960_720.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
              })
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          dynamic contato = lista[i];
          var avatar = CircleAvatar(
            backgroundImage: NetworkImage(contato['avatar']),
          );
          return ListTile(
            leading: avatar,
            title: Text(contato['nome']),
            subtitle: Text(contato['telefone']),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.edit), onPressed: null),
                  IconButton(icon: Icon(Icons.delete), onPressed: null),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
