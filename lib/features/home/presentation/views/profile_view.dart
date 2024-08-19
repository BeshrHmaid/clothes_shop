import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_styles.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_bottom_app_bar.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/profile_view_body.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int _selectedIndex = 4;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:const ProfileViewBody(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('profile' , style: AppStyles.textStyle16.copyWith(fontFamily: 'Montserrat',fontWeight: FontWeight.w900),),
          const SizedBox(width: 56,)
        ],
      ),),
      bottomNavigationBar: CustomBottomAppBar(
        selectedIndex: _selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
