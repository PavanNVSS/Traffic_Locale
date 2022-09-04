import 'package:Traffic_Locale/404page.dart';
import 'package:Traffic_Locale/Login_Page.dart';
import 'package:Traffic_Locale/Profile.dart';
import 'package:Traffic_Locale/RecentAdd.dart';
import 'package:Traffic_Locale/home_page.dart';
import 'package:flutter/material.dart';
import 'package:Traffic_Locale/archive_page.dart';
import 'dart:io';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Xeno'),
            accountEmail: const Text('Blank666@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                   'assets/ProfilePic.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image:
                      NetworkImage('https://api.unsplash.com/photos/random?')),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              }),
          ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Log'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ArchivePage()),
                );
              }),
          ListTile(
              leading: const Icon(Icons.chevron_left_outlined),
              title: const Text('Recently Added'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const RecentPage()),
                );
              }),
          ListTile(
            leading: const Icon(Icons.fmd_good_outlined),
            title: const Text('Map'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const InComp()),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.border_color_outlined),
            title: const Text('Remarks'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const InComp()),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.outbond),
            title: const Text('Others'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const InComp()),
              )
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Profile Setting'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              )
            },
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const InComp()),
              )
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Policies'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const InComp()),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.noise_aware),
            title: const Text('Log Out'),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              )
            },
          ),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => exit(0)),
              )
            },
          ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.feedback_outlined),
              title: const Text('Feedback'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const InComp()),
                );
              }),
          ListTile(
              leading: const Icon(Icons.help_outline_outlined),
              title: const Text('About App'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const InComp()),
                );
              }),
          ListTile(
              leading: const Icon(Icons.bug_report_outlined),
              title: const Text('Report Issues'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const InComp()),
                );
              }),
        ],
      ),
    );
  }
}
