import 'package:flutter/material.dart';

class GarageTab extends StatelessWidget {
  final String bikeName = "Ducati"; // Example bike name, can be changed dynamically
  final String bikeMood = "Zaney"; // Example mood, can be changed dynamically

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // My Garage Title
            Text(
              'My garage',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // My Bike's Name
            Text(
              'My bike\'s name: $bikeName',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Bike Image (bike_Home.png)
            Image.asset(
              'assets/images/bike_Home.png', // Replace with actual image path
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SizedBox(height: 20),

            // Emoji Face (zany_face.png)
            GestureDetector(
              onTap: () {
                // Handle mood change on emoji tap
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/zany_face.png'), // Replace with actual image path
              ),
            ),
            SizedBox(height: 20),

            // Bike Mood
            Text(
              'Your bike\'s mood today: "$bikeMood"',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),

            // Change Mood Text
            GestureDetector(
              onTap: () {
                // Action for changing mood
              },
              child: Text(
                '[click emoji to change mood]',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),

            // Change Mood Button
            ElevatedButton(
              onPressed: () {
                // Action to change mood
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Change mood',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Bike details section (added after change mood)
            SizedBox(height: 40),
            _buildBikeDetails(),
          ],
        ),
      ),
    );
  }

  // Helper method to build the bike details section
  Widget _buildBikeDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Bike details header
        Text(
          'Bike details:',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),

        // Bike information
        _buildBikeDetailRow('Bike model:', ''),
        _buildBikeDetailRow('Bike engine size:', ''),
        _buildBikeDetailRow('Bike colour:', ''),
        _buildBikeDetailRow('Purchased from:', ''),
        _buildBikeDetailRow('Purchase price:', ''),

        SizedBox(height: 20),

        // Proof of Purchase Button
        _buildRedButton('Copy of proof of purchase'),

        SizedBox(height: 20),

        // Warrenty Details
        _buildBikeDetailRow('Warrenty date ends:', ''),

        SizedBox(height: 20),

        // Copy of Warrenty Button
        _buildRedButton('Copy of warrenty'),

        SizedBox(height: 20),

        // Bike Gear Log Header
        Text(
          'Bike gear log:',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 10),

        // Gear log details
        _buildBikeDetailRow('Helmet name:', ''),
        _buildBikeDetailRow('Purchased from:', ''),
        _buildBikeDetailRow('Date of purchase:', ''),
        _buildBikeDetailRow('Total cost:', ''),

        SizedBox(height: 20),

        // Copy of Warrenty Slip Button
        _buildRedButton('Copy of warrenty/slip'),
      ],
    );
  }

  // Helper method to build bike detail rows
  Widget _buildBikeDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$label ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create red buttons
  Widget _buildRedButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // Button action
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
