import 'package:flutter/cupertino.dart';

bool isBottom(ScrollController scrollController) {
  if (!scrollController.hasClients) return false;
  final maxScroll = scrollController.position.maxScrollExtent;
  final currentScroll = scrollController.offset;
  return currentScroll >= (maxScroll);
}
