import 'package:flutter/material.dart';
class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final List<Map<String, dynamic>> contactItems = [
    {
      'icon': Icons.home,
      'label': 'Location',
      'info': 'Dhaka, Bangladesh',
      'url': 'https://www.google.com/maps/search/?api=1&query=Dhaka,Bangladesh',
    },
    {
      'icon': Icons.phone,
      'label': 'Phone',
      'info': '+8801625023453',
      'url': 'tel:+8801625023453',
    },
    {
      'icon': Icons.email,
      'label': 'Email',
      'info': 'shaonroy54@gmail.com',
      'url': 'https://myaccount.google.com/?hl=en&utm_source=OGB&utm_medium=act&gar=WzEyMF0',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: contactItems.length,
        itemBuilder: (context, index) {
          final item = contactItems[index];
          return contactContainer(
            icon: item['icon'],
            label: item['label'],
            info: item['info'],
            screenWidth: screenWidth,
          );
        },
      ),
    );
  }

  Widget contactContainer({
    required IconData icon,
    required String label,
    required String info,
    required double screenWidth,
  }) {
    return GestureDetector(
      onTap: ()  {

      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(16),
        width: screenWidth < 600 ? screenWidth * 0.8 : 400,
        decoration: BoxDecoration(
          color: Colors.grey.shade600,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.red, size: 50),
            const SizedBox(height: 10),
            Text(
              "$label\n$info",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
