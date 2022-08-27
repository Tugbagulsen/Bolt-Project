import 'package:boltproject/constants/color_constant.dart';
import 'package:boltproject/main.dart';
import 'package:boltproject/page/login/login.dart';
import 'package:boltproject/page/login/register.dart';
import 'package:boltproject/widgets/custom_listTile_widget.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

bool _light = true;

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Row(
            children: [
              const Text(
                'MENU',
                style: TextStyle(fontSize: 20, color: ColorConstants.primaryColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 167),
              IconButton(
                icon: const Icon(
                  Icons.close_outlined,
                  size: 36,
                ),
                onPressed: () => {Navigator.of(context).pop()},
              ),
            ],
          ),
        ),
        const CustomListTile(
          icon: Icons.person,
          text: 'Profil',
        ),
        _divider10,
        InkWell(
          child: const CustomListTile(
            icon: Icons.language,
            text: 'Kayıt Ol/ Giriş Yap',
          ),
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),
            )
          },
        ),
        _divider10,
        const CustomListTile(
          icon: Icons.mail,
          text: 'Bize Ulaşın',
        ),
        _divider10,
        const CustomListTile(
          icon: Icons.settings_outlined,
          text: 'Ayarlar',
        ),
        _divider10,
        InkWell(
          child: const CustomListTile(
            icon: Icons.power_settings_new_outlined,
            text: 'Çıkış Yap',
          ),
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            ),
          },
        ),
        _divider10,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                icon: Icon(
                  MyApp.themeNotifier.value == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
                  color: ColorConstants.primaryColor,
                ),
                onPressed: () {
                  MyApp.themeNotifier.value = MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
                })
          ],
        ),
      ],
    );
  }

  Widget get _divider10 => const Divider(
        height: 15.0,
        color: ColorConstants.blackColor,
      );
}







//  actions: [
//           IconButton(
//               icon: Icon(
//                 MyApp.themeNotifier.value == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
//               ),
//               onPressed: () {
//                 MyApp.themeNotifier.value = MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//               })
//         ],