// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitcoin_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BitcoinWalletImpl _$$BitcoinWalletImplFromJson(Map<String, dynamic> json) =>
    _$BitcoinWalletImpl(
      id: json['id'] as String,
      balance: (json['balance'] as num).toDouble(),
      backupTested: json['backupTested'] as bool? ?? false,
      lastBackupTested: json['lastBackupTested'] == null
          ? null
          : DateTime.parse(json['lastBackupTested'] as String),
    );

Map<String, dynamic> _$$BitcoinWalletImplToJson(_$BitcoinWalletImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'backupTested': instance.backupTested,
      'lastBackupTested': instance.lastBackupTested?.toIso8601String(),
    };
