import 'package:flutter/material.dart';

class VetCard extends StatelessWidget {
  final String image;
  final String name;
  final String speciality;
  final String rating;
  final String distance;

  const VetCard({
    super.key,
    required this.image,
    required this.name,
    required this.speciality,
    required this.rating,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.15),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [

          /// Doctor Image Container
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: const Color(0xffFFE6D4),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const SizedBox(width: 15),

          /// Doctor Information
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  speciality,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [

                    const Icon(
                      Icons.star_rounded,
                      color: Color(0xffFF9F43),
                      size: 18,
                    ),

                    const SizedBox(width: 4),

                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(width: 18),

                    const Icon(
                      Icons.location_on,
                      color: Color(0xffFF9F43),
                      size: 18,
                    ),

                    const SizedBox(width: 4),

                    Text(
                      distance,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          const SizedBox(width: 10),

          /// Arrow Button
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
              color: Color(0xffFF9F43),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}