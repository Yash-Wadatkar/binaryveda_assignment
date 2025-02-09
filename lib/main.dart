import 'package:dashboard_ui_assignment/core/dependency_injection_container/dependency_injection_container.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/bloc/dash_board_bloc.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  /// Initialize the dependency injection container
  initDependencies();

  runApp(BlocProvider(create: (context) => DashBoardBloc(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
