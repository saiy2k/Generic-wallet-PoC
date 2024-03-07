enum WalletType { Bitcoin, Liquid, Lightning }

abstract class Wallet {
  String id = '';
  double balance = 0;
  bool backupTested = false;
  DateTime? lastBackupTested;

  WalletType getWalletType();
  List<Map<String, dynamic>> getTransactions();
  void sync(String electrumUrl);

  dynamic toJson();
}

/*
class Wallet {
  String id = '';
  WalletType getWalletType() {
    return WalletType.Bitcoin;
  }

  double getBalance() {
    return 0;
  }

  List<Map<String, dynamic>> getTransactions() {
    return [];
  }

  void sync(String electrumUrl) {}
}
*/
