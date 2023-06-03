import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';
import '../theme/theme_data.dart';
import '../widgets/attraction_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change theme with provider"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().changeCurrentTheme();
            },
            icon: context.watch<ThemeProvider>().currentTheme == lightTheme
                ? const Icon(
                    Icons.dark_mode,
                    color: Colors.black54,
                  )
                : const Icon(
                    Icons.light_mode_outlined,
                    color: Colors.yellow,
                  ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            AttractionCard(
                name: "Lorem",
                detail:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                img: "assets/images/img004.jpg",
                country: "Ipsum"),
            SizedBox(
              height: 10,
            ),
            AttractionCard(
                name: "Lorem",
                detail:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                img: "assets/images/img002.jpg",
                country: "Ipsum"),
            SizedBox(
              height: 10,
            ),
            AttractionCard(
                name: "Lorem",
                detail:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                img: "assets/images/img003.jpg",
                country: "Ipsum"),
            SizedBox(
              height: 10,
            ),
            AttractionCard(
                name: "Lorem",
                detail:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                img: "assets/images/img001.jpg",
                country: "Ipsum"),
          ],
        ),
      ),
    );
  }
}
