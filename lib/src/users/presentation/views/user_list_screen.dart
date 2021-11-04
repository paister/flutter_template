import 'package:flutter/material.dart';

import '../../../settings/settings_view.dart';
import '../../domain/entities/user.dart';
import 'user_details_screen.dart';

/// Displays a list of SampleItems.
class UserListViewScreen extends StatelessWidget {
  const UserListViewScreen({
    Key? key,
    this.items = const [User(id: '1'), User(id: '2'), User(id: '3')],
  }) : super(key: key);

  static const routeName = '/';

  final List<User> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'usersListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return ListTile(
              title: Text('SampleItem ${item.id}'),
              leading: const CircleAvatar(
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              onTap: () {
                Navigator.restorablePushNamed(
                  context,
                  UserDetailsScreen.routeName,
                );
              });
        },
      ),
    );
  }
}
