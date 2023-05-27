
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_academy/features/login/presentation/login_screen.dart';
import 'package:social_academy/features/register/register_screen.dart';
part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int bottomNavIndex = 4;
  bool drawerIsOpen = false;

  List<Widget> bottomNavScreens = [
    //FIVE BOTTOM NAV ITEMS
    //0
    const LoginScreen(),

    //1
    const RegisterView(),
    //2
    // const HomeScreen(),
    // //3
    // const MyOrdersScreen(),
    // //4
    // const HomeScreen(),
    // //SIX DRID ITEMS
    // //5
    // const RequestVacationScreen(),
    // //6
    // const RequestDeptScreen(),
    // //7
    // const RequestPermissinScreen(),
    // //8
    // const StatusRequest(),
    // //9
    // const EmployeeProfileFormScreenStep1(),
    //
    // //10
    // const PaymentPermissionScreen(),
    // //11
    // const EmployeeProfileFormScreenStep2(),
    //
    // //NEW MESSEGE INDEX
    // //12
    // const NewMessegeScreen(),
    // //13
    // const DataTableView(),
    // //14
    //
    // const ButtonSheet(),

    // //15
    //
    // const FollowingRequestScreen(),
    // //16
    // const ChangeBankAccountScreenStep1(),
    // //17
    // const ChangeBankAccountScreenStep2(),
  ];

  Widget get selectedBottomNavScreen => bottomNavScreens[bottomNavIndex];

  ListQueue<int> navigationQueue = ListQueue();

  void updateBottomNavIndex(int value) {
    emit(BottomNavInitial());
    bottomNavIndex = value;
    emit(BottomNavIsChanging());
  }

  void changeDrawerState(bool value) {
    emit(BottomNavInitial());
    drawerIsOpen = value;
    emit(DrawerState());
  }
}
