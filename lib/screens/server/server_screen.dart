import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_server/app_server.dart';
import 'package:server_form_bloc/server_form.dart';
import 'package:app_feedback/components/setting/server_form.dart';

class ServerScreen extends StatelessWidget {
  static const name = 'Server';
  static const path = '/server';
  const ServerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAdaptiveScaffold(
      selectedIndex: Destinations.indexOf(const Key(name), context),
      onSelectedIndexChange: (idx) => Destinations.changeHandler(idx, context),
      destinations: Destinations.navs(context),
      body: (context) => Stack(
        children: [
          SafeArea(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverAppBar(
                  title: const Text('Server'),
                  automaticallyImplyLeading: false,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    _buildServerContent(context),
                  ]),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                context.read<ServerFormBloc>().clear();
                showServerForm(context);
              },
              tooltip: 'Add Server',
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
      largeBody: (context) => Stack(
        children: [
          SafeArea(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverAppBar(
                  title: const Text('Server'),
                  automaticallyImplyLeading: false,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    _buildServerContent(context),
                  ]),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                context.read<ServerFormBloc>().clear();
                showServerForm(context);
              },
              tooltip: 'Add Server',
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      largeSecondaryBody: (_) => SafeArea(child: Container()),
    );
  }

  Widget _buildServerContent(BuildContext context) {
    return const ServerList();
  }
}
