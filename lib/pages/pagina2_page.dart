import 'package:estados/bloc/user/bloc/user_bloc.dart';
import 'package:estados/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                final newUser = User(nombre: 'Juan', edad: 20, profesiones: ['Programador', 'Diseñador']);
                userBloc.add(ActivateUser(user: newUser));
              },
              child: const Text('Establecer Usuario', style: TextStyle(color: Colors.white))),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userBloc.add(ChangeUserAge(edad: 12));
              },
              child: const Text('Cambiar Edad', style: TextStyle(color: Colors.white))),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userBloc.add(AddProfession(profession: 'Desarrollador'));
              },
              child: const Text('Añadir Profesion', style: TextStyle(color: Colors.white))),
        ],
      )),
    );
  }
}
