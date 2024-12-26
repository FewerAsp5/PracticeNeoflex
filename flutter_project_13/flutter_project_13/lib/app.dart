import 'package:flutter/material.dart';
import 'package:flutter_project_13/user.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final birthday = DateTime.now();

    final UserModel user1 = UserModel(
      login: 'user',
      firstName: 'firstName',
      lastName: 'lastName',
      birthday: birthday
    );

    final user2 = UserModel(
      login: 'user',
      firstName: 'firstName',
       lastName: 'lastName',
       birthday: birthday
       );

       print(user1 == user2);
       print(UserModel.fromJson(user1.toJson()));

       return Scaffold(
        body: Center(
          child: Text(user2.login),
       ),
    );
  }
}