import 'package:app_api/app_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'event.dart';
import 'state.dart';

export 'event.dart';
export 'state.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  SemaphoreApi api = SemaphoreApi();

  ProjectBloc() : super(const ProjectState()) {
    on<LoadProjects>(_onLoadProjects);
    on<SelectProject>(_onSelectProject);
    on<AddProject>(_onAddProject);
    on<UpdateProject>(_onUpdateProject);
    on<GetProject>(_onGetProject);
    on<RemoveProject>(_onRemoveProject);
  }

  Future<void> _onLoadProjects(
    LoadProjects event,
    Emitter<ProjectState> emit,
  ) async {
    final projectsResponse = await api.getProjectsApi().projectsGet();
    emit(state.copyWith(projects: projectsResponse.data ?? [], loaded: true));
  }

  Future<void> _onSelectProject(
    SelectProject event,
    Emitter<ProjectState> emit,
  ) async {
    emit(state.copyWithGetter(activeProject: () => event.project));
  }

  Future<void> _onAddProject(
    AddProject event,
    Emitter<ProjectState> emit,
  ) async {
    final _ = await api.getProjectsApi().projectsPost(
      project: event.projectRequest,
    );
    add(LoadProjects());
  }

  Future<void> _onUpdateProject(
    UpdateProject event,
    Emitter<ProjectState> emit,
  ) async {
    // final _ = await api.getProjectApi().projectProjectIdPut(
    //     projectId: event.projectId, project: event.projectRequest);
    add(LoadProjects());
  }

  Future<void> _onGetProject(
    GetProject event,
    Emitter<ProjectState> emit,
  ) async {
    final projectResponse = await api.getProjectApi().projectProjectIdGet(
      projectId: event.projectId,
    );
    emit(
      state.copyWithGetter(
        projects: () => state.projects
            .map<Project>(
              (project) =>
                  projectResponse.data?.id != null &&
                      project.id == projectResponse.data!.id
                  ? projectResponse.data!
                  : project,
            )
            .toList(),
        activeProject: () =>
            projectResponse.data?.id != null &&
                state.activeProject?.id == projectResponse.data!.id
            ? projectResponse.data!
            : state.activeProject,
      ),
    );
  }

  Future<void> _onRemoveProject(
    RemoveProject event,
    Emitter<ProjectState> emit,
  ) async {
    final _ = await api.getProjectApi().projectProjectIdDelete(
      projectId: event.projectId,
    );
    add(LoadProjects());
  }
}
