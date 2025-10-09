part of '../field/field_bloc.dart';

class TextFieldBlocState<ExtraData>
    extends FieldBlocState<String, String, ExtraData?> {
  TextFieldBlocState({
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
    super.toJson,
    super.extraData,
  });

  /// Parse the [value] to [int].
  /// if the value is an [int] returns an [int],
  /// else returns `null`.
  int? get valueToInt => int.tryParse(value);

  /// Parse the [value] to [double].
  /// if the value is a [double] returns a [double],
  /// else returns `null`.
  double? get valueToDouble => double.tryParse(value);

  @override
  TextFieldBlocState<ExtraData> copyWith({
    bool? isValueChanged,
    Param<String>? initialValue,
    Param<String>? updatedValue,
    Param<String>? value,
    Param<Object?>? error,
    bool? isDirty,
    Param<Suggestions<String>?>? suggestions,
    bool? isValidated,
    bool? isValidating,
    Param<FormBloc<dynamic, dynamic>?>? formBloc,
    Param<ExtraData?>? extraData,
  }) {
    return TextFieldBlocState(
      isValueChanged: isValueChanged ?? this.isValueChanged,
      initialValue: initialValue.or(this.initialValue),
      updatedValue: updatedValue.or(this.updatedValue),
      value: value == null ? this.value : value.value,
      error: error == null ? this.error : error.value,
      isDirty: isDirty ?? this.isDirty,
      suggestions: suggestions == null ? this.suggestions : suggestions.value,
      isValidated: isValidated ?? this.isValidated,
      isValidating: isValidating ?? this.isValidating,
      formBloc: formBloc == null ? this.formBloc : formBloc.value,
      name: name,
      toJson: _toJson,
      extraData: extraData == null ? this.extraData : extraData.value,
    );
  }
}
