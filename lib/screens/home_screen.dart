import 'package:flutter/material.dart';
import 'tabs/home_tab.dart'; // Your Home Tab content
import 'tabs/emergency_assist_tab.dart'; // Emergency Assist Tab
import 'tabs/garage_tab.dart'; // Garage Tab

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0, // Remove shadow for a clean flat look
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red, // Red background for menu
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.white), // White menu icon
              onPressed: () {
                // Menu action
              },
            ),
          ),
        ),
        centerTitle: true, // Centering the title
        title: Text(
          'Easy Rider',
          style: TextStyle(
            fontSize: 24, // Larger title font size for better visibility
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red, // Red background for notification
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              child: IconButton(
                icon: Icon(Icons.notifications, color: Colors.white), // White notification icon
                onPressed: () {
                  // Notification action
                },
              ),
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.red,
          indicatorWeight: 4.0, // Increased thickness for the selected tab indicator
          labelColor: Colors.red, // Red color for selected tab text
          unselectedLabelColor: Colors.white, // White for unselected tabs
          labelStyle: TextStyle(
            fontSize: 16, // Larger text size for tabs
            fontWeight: FontWeight.bold, // Bold for the selected tab
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 14, // Smaller text for unselected tabs
          ),
          tabs: [
            Tab(
              text: "Home",
            ),
            Tab(
              text: "Emergency Assist",
            ),
            Tab(
              text: "My Garage",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomeTab(), // Home screen content
          EmergencyAssistTab(), // Emergency Assist screen content
          GarageTab(), // My Garage screen content
        ],
      ),
    );
  }
}
