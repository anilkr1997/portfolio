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
                  'Professional with 4+ years of experience in mobile app development using Java, Kotlin, and Flutter. Skilled in requirement gathering, design, implementation, and bug fixing.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelSmall,
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
                    color: Theme.of(context).primaryColor,
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
