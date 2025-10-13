import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_database/app_database.dart';
import 'package:server_bloc/server.dart';

class ProjectList extends StatelessWidget {
  final SemaphoreServer server;

  const ProjectList({
    super.key,
    required this.server,
  });

  @override
  Widget build(BuildContext context) {
    final database = context.read<AppDatabase>();

    return BlocBuilder<SemaphoreServerBloc, SemaphoreServerState>(
      builder: (context, serverState) {
        return FutureBuilder<List<SemaphoreProject>>(
          future: server.getProjects(database),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(width: 16),
                    Text('Loading projects...'),
                  ],
                ),
              );
            }

            if (snapshot.hasError) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Icon(Icons.error, color: Colors.red),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Error: ${snapshot.error}',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              );
            }

            final projects = snapshot.data ?? [];
            if (projects.isEmpty) {
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox(width: 16),
                    Text('No projects found'),
                  ],
                ),
              );
            }

            return Column(
              children: projects
                  .map((project) => CheckboxListTile(
                        secondary: const Icon(Icons.rocket_launch),
                        title: Text(project.name ?? 'Unknown'),
                        value: serverState.activeServer?.id == server.id &&
                            serverState.activeProject?.projectId ==
                                project.projectId,
                        onChanged: (bool? value) {
                          if (value == true) {
                            context
                                .read<SemaphoreServerBloc>()
                                .add(SelectServer(server, project));
                          }
                        },
                      ))
                  .toList(),
            );
          },
        );
      },
    );
  }
}
