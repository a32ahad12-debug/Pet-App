import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/app_colors.dart';
import 'package:my_flutter_app/screens/home/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: [

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Home\nFor Pet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const Spacer(),

            /// Replace later with actual image
            const Icon(
              Icons.pets,
              size: 220,
              color: Colors.white,
            ),

            const Spacer(),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(60),
                ),
              ),
              child: Column(
                children: [

                  const Text(
                    "Take Care of\nYour Lovely Pet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Make your bonding relationship\nbetween Pets & humans.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 35),

                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(40),
                        ),
                      ),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                            const HomeScreen(),
                          ),
                        );
                      },

                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}