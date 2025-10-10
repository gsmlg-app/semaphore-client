import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:key_store_bloc/key_store.dart';
import 'package:app_api/app_api.dart';

class KeyStoreName extends StatelessWidget {
  final int? accessKeyId;

  const KeyStoreName({super.key, this.accessKeyId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KeyStoreBloc, KeyStoreState>(
      builder: (context, state) {
        if (state is KeyStoreLoading) {
          return const LinearProgressIndicator();
        }
        if (state is KeyStoreLoaded) {
          final item = state.accessKeys.firstWhere(
            (k) => k.id == accessKeyId,
            orElse: () => AccessKey(),
          );
          return Text(
            item.name ?? 'N/A',
            overflow: TextOverflow.ellipsis,
          );
        }
        return Text(accessKeyId?.toString() ?? '--');
      },
    );
  }
}
