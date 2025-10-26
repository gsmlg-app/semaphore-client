import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:repository_bloc/repository.dart';
import 'package:semaphore_api/semaphore_api.dart';

class RepositoryName extends StatelessWidget {
  final int? repositoryId;

  const RepositoryName({super.key, this.repositoryId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepositoryBloc, RepositoryState>(
      builder: (context, state) {
        if (state is RepositoryLoading) {
          return const LinearProgressIndicator();
        }
        if (state is RepositoryLoaded) {
          final item = state.repositorys.firstWhere(
            (k) => k.id == repositoryId,
            orElse: () => Repository(),
          );
          return Text(
            item.name ?? 'N/A',
            overflow: TextOverflow.ellipsis,
          );
        }
        return Text(repositoryId?.toString() ?? '--');
      },
    );
  }
}
