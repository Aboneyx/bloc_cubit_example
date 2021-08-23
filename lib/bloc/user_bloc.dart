//
// import 'package:bloc_cubit_example/bloc/user_event.dart';
// import 'package:bloc_cubit_example/bloc/user_state.dart';
// import 'package:bloc_cubit_example/models/user.dart';
// import 'package:bloc_cubit_example/services/user_repository.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class UserBloc extends Bloc<UserEvent, UserState> {
//   final UsersRepository usersRepository;
//   UserBloc(this.usersRepository) : super(UserEmptyState());
//
//   @override
//   Stream<UserState> mapEventToState(UserEvent event) async* {
//     if (event is UserLoadEvent) {
//       yield UserLoadingState();
//       try {
//         final List<User> _loadedUserList = await usersRepository.getAllUsers();
//         yield UserLoadedState(loadedUser: _loadedUserList);
//       } catch (_) {
//         yield UserErrorState();
//       }
//     } else if (event is UserClearEvent) {
//       yield UserEmptyState();
//     }
//   }
//
// }
//
// // class UserBloc extends Bloc<UserEvent, UserState> {
// //   final UsersRepository usersRepository;
// //   UserBloc({required this.usersRepository});
// //
// //   @override
// //   UserState get initialState => UserEmptyState();
// //
// //   @override
// //   Stream<UserState> mapEventToState(UserEvent event) async* {
// //     if (event is UserLoadEvent) {
// //       yield UserLoadingState();
// //       try {
// //         final List<User> _loadedUserList = await usersRepository.getAllUsers();
// //         yield UserLoadedState(loadedUser: _loadedUserList);
// //       } catch (_) {
// //         yield UserErrorState();
// //       }
// //     } else if (event is UserClearEvent) {
// //       yield UserEmptyState();
// //     }
// //   }
// //
// // }