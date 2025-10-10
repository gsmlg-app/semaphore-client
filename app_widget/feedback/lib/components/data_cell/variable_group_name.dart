import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:variable_bloc/variable.dart';
import 'package:app_api/app_api.dart';

class VariableGroupName extends StatelessWidget {
  final int? variableGroupId;

  const VariableGroupName({super.key, this.variableGroupId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VariableBloc, VariableState>(
      builder: (context, state) {
        if (state is VariableLoading) {
          return const LinearProgressIndicator();
        }
        if (state is VariableLoaded) {
          final item = state.variables.firstWhere(
            (k) => k.id == variableGroupId,
            orElse: () => Environment(),
          );
          return Text(
            item.name ?? 'N/A',
            overflow: TextOverflow.ellipsis,
          );
        }
        return Text(variableGroupId?.toString() ?? '--');
      },
    );
  }
}
