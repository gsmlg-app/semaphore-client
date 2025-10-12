import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:semaphore_client/screens/server/server_screen.dart';
import 'package:server_bloc/server.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const name = 'splash';
  static const path = '/splash';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width > size.height ? size.height : size.width;
    final serverBlock = context.read<SemaphoreServerBloc>();
    context.read<SemaphoreServerBloc>().add(LoadServers());
    return Scaffold(
      body: SafeArea(
        child: BlocListener<SemaphoreServerBloc, SemaphoreServerState>(
          bloc: serverBlock,
          listener: (context, state) {
            if (state.loaded) {
              if (state.activeServer != null) {
                context.goNamed(ServerScreen.name);
              } else {
                context.goNamed(ServerScreen.name);
              }
            } else {
              context.read<SemaphoreServerBloc>().add(LoadServers());
            }
          },
          child: Center(
            child: SizedBox(
              width: width * 0.8,
              height: width * 0.8,
              child: Center(
                // child: CustomPaint(
                //   size: Size(width * 0.7, width * 0.7 * 0.2),
                //   painter: LogoPainter(),
                // ),
                child: Text('Semaphore Client'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
