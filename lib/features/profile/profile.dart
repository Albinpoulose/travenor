import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.black54),
                    onPressed: () {
                      // Navigate to edit screen
                    },
                  ),
                ],
              ),
            ),

            // Profile Image, Name, Email
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/avatar.png'), // Update with your image path
            ),
            const SizedBox(height: 10),
            const Text(
              'Leonardo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'leonardo@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Stats
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatColumn('Reward Points', '360'),
                  _buildStatColumn('Travel Trips', '238'),
                  _buildStatColumn('Bucket List', '473'),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Options List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  _ProfileTile(icon: Icons.person_outline, title: 'Profile'),
                  _ProfileTile(icon: Icons.bookmark_border, title: 'Bookmarked'),
                  _ProfileTile(icon: Icons.travel_explore_outlined, title: 'Previous Trips'),
                  _ProfileTile(icon: Icons.settings_outlined, title: 'Settings'),
                  _ProfileTile(icon: Icons.info_outline, title: 'Version'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ProfileTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: Icon(icon, color: Colors.grey[700]),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Add navigation or actions here
        },
      ),
    );
  }
}
