import 'package:flutter/material.dart';
import 'package:travenor/features/home/view.dart'; // Adjust the import to your actual view screen file
class DestinationDetailsScreen extends StatelessWidget {
  const DestinationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Image Header with App Bar icons
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  child: Image.asset(
                    'assets/details/Home.png', // Replace with your image
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 8,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const Positioned(
                  top: 16,
                  right: 8,
                  child: Icon(Icons.bookmark_border, color: Colors.white),
                ),
                Positioned(
                  top: 16, // Adjust spacing as needed
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Main content (card-like section)
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title, Location & Avatar
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Niladri Reservoir",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Tekergat, Sunamgnj",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/details/avatar1.png',
                            ), // Replace
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Location, Rating, Price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 18,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Tekergat",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: 18, color: Colors.orange),
                              SizedBox(width: 4),
                              Text(
                                "4.7 (2498)",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Text(
                            "\$59/Person",
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Image Gallery Row
                      SizedBox(
                        height: 60,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildImageItem('assets/details/detailimage4.png'),
                            _buildImageItem('assets/details/detailimage3.png'),
                            _buildImageItem('assets/details/detailimage2.png'),
                            _buildImageItem('assets/details/detailimage1.png'),
                            _buildMoreImages(
                              '+16',
                              'assets/details/detailimage0.png',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),

                      // About Destination
                      const Text(
                        "About Destination",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended hotel rooms, transportation, Have you ever been on holiday to the Greek ETC... ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        "Read More",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Book Now button
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlueAccent,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                             onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ViewScreen()),
        );
      },
                            child: const Text(
                              "Book Now",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageItem(String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildMoreImages(String label, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black.withOpacity(
            0.4,
          ), // Dark overlay for text visibility
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
