import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'name': 'Fasal Salah',
      'description': 'Agro advisory app providing personalized crop weather advisories for Indian farmers.',
      'url': 'https://play.google.com/store/apps/details?id=com.weathersys.agro&hl=en',
      'icon': 'assets/fasal_salah_icon.png',
    },
    {
      'name': 'Grocery App',
      'description': 'E-commerce app for grocery shopping.',
      'url': 'https://play.google.com/store/apps/details?id=com.vijaygrocery',
      'icon': 'assets/grocery_app_icon.png',
    },
    {
      'name': 'Booking Corner',
      'description': 'App for booking various services.',
      'url': 'https://play.google.com/store/apps/details?id=com.booking.corner',
      'icon': 'assets/booking_corner_icon.png',
    },
    // Add more projects here
  ];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.all(8),
          child: ListTile(
            title: Text(projects[index]['name']!,style: TextStyle(color: Colors.black,),),
            subtitle: Text(projects[index]['description'] ?? ''),
            trailing: IconButton(
              icon: const Icon(Icons.launch),
              onPressed: () {
                // Launch URL
              },
            ),
          ),
        );
      },
    );

    // return GridView.builder(
    //   padding: const EdgeInsets.all(16),
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: MediaQuery.of(context).size.width > 1000 ? 3 : 2,
    //     childAspectRatio: 1,
    //     crossAxisSpacing: 16,
    //     mainAxisSpacing: 16,
    //   ),
    //   itemCount: projects.length,
    //   itemBuilder: (context, index) {
    //     return Card(
    //       elevation: 4,
    //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    //       child: InkWell(
    //         onTap: () {
    //           // Launch URL
    //         },
    //         child: Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //              const Icon(Icons.book,size: 80,),
    //               const SizedBox(height: 16),
    //               Text(
    //                 projects[index]['name']!,
    //                 style: Theme.of(context).textTheme.labelMedium,
    //                 textAlign: TextAlign.center,
    //               ),
    //               const SizedBox(height: 8),
    //               Text(
    //                 projects[index]['description']!,
    //                 style: Theme.of(context).textTheme.labelSmall,
    //                 textAlign: TextAlign.center,
    //                 maxLines: 3,
    //                 overflow: TextOverflow.ellipsis,
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
