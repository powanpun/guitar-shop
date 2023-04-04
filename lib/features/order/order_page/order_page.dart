import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guitar_shop/core/helper/bloc/network_connection_bloc.dart';
import 'package:guitar_shop/core/helper/is_bottom.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/core/widgets/no_connection.dart';
import 'package:guitar_shop/features/order/bloc/order_bloc.dart';
import 'package:guitar_shop/features/order/order_item/order_item.dart';
import 'package:guitar_shop/features/search/search_page/search_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _scrollController = ScrollController();
  void _onScroll() {
    if (isBottom(_scrollController)) {
      context.read<OrderBloc>().add(const GetNextOrders());
    }
  }

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Order History"),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<OrderBloc>().add(const GetAllOrders());
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<NetworkConnectionBloc, NetworkConnectionState>(
              builder: (context, state) {
                if (state is ConnectionFailure) {
                  return const NoConnection();
                } else {
                  return BlocBuilder<OrderBloc, OrderState>(
                    builder: (context, state) {
                      if (state is OrderLoaded) {
                        if (state.orderModel.isNotEmpty) {
                          return Container(
                            color: ColorManager.white,
                            height: MediaQuery.of(context).size.height - 120,
                            child: ListView.builder(
                              controller: _scrollController,
                              itemCount: state.orderModel.length,
                              itemBuilder: (context, index) {
                                return OrderItem(
                                  orderModel: state.orderModel[index],
                                );
                              },
                            ),
                          );
                        } else {
                          return Column(
                            children: [
                              const NoItemWidget(
                                msg: "You have no order histry.",
                              ),
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<OrderBloc>()
                                      .add(const GetAllOrders());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: CustomText(
                                    title: "retry",
                                    color: ColorManager.skyBlue,
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                      } else if (state is OrderLoadError) {
                        return Text(state.errorMsg);
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  );
                }
              },
            ),
          ),
        ));
  }
}
