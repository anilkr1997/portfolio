import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  final List<Map<String, String>> experiences = [
    {
      'company': 'Aeologic technologies pvt Ltd',
      'position': 'Android App Developer',
      'duration': 'June 2022 - Present',
      'description': 'Working on various Android projects for government initiatives.'

    },
    {
      'company': 'Stepforadder Technology Pvt Ltd',
      'position': 'Android Developer',
      'duration': 'June 2021 - June 2022',
      'description': 'Developed and maintained multiple Android applications.'

    },
    {
      'company': 'BKC WeatherSys Pvt Ltd',
      'position': 'Android Developer',
      'duration': 'June 2021 - June 2022',
      'description': 'Developed weather-related Android applications and integrated APIs.'

    },
    {
      'company': 'Brainsoft software pvt ltd',
      'position': 'Android Developer',
      'duration': 'February 2020 - June 2021',
      'description': 'Contributed to various Android projects and improved app performance.'

    },
    {
      'company': 'VividTechno pvt. ltd',
      'position': 'Android Developer',
      'duration': 'August 2019 - February 2020',
      'description': 'Started career as an Android developer, worked on multiple projects.'
    },
    {
      'company': 'Stucorner It development and training center',
      'position': 'Android Developer Intern',
      'duration': 'January 2019 - July 2019',
      'description': 'Learned Android development and worked on real-world projects.'

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: experiences.length,
        itemBuilder: (context, index) {
          final experience = experiences[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                dense: false,
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: const Icon(
                    Icons.house,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  experience['company']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(experience['position']!),

                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Duration: ${experience['duration']}'),
                          const SizedBox(height: 8),
                          Text(experience['description']!),
                        ],
                      ),
                    )

                  ),
                ],
              ),
            )
          );
        },
      ),
    );
  }
}
