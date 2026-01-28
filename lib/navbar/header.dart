import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

      child: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 28, 60),
        actionsPadding: EdgeInsets.fromLTRB(28, 38, 0, 12),
        toolbarHeight: 100,
        titleSpacing: 40,
        title: Row(
          children: [
            CircleAvatar(
              radius: 34,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            const SizedBox(width: 12),
            const Text(
              'SeedSpark',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
