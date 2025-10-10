import 'package:app_api/app_api.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class ServerFormBloc extends FormBloc<String, String> {
  final name = TextFieldBloc<String>(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final apiUrl = TextFieldBloc<String>(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final username = TextFieldBloc<String>(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final password = TextFieldBloc<String>(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  ServerFormBloc() {
    addFieldBlocs(
      fieldBlocs: [name, apiUrl, username, password],
    );
  }

  @override
  void onSubmitting() async {
    try {
      final api = SemaphoreApi(basePathOverride: apiUrl.value);
      final result = await api.getAuthenticationApi().authLoginPost(
          loginBody: Login(auth: username.value, password: password.value));
      final headers = result.headers;
      final cookie = headers.value('set-cookie');

      final resp = await api
          .getAuthenticationApi()
          .userTokensPost(headers: {'cookie': cookie});

      final data = resp.data;
      if (data == null || data.id == null) {
        throw Exception('No token fetched');
      }
      final token = data.id;

      final message = token;

      emitSuccess(
        successResponse: message,
      );
    } catch (e) {
      emitFailure(
        failureResponse: e.toString(),
      );
    }
  }
}
