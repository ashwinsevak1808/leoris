import 'package:flutter/material.dart';
import 'package:leories/view/utils/colors.dart';
import 'package:leories/view/utils/theme.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SEColors.primary,
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Container(
          padding: const EdgeInsets.only(left: 25),
          height: 240,
          width: MediaQuery.of(context).size.width - 15,
          decoration: const BoxDecoration(
            color: SEColors.background,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/images/avatar.png')),
                  const SizedBox(height: 10),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ashwin Sevak', style: MainTheme.lightTheme.textTheme.displayMedium),
                        const SizedBox(height: 5),
                        Text('Joined Leoris on 18 August 2022', style: MainTheme.lightTheme.textTheme.labelSmall),
                      ],
                    ),
                    IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: SEColors.white,
                        ))
                  ]),
                ],
              ),
              const SizedBox(height: 15),
              const Divider(height: 1, color: SEColors.lightGrey),
              const SizedBox(height: 15),
              Row(
                children: [
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
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: MediaQuery.of(context).size.width - 15,
            decoration: const BoxDecoration(
              color: SEColors.background,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Flexible(
                  child: ListView(children: [
                    ListTile(
                      onTap: () {},
                      splashColor: SEColors.white,
                      leading: const Icon(Icons.browse_gallery, color: SEColors.textColor),
                      title: Text(
                        'Browse',
                        style: MainTheme.lightTheme.textTheme.titleSmall,
                      ),
                    ),
                    ListTile(
                      onTap: () {},
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
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
