import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, String> socialLinks = {
    'github': 'https://github.com/anilkr1997',
    'youtube': 'https://www.youtube.com/@mr.appbuilder',
    'medium': 'https://medium.com/@mr.appbuilder',
    'linkedin': 'https://www.linkedin.com/in/anil-kr-maurya-351a48283/',
    'stackoverflow': 'https://stackoverflow.com/users/13233792/anil-kr-maurya',
  };

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/profile_picture.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Anil Kumar Maurya',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'Android & Flutter Developer',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
              const SizedBox(height: 24),
              Container(
                width: 600,
                child: Text(
                  'I am an experienced Android App Developer with 5 years of expertise in mobile app development using Java, Kotlin, and Android SDK, along with 1.5 years of experience in Flutter and Dart hybrid app development. Specializing in building scalable, maintainable, and user-friendly applications, I have a deep understanding of Android architecture patterns like MVC, MVP, and MVVM. | Education: B.Tech in Computer Science and Engineering (2015 - 2019) from Dr. A.P.J Abdul Kalam Technical University, India | Core Java training from Ducat Noida | Android Development training from Stucorner Training and Development | Kotlin Masterclass Programming Course: Android Coding Bible from Udemy | Android & Firebase ML Kit in Java/Kotlin from Udemy | Dart Simplified: Beginners Guide from Udemy | Learn SQLite Database in Android from Udemy | Experience: Expertise in Java, Kotlin, Dart, Node.js, Android SDK, Flutter SDK, REST APIs, SOAP APIs, RxJava, Retrofit, Volley, Firebase | Storage: SQLite, Realm, Room Database, Datastore | UI/UX: Material Design Components, Android Jetpack Components (ViewModel, LiveData, Navigation, Coroutines) | Tools: Git, GitHub, Dagger, Hilt | Mapping: Google Maps SDK, ArcGIS Map and Service Integration | Payment Integration: PayU Money, Razorpay | Security: Proguard rule, SSL pinning | Testing: Unit Testing, UI Testing using Junit, Espresso | Collaborated with cross-functional teams, handled API integration, bug fixes, and improved application performance to ensure a seamless user experience.',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleSmall,

                ),
              ),

              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    icon: FontAwesomeIcons.github,
                    color: Colors.black,
                    onPressed: () => _launchURL(socialLinks['github']!),
                  ),
                  SocialIcon(
                    color: Colors.red,
                    icon: FontAwesomeIcons.youtube,
                    onPressed: () => _launchURL(socialLinks['youtube']!),
                  ),
                  SocialIcon(
                    color: Colors.black,
                    icon: FontAwesomeIcons.medium,
                    onPressed: () => _launchURL(socialLinks['medium']!),
                  ),
                  SocialIcon(
                    color: Colors.blue,
                    icon: FontAwesomeIcons.linkedin,
                    onPressed: () => _launchURL(socialLinks['linkedin']!),
                  ),
                  SocialIcon(
                    color: Colors.deepOrangeAccent,
                    icon: FontAwesomeIcons.stackOverflow,
                    onPressed: () => _launchURL(socialLinks['stackoverflow']!),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 class SocialIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color color;

  const SocialIcon({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(icon),
      onPressed: onPressed,
      iconSize: 30,
      color: color,
      splashRadius: 24,
    );
  }
}
