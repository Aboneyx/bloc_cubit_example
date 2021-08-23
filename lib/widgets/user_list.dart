import 'package:bloc_cubit_example/cubit/user_cubit.dart';
import 'package:bloc_cubit_example/cubit/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserEmptyState) {
          return const Center(
            child: Text(
              'No data received. Press button "Load"',
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }

        if (state is UserLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is UserLoadedState) {
          return ListView.builder(
            itemCount: state.loadedUser.length,
            itemBuilder: (context, index) => Container(
              color: index % 2 == 0 ? Colors.white : Colors.blue[50],
              child: ListTile(
                leading: Text(
                  'ID: ${state.loadedUser[index].id}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Column(
                  children: <Widget>[
                    Text(
                      '${state.loadedUser[index].name}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Email: ${state.loadedUser[index].email}',
                          style: const TextStyle(fontStyle: FontStyle.italic),
                        ),
                        Text(
                          'Phone: ${state.loadedUser[index].phone}',
                          style: const TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        if (state is UserErrorState) {
          return const Center(
            child: Text(
              'Error fetching users',
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}