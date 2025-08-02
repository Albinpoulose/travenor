import 'package:flutter/material.dart';
import 'package:travenor/features/profile/profile.dart';
import 'package:travenor/features/home/detailscreen.dart';
import 'package:travenor/features/home/schedule.dart'; // ✅ Add this

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ✅ Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: const Icon(Icons.home), onPressed: () {}),
              IconButton(
                icon: const Icon(Icons.calendar_today),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScheduleScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(width: 40), // space for FAB
              IconButton(icon: const Icon(Icons.message), onPressed: () {}),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.search),
        onPressed: () {
          // Handle search
        },
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔝 Top Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          backgroundImage:
                              AssetImage('assets/homescreen/avatar.png'),
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Leonardo",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.notifications_none),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // 📝 Title
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 1.4,
                  ),
                  children: [
                    TextSpan(
                      text: "Explore the\n",
                      style:
                          TextStyle(fontWeight: FontWeight.w200, fontSize: 39),
                    ),
                    TextSpan(
                      text: "Beautiful ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 39),
                    ),
                    TextSpan(
                      text: "world!",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.orange,
                        fontSize: 39,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // 📌 Destination Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Best Destination",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("View all", style: TextStyle(color: Colors.orange)),
                ],
              ),

              const SizedBox(height: 16),

              // 🌍 Horizontal Card List
              SizedBox(
                height: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DestinationDetailsScreen(),
                          ),
                        );
                      },
                      child: buildDestinationCard(
                        context: context,
                        imagePath: 'assets/homescreen/niladiri .png',
                        name: 'Niladiri Reservoir',
                        location: 'Tekergat, Sunamganj',
                      ),
                    ),
                    const SizedBox(width: 6),
                    buildDestinationCard(
                      context: context,
                      imagePath: 'assets/homescreen/darma.png',
                      name: 'Darma',
                      location: 'Darma, Bandarban',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // 🧱 Destination Card Builder
  Widget buildDestinationCard({
    required BuildContext context,
    required String imagePath,
    required String name,
    required String location,
  }) {
    return Container(
      width: 260,
      height: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imagePath,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    const SizedBox(width: 4),
                    const Text(
                      "4.7",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 60,
                      height: 20,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 0,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(
                                  'assets/homescreen/user1.png'),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(
                                  'assets/homescreen/user2 .png'),
                            ),
                          ),
                          Positioned(
                            left: 28,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(
                                  'assets/homescreen/user3.png'),
                            ),
                          ),
                          Positioned(
                            left: 42,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.blue.shade100,
                              child: const Text(
                                "+50",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
