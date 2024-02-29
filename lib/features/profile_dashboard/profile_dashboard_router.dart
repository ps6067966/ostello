import 'package:go_router/go_router.dart';
import 'package:ostello/features/profile_dashboard/profile_dashboard_screen.dart';

class ProfileDashboardPath {
  static const String profileDashboard = "/profile-dashboard";
}

final List<RouteBase> profileDashboardRouter = [
  GoRoute(
    path: ProfileDashboardPath.profileDashboard,
    name: ProfileDashboardPath.profileDashboard,
    builder: (context, state) {
      return const ProfileDashboardScreen();
    },
  ),
];
