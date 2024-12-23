import 'package:flutter/material.dart';
import 'package:test_clone_foodpenda/page/setting_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back arrow
        title: Text("Account"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_outlined),
            onPressed: () {
              // Navigate to the SettingsPage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Welcome to the Account Page!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
