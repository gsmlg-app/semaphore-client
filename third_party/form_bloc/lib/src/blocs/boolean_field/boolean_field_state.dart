part of '../field/field_bloc.dart';

class BooleanFieldBlocState<ExtraData>
    extends FieldBlocState<bool, bool, ExtraData?> {
  BooleanFieldBlocState({
    required super.isValueChanged,
    required super.initialValue,
    required super.updatedValue,
    required super.value,
    required super.error,
    required super.isDirty,
    required super.suggestions,
    required super.isValidated,
    required super.isValidating,
    super.formBloc,
    required super.name,
    List<dynamic> additionalProps = const <dynamic>[],
    super.toJson,
    super.extraData,
  });

  @override
  BooleanFieldBlocState<ExtraData> copyWith({
    bool? isValueChanged,
    Param<bool>? initialValue,
    Param<bool>? updatedValue,
    Param<bool>? value,
    Param<Object?>? error,
    bool? isDirty,
    Param<Suggestions<bool>?>? suggestions,
    bool? isValidated,
    bool? isValidating,
    Param<FormBloc<dynamic, dynamic>?>? formBloc,
    Param<ExtraData?>? extraData,
  }) {
    return BooleanFieldBlocState(
      isValueChanged: isValueChanged ?? this.isValueChanged,
      initialValue: initialValue.or(this.initialValue),
      updatedValue: updatedValue.or(this.updatedValue),
      value: value == null ? this.value : value.value,
      error: error == null ? this.error : error.value,
      suggestions: suggestions == null ? this.suggestions : suggestions.value,
      isDirty: isDirty ?? this.isDirty,
      isValidated: isValidated ?? this.isValidated,
      isValidating: isValidating ?? this.isValidating,
      formBloc: formBloc == null ? this.formBloc : formBloc.value,
      name: name,
      toJson: _toJson,
      extraData: extraData == null ? this.extraData : extraData.value,
    );
  }
}
