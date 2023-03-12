import 'package:flutter/material.dart';
import 'package:leories/view/screens/modules/music_liberary/music_playing_module.dart';
import 'package:leories/view/screens/modules/music_liberary/stacked_module.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';
import 'package:leories/view/widgets/global/app_bar.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: SEColors.primary,
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Container(
          padding: const EdgeInsets.only(left: 25),
          height: 232,
          width: MediaQuery.of(context).size.width - 15,
          decoration: const BoxDecoration(
            color: SEColors.background,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
          ),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello,\nAshwin Sevak', style: MainTheme.lightTheme.textTheme.displayMedium),
                  Padding(
                    padding: const EdgeInsets.only(right: 36.0),
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.notifications, color: SEColors.white)),
                        IconButton(
                            onPressed: () {
                              scaffoldKey.currentState!.closeDrawer();
                            },
                            icon: const Icon(Icons.close, color: SEColors.white))
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              const Divider(height: 1, color: SEColors.lightGrey),
              const SizedBox(height: 24),
              Row(
                children: [
                  const CircleAvatar(radius: 16, backgroundImage: AssetImage('assets/images/avatar.png')),
                  const SizedBox(width: 20),
                  RichText(
                    text: TextSpan(text: 'Listened Time:\n', children: [TextSpan(text: '24:18:18', style: MainTheme.lightTheme.textTheme.labelSmall)], style: MainTheme.lightTheme.textTheme.bodySmall),
                  ),
                  const SizedBox(width: 18),
                  RichText(
                    text: TextSpan(text: 'Playlists:\n', children: [TextSpan(text: '18', style: MainTheme.lightTheme.textTheme.labelSmall)], style: MainTheme.lightTheme.textTheme.bodySmall),
                  ),
                  const SizedBox(width: 18),
                  RichText(
                    text: TextSpan(text: 'Following:\n', children: [TextSpan(text: '179', style: MainTheme.lightTheme.textTheme.labelSmall)], style: MainTheme.lightTheme.textTheme.bodySmall),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: MediaQuery.of(context).size.width - 15,
            decoration: const BoxDecoration(
              color: SEColors.background,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
            ),
            child: Column(
              children: [
                Flexible(
                  child: ListView(children: [
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const MusicPlaying()));
                      },
                      splashColor: SEColors.white,
                      leading: const Icon(Icons.browse_gallery, color: SEColors.textColor),
                      title: Text(
                        'Browse',
                        style: MainTheme.lightTheme.textTheme.titleSmall,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const StackedModule()));
                      },
                      leading: const Icon(Icons.subscriptions_outlined, color: SEColors.textColor),
                      title: Text(
                        'Subscribed',
                        style: MainTheme.lightTheme.textTheme.titleSmall,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.favorite_border, color: SEColors.textColor),
                      title: Text(
                        'Favourites',
                        style: MainTheme.lightTheme.textTheme.titleSmall,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.history, color: SEColors.textColor),
                      title: Text(
                        'History',
                        style: MainTheme.lightTheme.textTheme.titleSmall,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.payment, color: SEColors.textColor),
                      title: Text(
                        'Payments',
                        style: MainTheme.lightTheme.textTheme.titleSmall,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings, color: SEColors.textColor),
                      title: Text(
                        'Account settings',
                        style: MainTheme.lightTheme.textTheme.titleSmall,
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(color: SEColors.textColor, borderRadius: BorderRadius.circular(50)),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Logout', style: MainTheme.lightTheme.textTheme.titleSmall), const Icon(Icons.logout, color: SEColors.white)],
                    ),
                  ),
                ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
