import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'currency_model.dart';
import 'method_model.dart';
import 'withdraw_model.dart';

class AccountInfoModel extends Equatable {
  final CurrencyModel? currencyIcon;
  final MethodModel? info;

  const AccountInfoModel({
    this.currencyIcon,
    this.info,
  });

  AccountInfoModel copyWith({
    CurrencyModel? currencyIcon,
    WithdrawModel? withdraw,
    MethodModel? info,
  }) {
    return AccountInfoModel(
      currencyIcon: currencyIcon ?? this.currencyIcon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currency_icon': currencyIcon!.toMap(),
      'method': info!.toMap(),
    };
  }

  factory AccountInfoModel.fromMap(Map<String, dynamic> map) {
    return AccountInfoModel(
      currencyIcon: map['currency_icon'] != null
          ? CurrencyModel.fromMap(map['currency_icon'] as Map<String, dynamic>)
          : null,
      info: map['method'] != null
          ? MethodModel.fromMap(map['method'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AccountInfoModel.fromJson(String source) =>
      AccountInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        currencyIcon!,
        info!,
      ];
}
