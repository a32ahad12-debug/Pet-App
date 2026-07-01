import 'package:flutter/material.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffFF9955),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [

          /// Decorative Circles
          Positioned(
            top: -20,
            right: -20,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.08),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            bottom: -30,
            left: -30,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.06),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [

                /// Left Side
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text(
                        "Join The\nCommunity",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        "Connect with other\npet lovers.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          height: 1.3,
                        ),
                      ),

                      const Spacer(),

                      Container(
                        height: 42,
                        width: 115,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              "Join Now",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),

                            SizedBox(width: 6),

                            Icon(
                              Icons.arrow_forward,
                              size: 18,
                              color: Colors.black87,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(width: 5),

                /// Right Side Image
                SizedBox(
                  width: 105,
                  child: Image.asset(
                    "assets/images/pet.png",
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}