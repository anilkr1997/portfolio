import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  final String phoneNumber = '+918601500190';
  final String whatsappNumber = '918601500190'; // Remove the '+' for WhatsApp

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _openWhatsApp(String whatsappNumber) async {
    var whatsappUrl = "https://wa.me/$whatsappNumber";
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  void _handlePhoneTab(BuildContext context) async {
    if (Theme.of(context).platform == TargetPlatform.iOS ||
        Theme.of(context).platform == TargetPlatform.android) {
      await _makePhoneCall(phoneNumber);
    } else {
      await Clipboard.setData(ClipboardData(text: phoneNumber));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Phone number copied to clipboard')),
      );
    }
  }
//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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Get in Touch',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 32),
                ListTile(
                  leading: Icon(Icons.email, color: Theme.of(context).primaryColor),
                  title: const Text('Email'),
                  subtitle: const Text('akmourya1997@gmail.com'),
                ),
                const SizedBox(height: 16),
                ListTile(
                  leading: Icon(Icons.phone, color: Theme.of(context).primaryColor),
                  title: const Text('Phone'),
                  subtitle: InkWell(
                    onTap: () => _handlePhoneTab(context),
                    child: Text(
                      phoneNumber,
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.phone,color: Colors.white),
                      label: const Text('Call',style: TextStyle(color: Colors.white),),
                      onPressed: () => _handlePhoneTab(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.message,color: Colors.white,),
                      label: const Text('WhatsApp',style: TextStyle(color: Colors.white)),
                      onPressed: () => _openWhatsApp(whatsappNumber),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF25D366), // WhatsApp green color
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
