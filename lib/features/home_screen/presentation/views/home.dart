import 'package:flutter/material.dart';
import 'package:social_academy/core/utils/constants.dart';
import 'package:social_academy/features/home_screen/presentation/views/widgets/appbar_widget.dart';
import 'package:social_academy/features/home_screen/presentation/views/widgets/drawer_widget.dart';
import 'package:social_academy/features/home_screen/presentation/views/widgets/floating_action_button_widget.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondaryColor,
        floatingActionButton: const FloatingActionButtonWidget(),
        drawer: const DrawerWidget(),
        // appBar: AppbarWidget(text: 'Socail Academy',),
        body: ListView(children: [Text("sanaa"),],

        ));

    // ListView(
    //  children: snapshot.data!.docs.map((DocumentSnapshot document) {
    //    Map<String, dynamic> data =
    //        document.data()! as Map<String, dynamic>;
    //    return InformationOfHomeScreenPost(
    //      dataFromDB: data,
  }
}
