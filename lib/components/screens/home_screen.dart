import 'package:class_one/responsive/desktop_body.dart';
import 'package:class_one/responsive/mobile_body.dart';
import 'package:class_one/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
          desktopBody: DesktopBody(), mobileBody: MobileBody()),
    );
  }
}
