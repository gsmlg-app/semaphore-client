//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/template_vault.dart';
import '../model/task.dart';
import '../model/template_survey_var.dart';
import 'package:json_annotation/json_annotation.dart';

part 'template.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Template {
  /// Returns a new [Template] instance.
  Template({

     this.id,

     this.projectId,

     this.inventoryId,

     this.repositoryId,

     this.environmentId,

     this.viewId,

     this.name,

     this.playbook,

     this.arguments,

     this.description,

     this.allowOverrideArgsInTask,

     this.suppressSuccessAlerts,

     this.app,

     this.gitBranch,

     this.type,

     this.autorun,

     this.surveyVars,

     this.vaults,

     this.lastTask,
  });

          // minimum: 1
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



          // minimum: 1
  @JsonKey(
    
    name: r'project_id',
    required: false,
    includeIfNull: false
  )


  final int? projectId;



          // minimum: 1
  @JsonKey(
    
    name: r'inventory_id',
    required: false,
    includeIfNull: false
  )


  final int? inventoryId;



  @JsonKey(
    
    name: r'repository_id',
    required: false,
    includeIfNull: false
  )


  final int? repositoryId;



          // minimum: 1
  @JsonKey(
    
    name: r'environment_id',
    required: false,
    includeIfNull: false
  )


  final int? environmentId;



          // minimum: 1
  @JsonKey(
    
    name: r'view_id',
    required: false,
    includeIfNull: false
  )


  final int? viewId;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'playbook',
    required: false,
    includeIfNull: false
  )


  final String? playbook;



  @JsonKey(
    
    name: r'arguments',
    required: false,
    includeIfNull: false
  )


  final String? arguments;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



  @JsonKey(
    
    name: r'allow_override_args_in_task',
    required: false,
    includeIfNull: false
  )


  final bool? allowOverrideArgsInTask;



  @JsonKey(
    
    name: r'suppress_success_alerts',
    required: false,
    includeIfNull: false
  )


  final bool? suppressSuccessAlerts;



  @JsonKey(
    
    name: r'app',
    required: false,
    includeIfNull: false
  )


  final String? app;



  @JsonKey(
    
    name: r'git_branch',
    required: false,
    includeIfNull: false
  )


  final String? gitBranch;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final TemplateTypeEnum? type;



  @JsonKey(
    
    name: r'autorun',
    required: false,
    includeIfNull: false
  )


  final bool? autorun;



  @JsonKey(
    
    name: r'survey_vars',
    required: false,
    includeIfNull: false
  )


  final List<TemplateSurveyVar>? surveyVars;



  @JsonKey(
    
    name: r'vaults',
    required: false,
    includeIfNull: false
  )


  final List<TemplateVault>? vaults;



  @JsonKey(
    
    name: r'last_task',
    required: false,
    includeIfNull: false
  )


  final Task? lastTask;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Template &&
     other.id == id &&
     other.projectId == projectId &&
     other.inventoryId == inventoryId &&
     other.repositoryId == repositoryId &&
     other.environmentId == environmentId &&
     other.viewId == viewId &&
     other.name == name &&
     other.playbook == playbook &&
     other.arguments == arguments &&
     other.description == description &&
     other.allowOverrideArgsInTask == allowOverrideArgsInTask &&
     other.suppressSuccessAlerts == suppressSuccessAlerts &&
     other.app == app &&
     other.gitBranch == gitBranch &&
     other.type == type &&
     other.autorun == autorun &&
     other.surveyVars == surveyVars &&
     other.vaults == vaults &&
     other.lastTask == lastTask;

  @override
  int get hashCode =>
    id.hashCode +
    projectId.hashCode +
    inventoryId.hashCode +
    repositoryId.hashCode +
    environmentId.hashCode +
    viewId.hashCode +
    name.hashCode +
    playbook.hashCode +
    arguments.hashCode +
    description.hashCode +
    allowOverrideArgsInTask.hashCode +
    suppressSuccessAlerts.hashCode +
    app.hashCode +
    gitBranch.hashCode +
    type.hashCode +
    autorun.hashCode +
    surveyVars.hashCode +
    vaults.hashCode +
    lastTask.hashCode;

  factory Template.fromJson(Map<String, dynamic> json) => _$TemplateFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum TemplateTypeEnum {
  @JsonValue(r'')
  empty,
  @JsonValue(r'build')
  build,
  @JsonValue(r'deploy')
  deploy,
}


