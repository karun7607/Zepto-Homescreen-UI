import 'package:flutter/material.dart';
import 'package:zepto/config/app_colors.dart';
import 'package:zepto/screens/zepto_body_screen.dart';
import '../widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3EBF7),
      appBar: customAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ZeptoBody(),
          ],
        ),
      ),
    );
  }
}
