import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'wallet.dart';

part 'lightning_wallet.freezed.dart';
part 'lightning_wallet.g.dart';

@freezed
class LightningWallet extends Wallet with _$LightningWallet {
  factory LightningWallet({
    required String id,
    required double balance,
    @Default(false) bool backupTested,
    DateTime? lastBackupTested,
  }) = _LightningWallet;
  LightningWallet._();

  factory LightningWallet.fromJson(Map<String, dynamic> json) => _$LightningWalletFromJson(json);

  @override
  WalletType getWalletType() {
    return WalletType.Lightning;
  }

  @override
  List<Map<String, dynamic>> getTransactions() {
    return [
      {
        'id': 'l1',
        'amount': 900.02,
        'date': '2023-01-01',
      },
      {
        'id': 'l2',
        'amount': 352.1,
        'date': '2023-01-02',
      }
    ];
  }

  @override
  void sync(String electrumUrl) {
    print('Syncing with $electrumUrl via ldk');
  }
}
