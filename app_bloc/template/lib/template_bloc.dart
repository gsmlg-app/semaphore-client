import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:app_api/app_api.dart';
import 'package:app_logging/app_logging.dart';

part 'template_event.dart';
part 'template_state.dart';

class TemplateBloc extends Bloc<TemplateEvent, TemplateState> {
  TemplateBloc() : super(TemplateInitial()) {
    on<TemplateLoad>(_templateLoad);
  }

  Future<void> _templateLoad(
    TemplateLoad event,
    Emitter<TemplateState> emit,
  ) async {
    if (state is TemplateLoaded) {
      emit(
        TemplateLoaded(
          loading: true,
          templates: (state as TemplateLoaded).templates,
        ),
      );
    } else {
      emit(TemplateLoading());
    }
    try {
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdTemplatesGet(
        projectId: event.projectId,
        sort: 'name',
        order: 'asc',
      );
      AppLogger().d('Template data: ${resp.data}');
      emit(TemplateLoaded(templates: resp.data ?? []));
    } catch (e) {
      AppLogger().e('Failed to load templates', error: e);
      emit(TemplateError(e));
    }
  }
}
