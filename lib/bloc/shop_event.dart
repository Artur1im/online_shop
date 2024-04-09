part of 'shop_bloc.dart';

sealed class ShopEvent {}

class ShopFetchInitial extends ShopEvent {}

class ShopLoadMore extends ShopEvent {}

class ShowShop extends ShopEvent {
  final ShopModel shopModel;

  ShowShop({required this.shopModel});
}

// add
class ShopAdd extends ShopEvent {
  final ShopModel shopModel;

  ShopAdd({required this.shopModel});
}

// delete
class ShopDelete extends ShopEvent {
  final ShopModel shopModel;

  ShopDelete({required this.shopModel});
}

// update
class ShopUpdate extends ShopEvent {
  final ShopModel shopModel;

  ShopUpdate({required this.shopModel});
}
