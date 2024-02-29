import 'package:ostello/global/app_assets.dart';

class ProfileDashboardGeneralModel {
  final String icon;
  final String title;
  ProfileDashboardGeneralModel({required this.icon, required this.title});
}

List<ProfileDashboardGeneralModel> profileDashboardGeneralList = [
  ProfileDashboardGeneralModel(
      icon: AppAssets.profileIcon, title: "Your Profile"),
  ProfileDashboardGeneralModel(
      icon: "assets/icons/heart.png", title: "Favourite Institute"),
  ProfileDashboardGeneralModel(
      icon: "assets/icons/payment.png", title: "Payment & Refunds"),
  ProfileDashboardGeneralModel(
      icon: "assets/icons/setting.png", title: "Settings"),
  ProfileDashboardGeneralModel(
      icon: "assets/icons/refer.png", title: "Refer & Earn"),
  ProfileDashboardGeneralModel(
      icon: "assets/icons/help.png", title: "Help & Support"),
];
