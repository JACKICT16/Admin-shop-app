import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:shop_multi_web_admin/views/screens/side_bar_screens/categories_screen.dart';
import 'package:shop_multi_web_admin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:shop_multi_web_admin/views/screens/side_bar_screens/orders_screen.dart';
import 'package:shop_multi_web_admin/views/screens/side_bar_screens/products_screen.dart';
import 'package:shop_multi_web_admin/views/screens/side_bar_screens/upload_banner.dart';
import 'package:shop_multi_web_admin/views/screens/side_bar_screens/venders_screen.dart';
import 'package:shop_multi_web_admin/views/screens/side_bar_screens/withdraw_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainScreen> {
  Widget _selectedItem = DashboardScreen();

  screenSlector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = DashboardScreen();
        });

        break;
      case VendorScreen.routeName:
        setState(() {
          _selectedItem = VendorScreen();
        });

        break;

      case WithdrawScreen.routeName:
        setState(() {
          _selectedItem = WithdrawScreen();
        });

        break;
      case OrderScreen.routeName:
        setState(() {
          _selectedItem = OrderScreen();
        });

        break;
      case CategoriesScreen.routeName:
        setState(() {
          _selectedItem = CategoriesScreen();
        });

        break;
      case ProductScreen.routeName:
        setState(() {
          _selectedItem = ProductScreen();
        });

        break;

      case UploadBannerScreen.routeName:
        setState(() {
          _selectedItem = UploadBannerScreen();
        });

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
        backgroundColor: Colors.white,
        sideBar: SideBar(
          items: [
            AdminMenuItem(
              title: 'Dashboard',
              icon: Icons.dashboard,
              route: DashboardScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Vendors',
              icon: CupertinoIcons.person_3,
              route: VendorScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Withdraw',
              icon: CupertinoIcons.money_dollar,
              route: WithdrawScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Orders',
              icon: CupertinoIcons.shopping_cart,
              route: OrderScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Categories',
              icon: Icons.category,
              route: CategoriesScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Products',
              icon: Icons.shop,
              route: ProductScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Upload Banners',
              icon: CupertinoIcons.add,
              route: UploadBannerScreen.routeName,
            ),
          ],
          selectedRoute: '',
          onSelected: (item) {
            screenSlector(item);
          },
          header: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xff444444),
            child: const Center(
              child: Text(
                'PSU Store Panel',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          footer: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xff444444),
            child: const Center(
              child: Text(
                'footer',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: _selectedItem);
  }
}
