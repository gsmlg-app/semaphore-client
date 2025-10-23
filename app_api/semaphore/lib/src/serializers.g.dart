// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add($AnsibleTaskParams.serializer)
      ..add($ProjectRequest.serializer)
      ..add($TerraformTaskParams.serializer)
      ..add(APIToken.serializer)
      ..add(AcceptInviteRequest.serializer)
      ..add(AccessKey.serializer)
      ..add(AccessKeyRequest.serializer)
      ..add(AccessKeyRequestLoginPassword.serializer)
      ..add(AccessKeyRequestSsh.serializer)
      ..add(AccessKeyRequestTypeEnum.serializer)
      ..add(AccessKeyTypeEnum.serializer)
      ..add(Environment.serializer)
      ..add(EnvironmentRequest.serializer)
      ..add(EnvironmentSecret.serializer)
      ..add(EnvironmentSecretRequest.serializer)
      ..add(EnvironmentSecretRequestOperationEnum.serializer)
      ..add(EnvironmentSecretRequestTypeEnum.serializer)
      ..add(EnvironmentSecretTypeEnum.serializer)
      ..add(Event.serializer)
      ..add(InfoType.serializer)
      ..add(Integration.serializer)
      ..add(IntegrationExtractValue.serializer)
      ..add(IntegrationExtractValueBodyDataTypeEnum.serializer)
      ..add(IntegrationExtractValueRequest.serializer)
      ..add(IntegrationExtractValueRequestBodyDataTypeEnum.serializer)
      ..add(IntegrationExtractValueRequestValueSourceEnum.serializer)
      ..add(IntegrationExtractValueRequestVariableTypeEnum.serializer)
      ..add(IntegrationExtractValueValueSourceEnum.serializer)
      ..add(IntegrationExtractValueVariableTypeEnum.serializer)
      ..add(IntegrationMatcher.serializer)
      ..add(IntegrationMatcherBodyDataTypeEnum.serializer)
      ..add(IntegrationMatcherMatchTypeEnum.serializer)
      ..add(IntegrationMatcherMethodEnum.serializer)
      ..add(IntegrationMatcherRequest.serializer)
      ..add(IntegrationMatcherRequestBodyDataTypeEnum.serializer)
      ..add(IntegrationMatcherRequestMatchTypeEnum.serializer)
      ..add(IntegrationMatcherRequestMethodEnum.serializer)
      ..add(IntegrationRequest.serializer)
      ..add(Inventory.serializer)
      ..add(InventoryRequest.serializer)
      ..add(InventoryRequestTypeEnum.serializer)
      ..add(InventoryTypeEnum.serializer)
      ..add(Login.serializer)
      ..add(LoginMetadata.serializer)
      ..add(LoginMetadataOidcProvidersInner.serializer)
      ..add(Project.serializer)
      ..add(ProjectBackup.serializer)
      ..add(ProjectBackupEnvironmentsInner.serializer)
      ..add(ProjectBackupInventoriesInner.serializer)
      ..add(ProjectBackupInventoriesInnerTypeEnum.serializer)
      ..add(ProjectBackupKeysInner.serializer)
      ..add(ProjectBackupKeysInnerTypeEnum.serializer)
      ..add(ProjectBackupMeta.serializer)
      ..add(ProjectBackupRepositoriesInner.serializer)
      ..add(ProjectBackupTemplatesInner.serializer)
      ..add(ProjectBackupViewsInner.serializer)
      ..add(ProjectInvite.serializer)
      ..add(ProjectInviteRequest.serializer)
      ..add(ProjectInviteRequestRoleEnum.serializer)
      ..add(ProjectInviteRoleEnum.serializer)
      ..add(ProjectInviteStatusEnum.serializer)
      ..add(ProjectProjectIdPutRequest.serializer)
      ..add(ProjectProjectIdRoleGet200Response.serializer)
      ..add(ProjectProjectIdTasksPostRequest.serializer)
      ..add(ProjectProjectIdUsersPostRequest.serializer)
      ..add(ProjectProjectIdUsersPostRequestRoleEnum.serializer)
      ..add(ProjectProjectIdUsersUserIdPutRequest.serializer)
      ..add(ProjectProjectIdUsersUserIdPutRequestRoleEnum.serializer)
      ..add(ProjectUser.serializer)
      ..add(ProjectUserRoleEnum.serializer)
      ..add(Repository.serializer)
      ..add(RepositoryRequest.serializer)
      ..add(Runner.serializer)
      ..add(Schedule.serializer)
      ..add(ScheduleRequest.serializer)
      ..add(Task.serializer)
      ..add(TaskOutput.serializer)
      ..add(TaskParams.serializer)
      ..add(TaskPrams.serializer)
      ..add(Template.serializer)
      ..add(TemplateRequest.serializer)
      ..add(TemplateRequestTypeEnum.serializer)
      ..add(TemplateSurveyVar.serializer)
      ..add(TemplateSurveyVarTypeEnum.serializer)
      ..add(TemplateSurveyVarValue.serializer)
      ..add(TemplateTypeEnum.serializer)
      ..add(TemplateVault.serializer)
      ..add(TemplateVaultTypeEnum.serializer)
      ..add(User.serializer)
      ..add(UserPutRequest.serializer)
      ..add(UserRequest.serializer)
      ..add(UsersUserIdPasswordPostRequest.serializer)
      ..add(View.serializer)
      ..add(ViewRequest.serializer)
      ..add(ViewSortColumnEnum.serializer)
      ..add(ViewTypeEnum.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EnvironmentSecret)]),
          () => ListBuilder<EnvironmentSecret>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(EnvironmentSecretRequest)]),
          () => ListBuilder<EnvironmentSecretRequest>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(LoginMetadataOidcProvidersInner)]),
          () => ListBuilder<LoginMetadataOidcProvidersInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ProjectBackupTemplatesInner)]),
          () => ListBuilder<ProjectBackupTemplatesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ProjectBackupRepositoriesInner)]),
          () => ListBuilder<ProjectBackupRepositoriesInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ProjectBackupKeysInner)]),
          () => ListBuilder<ProjectBackupKeysInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ProjectBackupViewsInner)]),
          () => ListBuilder<ProjectBackupViewsInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ProjectBackupInventoriesInner)]),
          () => ListBuilder<ProjectBackupInventoriesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ProjectBackupEnvironmentsInner)]),
          () => ListBuilder<ProjectBackupEnvironmentsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TemplateSurveyVar)]),
          () => ListBuilder<TemplateSurveyVar>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TemplateVault)]),
          () => ListBuilder<TemplateVault>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TemplateSurveyVarValue)]),
          () => ListBuilder<TemplateSurveyVarValue>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TemplateVault)]),
          () => ListBuilder<TemplateVault>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TemplateSurveyVar)]),
          () => ListBuilder<TemplateSurveyVar>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
