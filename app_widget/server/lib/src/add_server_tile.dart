import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:server_form_bloc/server_form.dart';
import 'package:app_feedback/components/setting/server_form.dart';
import 'package:app_utils/app_utils.dart';

class AddServerTile extends StatelessWidget {
  const AddServerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: const Icon(Icons.add),
        title: Text(context.l10n!.addServer),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          context.read<ServerFormBloc>().clear();
          showServerForm(context);
        },
      ),
    );
  }
}
