// lib/screens/home_tab.dart
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../components/feature_tile.dart';


class HomeTab extends StatelessWidget {
  final PageController _pageController = PageController();
  final List<String> bikeImages = [
    'assets/images/bike.png',
    'assets/images/bike.png',
    'assets/images/bike.png',
    'assets/images/bike.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black, // Background set to black
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Centering the text
                children: [
                  // Welcome Text (Centered and resized)
                  Text(
                    'Welcome to Easy Rider',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22, // Reduced font size to better match the design
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Join our community of motorbike enthusiasts from all walks of life in South Africa.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14, // Adjust font size to match
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Try premium from only R39/Month.',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            // Image with Button inside
            Stack(
              alignment: Alignment.center, // Center button inside the image
              children: [
                Container(
                  height: 200,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: bikeImages.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        bikeImages[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 20, // Position button inside the image
                  child: ElevatedButton(
                    onPressed: () {
                      // Action for finding a bike
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 5,
                    ),
                    child: Text(
                      'Find your first bike',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14, // Make text smaller to match design
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Carousel indicators closer to image
            SizedBox(height: 8), // Reduced space between image and indicators
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: bikeImages.length,
                effect: WormEffect( // Round indicators
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Colors.red,
                  dotColor: Colors.white70,
                ),
              ),
            ),
            // Free Tier Section (centered and styled)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Centering the Free Tier text
                children: [
                  // Free Tier Section
                  SizedBox(height: 24),
                  Text(
                    'Free Tier:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Enjoy the freedom of using basic features for free. Check out the VIP ALL ACCESS.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14, // Adjusted font size for better readability
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                  SizedBox(height: 24),
                  // Use the FeatureTile widget for Free Tier
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeatureTile(title: 'Open Magazine'),
                      FeatureTile(title: 'Live Map'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeatureTile(title: 'Charities'),
                      FeatureTile(title: 'Open Podcast'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeatureTile(title: 'Funny Memes'),
                      FeatureTile(title: 'Safety Tips'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeatureTile(title: 'Events'),
                      FeatureTile(title: 'EasyRider Streams'),
                    ],
                  ),
                  // Premium Tier Section
                  SizedBox(height: 32),
                  Text(
                    'Premium Tier:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Enjoy the freedom of using basic features for free. Check out the VIP ALL ACCESS.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24),
                  // Use the FeatureTile widget for Premium Tier
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeatureTile(title: 'Breakfast un routes'),
                      FeatureTile(title: 'VIP parking at events'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
