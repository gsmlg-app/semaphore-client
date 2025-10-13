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

            return Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                children: projects
                    .map((project) => RadioListTile<int?>(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          dense: true,
                          secondary: const SizedBox(
                            width: 20,
                            height: 20,
                            child: Icon(Icons.rocket_launch, size: 16),
                          ),
                          title: Text(
                            project.name ?? 'Unknown',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          value: project.projectId,
                          groupValue: serverState.activeServer?.id ==
                                      server.id &&
                                  serverState.activeProject?.projectId != null
                              ? serverState.activeProject!.projectId
                              : null,
                          onChanged: (int? value) {
                            if (value != null) {
                              context
                                  .read<SemaphoreServerBloc>()
                                  .add(SelectServer(server, project));
                            }
                          },
                        ))
                    .toList(),
              ),
            );
          },
        );
      },
    );
  }
}
