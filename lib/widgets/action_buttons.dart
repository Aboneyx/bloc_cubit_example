import 'package:bloc_cubit_example/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    final UserCubit userCubit = context.read<UserCubit>();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(Colors.green),
          ),
          child: const Text('Load'),
          onPressed: () {
            userCubit.fetchUsers();
            //userBloc.add(UserLoadEvent());
          },
        ),
        const SizedBox(width: 8.0),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(Colors.red),
          ),
          child: const Text('Clear'),
          onPressed: () {
            userCubit.clearUsers();
            // userBloc.add(UserClearEvent());
          },
        ),
      ],
    );
  }
}