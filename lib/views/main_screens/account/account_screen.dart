import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_learning/utils/constants.dart';
import 'package:green_learning/views/main_screens/account/account_components.dart';
// import 'package:green_learning/views/main_screens/account/profile_menu.dart';
import 'package:green_learning/views/main_screens/account/update_profile_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(5.w),
            child: Column(
              children: [
                AccountComponents.progressTile(50),
                AccountComponents.profileTile(),

                const SizedBox(height: 10),
                Text(
                  "Kajal Rituraj",
                  style: GoogleFonts.rajdhani(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "kajalrituraj2002@gmail.com",
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const UpdateProfileScreen()),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Constants.primaryColor,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 10),
                // ProfileMenuWidget(
                //   title: "Settings",
                //   icon: Icons.settings,
                //   onPress: () {},
                // ),
                // ProfileMenuWidget(
                //   title: "Billing Details",
                //   icon: Icons.wallet,
                //   onPress: () {},
                // ),
                // ProfileMenuWidget(
                //   title: "User Management",
                //   icon: Icons.verified_user,
                //   onPress: () {},
                // ),
                const Divider(),
                const SizedBox(height: 10),
                // ProfileMenuWidget(
                //   title: "Information",
                //   icon: Icons.info,
                //   onPress: () {},
                // ),
                // ProfileMenuWidget(
                //   title: "Logout",
                //   icon: Icons.logout,
                //   textColor: Colors.red,
                //   endIcon: false,
                //   onPress: () {
                //     Get.defaultDialog(
                //       title: "LOGOUT",
                //       titleStyle: const TextStyle(fontSize: 20),
                //       content: const Padding(
                //         padding: EdgeInsets.symmetric(vertical: 15.0),
                //         child: Text(
                //           "Are you sure, you want to Logout?",
                //         ),
                //       ),
                //       confirm: Expanded(
                //         child: ElevatedButton(
                //           // onPressed: () => AuthenticationRepository.instance.logout(),
                //           style: ElevatedButton.styleFrom(
                //               backgroundColor: const Color(0xffB5D9FF),
                //               side: BorderSide.none),
                //           onPressed: () {},
                //           child: const Text(
                //             "Yes",
                //           ),
                //         ),
                //       ),
                //       cancel: OutlinedButton(
                //         onPressed: () => Get.back(),
                //         child: const Text(
                //           "No",
                //         ),
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _tile(String title, IconData iconData) {
    return Container();
  }
}
