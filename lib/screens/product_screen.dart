import 'package:flutter/material.dart';
import 'package:zero_waste/config/appTheme.dart';
import 'package:zero_waste/utils/appBottomNavigationBar/bottom_navigation_bar.dart';
import 'package:zero_waste/widgets/notification_widget.dart';
import 'package:zero_waste/widgets/product_builder.dart';

import '../widgets/Feed_app_bar_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const FeedAppBar(
            titleWidget: Text(
              'Product',
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            trailingWidget: NotificationWidget(),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: ElevatedButton(
                    onPressed: null,
                    style: ThemeHelper().buttonStyle(50.0, 10.0),
                    child: const Text(
                      'Active',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ElevatedButton(
                    onPressed: null,
                    style: ThemeHelper().buttonStyle(50.0, 10.0, Colors.grey),
                    child: const Text(
                      'Completed',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          const Expanded(child: ProductBuilder()),
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar().appBottomNavigationBar(2),
    );
  }
  // void changeIndex() => setState(() => selectedIndex = index);
}
