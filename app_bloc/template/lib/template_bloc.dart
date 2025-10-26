import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:semaphore_api/semaphore_api.dart';
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
      final templateApi = event.api.getTemplateApi();
      final resp = await templateApi.projectProjectIdTemplatesGet(
        projectId: event.projectId,
        sort: 'name',
        order: 'asc',
      );
      AppLogger().d('Template data: ${resp.data}');
      emit(TemplateLoaded(templates: resp.data?.toList() ?? []));
    } catch (e) {
      AppLogger().e('Failed to load templates', e);
      emit(TemplateError(e));
    }
  }
}
