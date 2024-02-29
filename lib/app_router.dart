import 'package:go_router/go_router.dart';
import 'package:ostello/features/profile_dashboard/profile_dashboard_router.dart';

final appRouter = GoRouter(
  initialLocation: ProfileDashboardPath.profileDashboard,
  routes: [
    ...profileDashboardRouter,
  ],
);
