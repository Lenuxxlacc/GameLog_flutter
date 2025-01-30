import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';

class AyarlarScreen extends StatefulWidget {
  const AyarlarScreen({super.key});

  @override
  State<AyarlarScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<AyarlarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ayarlar'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.palette),
              title: Text('Tema'),
              trailing: Switch(
                value: Theme.of(context).brightness == Brightness.dark,
                onChanged: (value) {
                  context.read<ThemeProvider>().toggleTheme();
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Bildirimler'),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
              ),
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Dil'),
              trailing: DropdownButton<String>(
                value: 'TR',
                items: ['TR', 'EN'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Uygulama Hakkında'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Gizlilik Politikası'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.delete, color: Colors.red),
              title: Text(
                'Hesabı Sil',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {},
            ),
          ],
        ),
        bottomNavigationBar: const BottomMenu());
  }
}
