import 'package:finalproject/core/utilts/Styles.dart';
import 'package:finalproject/featuers/Home/Widget/AboutItems.dart';
import 'package:finalproject/featuers/Home/Widget/HomeItems.dart';
import 'package:finalproject/featuers/Home/cubit%20Auth/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeItems(),
    AboutItems(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          var cubit = HomePageCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.sailing),
              backgroundColor: Colors.green[700],
              title: Row(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        cubit.model == null
                            ? 'Hi User'
                            : 'Hi , ${cubit.model?.userData?.name}  ',
                        style: Styles.textStyles18.copyWith(
                            color: Colors.black, fontWeight: FontWeight.normal),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              centerTitle: true,
            ),
            body: _widgetOptions.elementAt(_selectedIndex),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40.0, vertical: 8),
                  child: GNav(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    activeColor: Colors.black,
                    iconSize: 24,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    duration: const Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.grey[100]!,
                    color: Colors.black,
                    tabs: const [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.person,
                        text: 'About',
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                    onTabChange: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
