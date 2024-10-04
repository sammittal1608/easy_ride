import 'package:flutter/material.dart';

class EmergencyAssistTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black, // Background color set to black
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Emergency Assist Title
            Text(
              'Emergency Assist',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24, // Adjust font size
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Emergency Assist Description
            Text(
              '''Being on the road is a risk no matter what you drive. 
Be safe not sorry! Meet your (VEV) Virtual Emergency Vault in case of an accident. 
We believe in being safe on the road and building tools like this that could save your life. 
Your family can also use this to gain access to your life documents should something happen.''',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14, // Adjust font size for description
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),

            // Call Emergency Button with Yellow Border
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellow, // Yellow border for the button
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Action for calling emergency
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Red background color
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'CALL EMERGENCY!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16, // Adjust font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),

            // Update Profile Button
            ElevatedButton(
              onPressed: () {
                // Action for updating profile
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Red background color
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Update profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, // Adjust font size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40), // Space between buttons and profile section

            // Add Profile Section Below Update Profile Button
            _buildProfileSection(),

            SizedBox(height: 40), // Space between profile and document section

            // Critical Document Access Section
            _buildCriticalDocumentAccess(),
          ],
        ),
      ),
    );
  }

  // Helper method to build the profile section
  Widget _buildProfileSection() {
    final String userName = "userName"; // Replace with actual data
    final String fullName = "John Doe";
    final String location = "Cape Town, Western Cape";
    final String nationality = "South African";
    final String phoneNumber = "123-456-7890";
    final String medicalAidName = "Best Health Medical";
    final String medicalAidNumber = "MED123456789";
    final String kinName = "Jane Doe";
    final String kinNumber = "123-456-7890";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Username
        Text(
          userName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),

        // Profile Picture
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/user_pic.png'), // Updated to use 'user_pic.png'
        ),
        SizedBox(height: 20),

        // Basic Details Header
        Text(
          'Basic details:',
          style: TextStyle(
            color: Colors.red,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),

        // Basic Details Content
        _buildProfileDetail('Full name', fullName),
        _buildProfileDetail('From', location),
        _buildProfileDetail('Nationality', nationality),
        _buildProfileDetail('Phone number', phoneNumber),

        SizedBox(height: 20),

        // Medical Aid Details Header
        Text(
          'Medical Aid Details:',
          style: TextStyle(
            color: Colors.red,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),

        // Medical Aid Details Content
        _buildProfileDetail('Medical aid', medicalAidName),
        _buildProfileDetail('Medical aid number', medicalAidNumber),

        SizedBox(height: 20),

        // Next of Kin Header
        Text(
          'Next of Kin:',
          style: TextStyle(
            color: Colors.red,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),

        // Next of Kin Content
        _buildProfileDetail('Next of Kin name', kinName),
        _buildProfileDetail('Next of Kin number', kinNumber),
      ],
    );
  }

  // Helper method to build critical document access buttons
  Widget _buildCriticalDocumentAccess() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Critical Document Header
        Text(
          'Critical document access:',
          style: TextStyle(
            color: Colors.red,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),

        // Document Access Buttons
        _buildDocumentButton('Drivers license'),
        _buildDocumentButton('Medical aid card'),
        _buildDocumentButton('Insurance details'),
        _buildDocumentButton('Road side assist'),
        _buildDocumentButton('Will and testament'),
        _buildDocumentButton('Life cover details'),
      ],
    );
  }

  // Helper function to create the document access buttons
  Widget _buildDocumentButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          // Action for each document access
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Helper function to create profile detail rows
  Widget _buildProfileDetail(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$label: ',
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
}
