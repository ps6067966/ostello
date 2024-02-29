import 'package:flutter/material.dart';
import 'package:ostello/features/profile_dashboard/components/profile_header_component.dart';
import 'package:ostello/features/profile_dashboard/profile_dashboard_general_model.dart';
import 'package:ostello/global/app_colors.dart';

class ProfileDashboardScreen extends StatelessWidget {
  const ProfileDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColors.scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const ProfileHeaderComponent(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        surfaceTintColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icons/location.png",
                                width: 32,
                                height: 32,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text("Gandhinagar")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        surfaceTintColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icons/call.png",
                                width: 32,
                                height: 32,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text("1 Missed Call")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Card(
                  surfaceTintColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/profile.png",
                          width: 32,
                          height: 32,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Your Profile"),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfff3e7ff),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Text("64% Completed"),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Card(
                  surfaceTintColor: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "General",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            ListView.builder(
                              itemCount: profileDashboardGeneralList.length,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                final general =
                                    profileDashboardGeneralList[index];
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        general.icon,
                                        width: 32,
                                        height: 32,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(general.title),
                                      const Spacer(),
                                      const Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.grey,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
