
import 'package:bloc_cubit_example/cubit/user_cubit.dart';
import 'package:bloc_cubit_example/services/user_repository.dart';
import 'package:bloc_cubit_example/widgets/action_buttons.dart';
import 'package:bloc_cubit_example/widgets/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final usersRepository = UsersRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>(
      create: (context) => UserCubit(usersRepository),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Users List'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            ActionButtons(),
            Expanded(child: UserList()),
          ],
        ),
      ),
    );
  }
}