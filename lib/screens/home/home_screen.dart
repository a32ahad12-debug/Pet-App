import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/community_card.dart';

import '/widgets/vet_card.dart';
import '/widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF5EF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Greeting
              const Text(
                "Hi Radit",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "Good Morning!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 25),

              /// Community Card
              const CommunityCard(),

              const SizedBox(height: 25),

              /// Category Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [

                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              /// Horizontal Categories
            SizedBox(
              height: 105,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [

                  CategoryCard(
                    icon: Icons.medical_services,
                    title: "Vet",
                    isSelected: true,
                  ),

                  CategoryCard(
                    icon: Icons.content_cut,
                    title: "Grooming",
                  ),

                  CategoryCard(
                    icon: Icons.pets,
                    title: "Foods",
                  ),

                  CategoryCard(
                    icon: Icons.sports_esports,
                    title: "Playing",
                  ),

                ],
              ),
            ),

              const SizedBox(height: 20),

              /// Vet Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [

                  Text(
                    "Nearby Veterinary",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 15),

              Expanded(
                child: ListView(
                  children: const [

                    VetCard(
                      image: "assets/images/vet1.png",
                      name: "Dr. Arlye Harlena",
                      speciality: "Veterinary Dentist",
                      rating: "4.9 (250 Reviews)",
                      distance: "1.4 km",
                    ),

                    VetCard(
                      image: "assets/images/vet2.png",
                      name: "Dr. Christina",
                      speciality: "General Veterinarian",
                      rating: "4.8 (190 Reviews)",
                      distance: "2.1 km",
                    ),

                  ],
                ),
              )

            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: 0,

        selectedItemColor: Colors.orange,

        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType.fixed,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),

        ],
      ),
    );
  }
}