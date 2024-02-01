part of 'shop_bloc.dart';

@immutable
sealed class ShopEvent {}

class ShopFetchInitial extends ShopEvent {}

class ShopLoadMore extends ShopEvent {}

class ShowShop extends ShopEvent {
  final ShopModel shopModel;

  ShowShop({required this.shopModel});
}
