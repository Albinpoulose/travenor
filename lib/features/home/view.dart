import 'package:flutter/material.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image (Full screen)
          SizedBox.expand(
            child: Image.asset(
              'assets/view/view_background.png', // Replace with your image
              fit: BoxFit.cover,
            ),
          ),

          // Top App Bar
          Positioned(
            top: 40,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back Button
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.3),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const Text(
                  "View",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 40), // Spacer
              ],
            ),
          ),

          // Floating Tags - La-Hotel
          Positioned(
            top: 120,
            right: 16,
            child: Column(
              children: [
                _buildTagCard(
                  title: 'La-Hotel',
                  distance: '2.09 mi',
                  imagePath: 'assets/view/hotel_thumb.png',
                ),
                const SizedBox(height: 4),
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.black.withOpacity(0.5),
                ),
                const CircleAvatar(radius: 6, backgroundColor: Colors.blue),
              ],
            ),
          ),

          // Floating Tags - Lemon Garden
          Positioned(
            top: 220,
            left: 16,
            child: Column(
              children: [
                _buildTagCard(
                  title: 'Lemon Garden',
                  distance: '2.09 mi',
                  imagePath: 'assets/view/lemon_thumb.png',
                ),
                const SizedBox(height: 4),
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.black.withOpacity(0.5),
                ),
                const CircleAvatar(radius: 6, backgroundColor: Colors.blue),
              ],
            ),
          ),

          // Bottom Card
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title + Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Niladri Reservoir",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          SizedBox(width: 4),
                          Text("4.7", style: TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Location and Time
                  Row(
                    children: const [
                      Icon(Icons.location_on_outlined,
                          size: 18, color: Colors.white70),
                      SizedBox(width: 4),
                      Text("Tekergat, Sunamgnj",
                          style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.access_time, size: 18, color: Colors.white70),
                      SizedBox(width: 4),
                      Text("45 Minutes",
                          style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                  const SizedBox(height: 08),

                  // Avatar Stack + Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Avatar stack
                      Stack(
                        children: const [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(
                                'assets/view/avatar4.png'), // Replace
                          ),
                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage:
                                  AssetImage('assets/view/avatar5.png'),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage:
                                  AssetImage('assets/view/avatar6.png'),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.blue,
                              child: Text(
                                "+50",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // See on map button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () {
                          // Navigate to map
                        },
                        child: const Text(
                          "See On The Map",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTagCard({
    required String title,
    required String distance,
    required String imagePath,
  }) {
    return Container(
      padding: const EdgeInsets.all(6),
      width: 130,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 36,
              height: 36,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text(distance,
                    style: const TextStyle(
                        color: Colors.white70, fontSize: 12)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
