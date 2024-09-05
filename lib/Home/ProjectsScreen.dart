import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      "name": "HPL Box Tracking App",
      "description": "Warehouse box tracking app with RFID scanning.",
      "details": "Developed using Java and integrated third-party RFID scanning libraries. Implemented real-time box search and registration with an alarm system.",
      "url": "",
      "icon": "Icons.inventory"
    },
    {
      "name": "HPL Barcode and QR Code Scanner",
      "description": "App for scanning barcodes and QR codes.",
      "details": "Built using Kotlin for Android. Integrated third-party libraries for laser barcode and QR code scanning.",
      "url": "",
      "icon": "Icons.qr_code_scanner"
    },
    {
      "name": "REC Asset Capture App (Flutter & Android)",
      "description": "App for capturing and mapping electrical infrastructure data.",
      "details": "Developed using Flutter and Android SDK. Captured latitude, longitude, and technical details for mapping assets like poles and substations.",
      "url": "https://play.google.com/store/apps/details?id=in.nic.rsgis.recapplication",
      "icon": "Icons.map"
    },
    {
      "name": "Fasal Salah Agriculture App",
      "description": "Agro advisory app providing personalized crop weather advisories for Indian farmers.",
      "details": "Developed using Android SDK and Java. Integrated weather APIs and implemented personalized advisory algorithms.",
      "url": "https://play.google.com/store/apps/details?id=com.weathersys.agro&hl=en",
      "icon": "Icons.agriculture"
    },
    {
      "name": "Vijaya Grocery App",
      "description": "E-commerce app for grocery shopping.",
      "details": "Built with Flutter and Dart. Implemented product catalog, shopping cart, real-time tracking, and secure checkout process.",
      "url": "https://play.google.com/store/apps/details?id=com.vijaygrocery",
      "icon": "Icons.shopping_cart"
    },
    {
      "name": "Thermal Printer Android App",
      "description": "App for printing receipts using Bluetooth, USB, or POS printers.",
      "details": "Developed using Android SDK. Supports printing text, images, and barcodes in various languages.",
      "url": "",
      "icon": "Icons.print"
    },
    {
      "name": "Jal Sarot App",
      "description": "App for managing water body polygons and metadata.",
      "details": "Built using ArcGIS SDK for Android. Allows users to capture and manage water resource data, including dimensions, quality, and usage.",
      "url": "",
      "icon": "Icons.water"
    },
    {
      "name": "Parcel Delivery App",
      "description": "App for real-time parcel tracking and route optimization.",
      "details": "Developed using Google Maps API and integrated QR code scanning for delivery confirmation.",
      "url": "",
      "icon": "Icons.local_shipping"
    },
    {
      "name": "Gram Manchitra Rural Development and Survey",
      "description": "App for conducting rural development surveys using GPS.",
      "details": "Built using Android SDK and GPS integration. Captured village infrastructure data for effective planning and development.",
      "url": "",
      "icon": "Icons.location_on"
    },
    {
      "name": "Booking Corner",
      "description": "App for booking various services like travel and utilities.",
      "details": "Developed using Kotlin for Android. Integrated multiple APIs for different service providers and implemented a user-friendly booking system.",
      "url": "",
      "icon": "Icons.book_online"
    },
    {
      "name": "E-Commerce Android App",
      "description": "App for browsing items, managing a shopping cart, and secure checkout.",
      "details": "Developed using Android SDK and integrated with multiple payment gateways. Implemented user accounts, order tracking, and customer support features.",
      "url": "",
      "icon": "Icons.shopping_bag"
    }
  ];
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              leading: CircleAvatar(
                backgroundColor: Theme
                    .of(context)
                    .primaryColor,
                child: const Icon(
                  Icons.work,
                  color: Colors.white,
                ),
              ),
              title: Text(
                project['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(project['description']!),
              children: [

                Padding(

                  padding: const EdgeInsets.all(16),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(project['details']!),
                        const SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: () => _launchURL(project['url']!),
                          icon: const Icon(Icons.android),
                          label: const Text('View on Play Store'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Theme.of(context).colorScheme.secondary,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        )
                      ],
                    ),
                  )

                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
