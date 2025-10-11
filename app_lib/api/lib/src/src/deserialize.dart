import 'model/api_token.dart';
import 'model/access_key.dart';
import 'model/access_key_request.dart';
import 'model/access_key_request_login_password.dart';
import 'model/access_key_request_ssh.dart';
import 'model/environment.dart';
import 'model/environment_request.dart';
import 'model/environment_secret.dart';
import 'model/environment_secret_request.dart';
import 'model/event.dart';
import 'model/info_type.dart';
import 'model/info_type_update.dart';
import 'model/integration.dart';
import 'model/integration_extract_value.dart';
import 'model/integration_extract_value_request.dart';
import 'model/integration_matcher.dart';
import 'model/integration_matcher_request.dart';
import 'model/integration_request.dart';
import 'model/inventory.dart';
import 'model/inventory_request.dart';
import 'model/login.dart';
import 'model/login_metadata.dart';
import 'model/login_metadata_oidc_providers_inner.dart';
import 'model/project.dart';
import 'model/project_backup.dart';
import 'model/project_backup_environments_inner.dart';
import 'model/project_backup_inventories_inner.dart';
import 'model/project_backup_keys_inner.dart';
import 'model/project_backup_meta.dart';
import 'model/project_backup_repositories_inner.dart';
import 'model/project_backup_templates_inner.dart';
import 'model/project_backup_views_inner.dart';
import 'model/project_project_id_put_request.dart';
import 'model/project_project_id_put_request_all_of.dart';
import 'model/project_project_id_role_get200_response.dart';
import 'model/project_project_id_tasks_post_request.dart';
import 'model/project_project_id_tasks_post_request_params.dart';
import 'model/project_project_id_users_post_request.dart';
import 'model/project_project_id_users_user_id_put_request.dart';
import 'model/project_request.dart';
import 'model/project_user.dart';
import 'model/repository.dart';
import 'model/repository_request.dart';
import 'model/runner.dart';
import 'model/schedule.dart';
import 'model/schedule_request.dart';
import 'model/task.dart';
import 'model/task_output.dart';
import 'model/template.dart';
import 'model/template_request.dart';
import 'model/template_survey_var.dart';
import 'model/template_survey_var_value.dart';
import 'model/template_vault.dart';
import 'model/user.dart';
import 'model/user_put_request.dart';
import 'model/user_request.dart';
import 'model/users_user_id_password_post_request.dart';
import 'model/view.dart';
import 'model/view_request.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ReturnType deserialize<ReturnType, BaseType>(
  dynamic value,
  String targetType, {
  bool growable = true,
}) {
  switch (targetType) {
    case 'String':
      return '$value' as ReturnType;
    case 'int':
      return (value is int ? value : int.parse('$value')) as ReturnType;
    case 'bool':
      if (value is bool) {
        return value as ReturnType;
      }
      final valueString = '$value'.toLowerCase();
      return (valueString == 'true' || valueString == '1') as ReturnType;
    case 'double':
      return (value is double ? value : double.parse('$value')) as ReturnType;
    case 'APIToken':
      return APIToken.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AccessKey':
      return AccessKey.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'AccessKeyRequest':
      return AccessKeyRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'AccessKeyRequestLoginPassword':
      return AccessKeyRequestLoginPassword.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'AccessKeyRequestSsh':
      return AccessKeyRequestSsh.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Environment':
      return Environment.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'EnvironmentRequest':
      return EnvironmentRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'EnvironmentSecret':
      return EnvironmentSecret.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'EnvironmentSecretRequest':
      return EnvironmentSecretRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Event':
      return Event.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'InfoType':
      return InfoType.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'InfoTypeUpdate':
      return InfoTypeUpdate.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Integration':
      return Integration.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'IntegrationExtractValue':
      return IntegrationExtractValue.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'IntegrationExtractValueRequest':
      return IntegrationExtractValueRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'IntegrationMatcher':
      return IntegrationMatcher.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'IntegrationMatcherRequest':
      return IntegrationMatcherRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'IntegrationRequest':
      return IntegrationRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Inventory':
      return Inventory.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'InventoryRequest':
      return InventoryRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Login':
      return Login.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'LoginMetadata':
      return LoginMetadata.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'LoginMetadataOidcProvidersInner':
      return LoginMetadataOidcProvidersInner.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'Project':
      return Project.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ProjectBackup':
      return ProjectBackup.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ProjectBackupEnvironmentsInner':
      return ProjectBackupEnvironmentsInner.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'ProjectBackupInventoriesInner':
      return ProjectBackupInventoriesInner.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'ProjectBackupKeysInner':
      return ProjectBackupKeysInner.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ProjectBackupMeta':
      return ProjectBackupMeta.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ProjectBackupRepositoriesInner':
      return ProjectBackupRepositoriesInner.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'ProjectBackupTemplatesInner':
      return ProjectBackupTemplatesInner.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ProjectBackupViewsInner':
      return ProjectBackupViewsInner.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ProjectProjectIdPutRequest':
      return ProjectProjectIdPutRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ProjectProjectIdPutRequestAllOf':
      return ProjectProjectIdPutRequestAllOf.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'ProjectProjectIdRoleGet200Response':
      return ProjectProjectIdRoleGet200Response.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'ProjectProjectIdTasksPostRequest':
      return ProjectProjectIdTasksPostRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'ProjectProjectIdTasksPostRequestParams':
      return ProjectProjectIdTasksPostRequestParams.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'ProjectProjectIdUsersPostRequest':
      return ProjectProjectIdUsersPostRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'ProjectProjectIdUsersUserIdPutRequest':
      return ProjectProjectIdUsersUserIdPutRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'ProjectRequest':
      return ProjectRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ProjectUser':
      return ProjectUser.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Repository':
      return Repository.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'RepositoryRequest':
      return RepositoryRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Runner':
      return Runner.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Schedule':
      return Schedule.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ScheduleRequest':
      return ScheduleRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'Task':
      return Task.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TaskOutput':
      return TaskOutput.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'Template':
      return Template.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TemplateRequest':
      return TemplateRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TemplateSurveyVar':
      return TemplateSurveyVar.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TemplateSurveyVarValue':
      return TemplateSurveyVarValue.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'TemplateVault':
      return TemplateVault.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'User':
      return User.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'UserPutRequest':
      return UserPutRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UserRequest':
      return UserRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'UsersUserIdPasswordPostRequest':
      return UsersUserIdPasswordPostRequest.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'View':
      return View.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ViewRequest':
      return ViewRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
    default:
      RegExpMatch? match;

      if (value is List && (match = _regList.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
                .map<BaseType>(
                  (dynamic v) => deserialize<BaseType, BaseType>(
                    v,
                    targetType,
                    growable: growable,
                  ),
                )
                .toList(growable: growable)
            as ReturnType;
      }
      if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
                .map<BaseType>(
                  (dynamic v) => deserialize<BaseType, BaseType>(
                    v,
                    targetType,
                    growable: growable,
                  ),
                )
                .toSet()
            as ReturnType;
      }
      if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return Map<dynamic, BaseType>.fromIterables(
              value.keys,
              value.values.map(
                (dynamic v) => deserialize<BaseType, BaseType>(
                  v,
                  targetType,
                  growable: growable,
                ),
              ),
            )
            as ReturnType;
      }
      break;
  }
  throw Exception('Cannot deserialize');
}
