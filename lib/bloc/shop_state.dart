part of 'shop_bloc.dart';

sealed class ShopState {}

class ShopInitial extends ShopState {}

class ShopsFetchingLoadingState extends ShopState {}

class ShopFetchingErrorState extends ShopState {}

class ShopFetchingSuccessFulState extends ShopState {}
