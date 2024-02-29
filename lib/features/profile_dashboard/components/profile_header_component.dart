import 'package:flutter/material.dart';
import 'package:ostello/global/app_assets.dart';

class ProfileHeaderComponent extends StatelessWidget {
  const ProfileHeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(AppAssets.profile),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pratap Singh",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "+91 8058301863",
                      style: TextStyle(),
                    ),
                    Row(
                      children: [
                        Text(
                          "View activity",
                          style: TextStyle(
                            color: Color(0xff7d23e0),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 14,
                          color: Color(0xff7d23e0),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.institute,
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name of the institute",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Joined 12 Jun 2023",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
