import 'package:flutter/material.dart';
import 'package:forgot/app_colors.dart';

class MenuItemsScreen extends StatefulWidget {
  final int tableNumber;
  const MenuItemsScreen({super.key, required this.tableNumber});

  @override
  State<MenuItemsScreen> createState() => _MenuItemsScreenState();
}

class _MenuItemsScreenState extends State<MenuItemsScreen> {
  final List<Map<String, dynamic>> menuItems = [
    {
      'name': 'Burger',
      'price': 12.99,
      'image':
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=600&h=400&auto=format&fit=crop',
    },
    {
      'name': 'Pizza',
      'price': 15.50,
      'image':
          'https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=600&h=400&auto=format&fit=crop',
    },
    {
      'name': 'Pasta',
      'price': 10.75,
      'image':
          'https://images.unsplash.com/photo-1473093226795-af9932fe5856?q=80&w=600&h=400&auto=format&fit=crop',
    },
    {
      'name': 'Salad',
      'price': 8.25,
      'image':
          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?q=80&w=600&h=400&auto=format&fit=crop',
    },

    {
      'name': 'Soup',
      'price': 6.50,
      'image':
          'https://images.unsplash.com/photo-1547592166-23ac45744acd?q=80&w=600&h=400&auto=format&fit=crop',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.bgGradientStart, AppColors.bgGradientEnd],
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          title: Text(
            'Table ${widget.tableNumber} Menu',
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: AppColors.primary),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
            ),
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              final item = menuItems[index];
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          item['image'],
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item['name'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '₹${(item['price'] * 83.33).toStringAsFixed(2)}', // Convert USD to INR (approx. 1 USD = 83.33 INR)
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
