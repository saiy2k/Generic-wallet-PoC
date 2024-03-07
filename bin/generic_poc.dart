import 'package:generic_poc/wallet/bitcoin_wallet.dart';
import 'package:generic_poc/generic_poc.dart' as generic_poc;
import 'package:generic_poc/wallet/lightning_wallet.dart';
import 'package:generic_poc/wallet/liquid_wallet.dart';
import 'package:generic_poc/wallet/wallet.dart';

void main(List<String> arguments) {
  // print('Hello world: ${generic_poc.calculate()}!');

  /*
  List<Wallet> wallets = [
    BitcoinWallet(id: 'btc_111', balance: 400),
    LiquidWallet(id: 'lq_321', balance: 4000),
    LightningWallet(id: 'ln_431', balance: 932.12),
  ];
  */

  List<Wallet> wallets = [
    BitcoinWallet.fromJson({'id': 'btc_111', 'balance': 400}),
    LiquidWallet.fromJson({'id': 'lq_321', 'balance': 4000}),
    LightningWallet.fromJson({'id': 'ln_431', 'balance': 932.12}),
  ];

  for (var wallet in wallets) {
    print('------------------------------');
    print('${wallet.id} (${wallet.getWalletType()})');
    print('------------------------------');
    wallet.sync('[electrum url]');
    print('Balance: ${wallet.balance}');
    print('Transactions: ${wallet.getTransactions()}');
    print('Stingify: ${wallet.toJson()}');

    print('');
  }
}
