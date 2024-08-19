import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xfff9f9f9),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        hintStyle: AppStyles.textStyle12.copyWith(color: Color(0xff626262) , fontWeight: FontWeight.w700),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 13,
            color: Color(0xff626262),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide:const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(
        10,
      ),
    );
  }
}
