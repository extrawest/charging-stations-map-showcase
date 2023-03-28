// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletModel _$$_WalletModelFromJson(Map<String, dynamic> json) =>
    _$_WalletModel(
      balance: (json['balance'] as num).toDouble(),
      history: (json['history'] as List<dynamic>)
          .map((e) => WalletHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WalletModelToJson(_$_WalletModel instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'history': instance.history,
    };
