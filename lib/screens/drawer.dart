import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FullScreenDrawer extends StatelessWidget {
  const FullScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[850],
      body: ListView(
        children: <Widget>[
          const DrawerHeader( 
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset('lib/icons/settings.svg'),
            title: const Text('Settings'),
            onTap: () {
              // Navigate to the settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Us'),
            onTap: () {
              // Navigate to the about us page
            },
          ),
          ListTile(
            leading: const Icon(Icons.web),
            title: const Text('Website'),
            onTap: () {
              // Navigate to the website
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact Us'),
            onTap: () {
              // Navigate to the contact us page
            },
          ),
        ],
      ),
    );
  }
}