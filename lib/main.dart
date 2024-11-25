// ignore_for_file: library_private_types_in_public_api, unused_field

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:potfolio/fontconstant.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderSection(),
            AboutMeSection(),
            PortfolioSection(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

// Header Section
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/giphy.gif'),
            fit: BoxFit.cover,
            opacity: 0.3),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Animated Text
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Hello, Welcome',
                      textStyle: FontConstant.styleBold(
                        fontSize: 28,
                        color: const Color(0xffFFb300),
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                    TypewriterAnimatedText(
                      'I am a Developer',
                      textStyle: FontConstant.styleBold(
                        fontSize: 28,
                        color: const Color(0xffFFb300),
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                    TypewriterAnimatedText(
                      'I am a Content Creator',
                      textStyle: FontConstant.styleBold(
                        fontSize: 28,
                        color: const Color(0xffFFb300),
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                    TypewriterAnimatedText(
                      'I am an Explorer',
                      textStyle: FontConstant.styleBold(
                        fontSize: 28,
                        color: const Color(0xffFFb300),
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  repeatForever: true,
                  pause: const Duration(seconds: 1),
                ),
                Text(
                  "I'm Anadi Singh",
                  style: FontConstant.styleBold(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 45),
                Text(
                  "A passionate Flutter developer with a strong focus on creating high-performance, cross-platform mobile applications. I specialize in crafting intuitive user experiences and scalable solutions using the Dart programming language and Flutter framework.",
                  style: FontConstant.styleMedium(
                      fontSize: 18, color: Colors.white),
                ),
                const SizedBox(height: 80),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFb300),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                  ).copyWith(
                    overlayColor:
                        WidgetStateProperty.all(Colors.black.withOpacity(0.1)),
                  ),
                  child: Text(
                    "Get in Touch",
                    style: FontConstant.styleMedium(
                        fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width < 600 ? 120 : 200,
                  backgroundImage: const AssetImage('assets/2.jpg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// About Me Section
class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFFb300),
        image: DecorationImage(
            image: AssetImage('assets/back2.png'),
            fit: BoxFit.fill,
            opacity: 0.3),
      ),
      padding: const EdgeInsets.all(40),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Me in a Nutshell",
                    style: FontConstant.styleBold(
                        fontSize: 34, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                    textAlign: TextAlign.start,
                    "I’m a passionate Flutter developer and YouTube content creator with a talent for building high-performance, user-centric mobile apps. I specialize in transforming ideas into seamless cross-platform experiences by combining clean, scalable code with stunning, responsive designs. My expertise lies in delivering intuitive solutions that bridge creativity and functionality. When I’m not coding, I’m sharing my journey and gaming adventures on YouTube or exploring the latest tech trends to stay ahead of the curve. Let’s collaborate to bring your vision to life with innovation, precision, and creativity. Together, we can craft something truly extraordinary!",
                    style: FontConstant.styleMedium(
                        fontSize: 18, color: Colors.black87)),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        _launchURL(
                            'https://www.linkedin.com/in/anadi-singh-ba431a213/');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(),
                      ),
                      child: Image.asset(
                        'assets/linkd.png',
                        scale: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _launchURL('https://github.com/Anadishubh');
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(),
                      ),
                      child: Image.asset(
                        'assets/git.png',
                        scale: 10,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _launchURL('https://www.instagram.com/_anadi.singh_/');
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(),
                      ),
                      child: Image.asset(
                        'assets/insta.png',
                        scale: 12,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _launchURL('https://www.youtube.com/@KennYuuma');
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(),
                      ),
                      child: Image.asset(
                        'assets/youtube.png',
                        scale: 10,
                        color: Colors.black,
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

// Portfolio Section
class PortfolioSection extends StatefulWidget {
  const PortfolioSection({super.key});

  @override
  _PortfolioSectionState createState() => _PortfolioSectionState();
}

class _PortfolioSectionState extends State<PortfolioSection> {
  final List<Map<String, dynamic>> portfolioItems = [
    {
      'image': 'assets/aci.png',
      'title': 'Adhar Repair',
      'description': [
        'Simple and efficient Flutter-based app for wall repair and maintenance',
        'Allows users to report issues like cracks, water leakage, or paint damage',
        'Submits details to repair professionals for quick assistance',
        'Features a clean interface with responsive design for all devices',
        'Built with GetX for efficient input handling and data sharing',
        'Practical and user-friendly solution for fast issue resolution'
      ]
    },
    {
      'image': 'assets/bms.jpg',
      'title': 'Book My Seva',
      'description': [
        'Convenient Flutter app for bus travel planning and booking',
        'Search routes, view schedules, select seats, and make secure payments',
        'User-friendly design with seamless navigation between features',
        'Responsive layouts ensure a smooth experience on all devices',
        'Powered by GetX for fast and reliable performance',
        'Securely manages user data and transactions'
      ]
    },
    {
      'image': 'assets/doctor.png',
      'title': 'Emotional',
      'description': [
        'User-friendly Flutter app to help patients connect with doctors',
        'Browse doctor profiles, book appointments, and manage health records',
        'Clean interface and responsive design for smooth navigation',
        'Powered by GetX for fast performance and reliable interactions',
        'Includes features like appointment scheduling and reminders',
        'Protects user information with secure data handling'
      ]
    },
    {
      'image': 'assets/devote.png',
      'title': 'Devotee',
      'description': [
        'Intuitive Flutter app designed to help users find life partners',
        'Create profiles, set preferences, and view potential matches',
        'Communicate securely via in-app messaging',
        'Advanced filters and customizable preferences for better matching',
        'Powered by GetX for seamless performance',
        'Responsive design ensures a smooth experience across all devices'
      ]
    },
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600; // Mobile condition

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back3.png'),
            fit: BoxFit.fill,
            opacity: 0.3),
      ),
      padding: EdgeInsets.all(isMobile ? 20 : 40), // Adjust padding for mobile
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Journey so Far..",
              style: FontConstant.styleBold(
                fontSize: isMobile ? 28 : 34, // Adjust font size for mobile
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 30),
          CarouselSlider(
            items: portfolioItems.map((item) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(isMobile ? 10 : 20), // Padding adjustment
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: isMobile ? 40 : 80), // Adjust top padding
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                item['title']!,
                                style: FontConstant.styleBlack(
                                  fontSize: isMobile ? 24 : 34, // Adjust title font size
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            Expanded(
                              child: ListView.builder(
                                itemCount: (item['description'] as List).length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "• ",
                                          style: FontConstant.styleMedium(
                                            fontSize: isMobile ? 16 : 18, // Adjust bullet size
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            item['description'][index],
                                            style: TextStyle(
                                              fontSize: isMobile ? 14 : 16, // Adjust description text size
                                              color: Colors.black87,
                                              height: 1.5,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: isMobile ? 60 : 108), // Adjust button padding
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 12,
                                  ),
                                ),
                                child: Text(
                                  "Know More",
                                  style: FontConstant.styleMedium(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(item['image']!),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 1.5,
              viewportFraction: isMobile ? 0.9 : 0.8, // Adjust viewport for mobile
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Contact Section
class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            image: AssetImage('assets/down.gif'),
            fit: BoxFit.cover,
            opacity: 0.3),
      ),
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Row(
            children: [
              // Contact Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Contact Me",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Email: anadisingh3217@gmail.com",
                      style: FontConstant.styleMedium(
                          fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Phone no: 8868014076",
                      style: FontConstant.styleMedium(
                          fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              // Contact Form
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Your Message",
                        filled: true,
                        fillColor: Colors.white10,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      maxLines: 5,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 15,
                        ),
                      ),
                      child: const Text(
                        "Send Message",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
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
    );
  }
}

// Footer Section
class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          "© 2024 My Portfolio. All Rights Reserved to Anadi Singh",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
