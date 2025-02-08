// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseModelImpl _$$ExpenseModelImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userID: json['userID'] as String,
      isExpense: _boolFromInt((json['isExpense'] as num).toInt()),
      title: json['title'] as String,
      amount: (json['amount'] as num).toDouble(),
      category: json['category'] as String,
      date: _dateFromString(json['date'] as String),
    );

Map<String, dynamic> _$$ExpenseModelImplToJson(_$ExpenseModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'userID': instance.userID,
      'isExpense': _boolToInt(instance.isExpense),
      'title': instance.title,
      'amount': instance.amount,
      'category': instance.category,
      'date': _dateToString(instance.date),
    };
