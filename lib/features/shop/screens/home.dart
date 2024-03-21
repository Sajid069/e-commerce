import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom_folder/containers/primary_header_container.dart';
import 'package:shop/features/shop/screens/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header -- Tutorial[section #3, video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- Appbar 
                  THomeAppBar(),

                  // -- Searchbar

                  // -- Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
