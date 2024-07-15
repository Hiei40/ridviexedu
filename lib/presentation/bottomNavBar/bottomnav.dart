import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/bottom_nav_bar_cubit.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        BottomNavBarCubit cubit = BottomNavBarCubit.get(context);
        return Scaffold(
          body: PageView(
            controller: controller,
            onPageChanged: (index) {
              cubit.changeitem(index);
            },
            children: const <Widget>[
              Center(child: Text('Events Page')),
              Center(child: Text('Search Page')),
              Center(child: Text('Other Page')),
              Center(child: Text('Another Page')),
            ],
          ),
          bottomNavigationBar: Container(
            color: const Color(0xff000000).withOpacity(0.01),
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.event,
                    color: cubit.selectedIndex == 0 ? Colors.blue : Colors.cyanAccent,
                  ),
                  onTap: () {
                    cubit.changeitem(0);
                    controller.jumpToPage(0);
                  },
                ),
                GestureDetector(
                  child: Icon(
                    Icons.search,
                    color: cubit.selectedIndex == 1 ? Colors.blue : Colors.cyanAccent,
                  ),
                  onTap: () {
                    cubit.changeitem(1);
                    controller.jumpToPage(1);
                  },
                ),
                GestureDetector(
                  child: Icon(
                    Icons.other_houses,
                    color: cubit.selectedIndex == 2 ? Colors.blue : Colors.cyanAccent,
                  ),
                  onTap: () {
                    cubit.changeitem(2);
                    controller.jumpToPage(2);
                  },
                ),
                GestureDetector(
                  child: Icon(
                    Icons.pages,
                    color: cubit.selectedIndex == 3 ? Colors.blue : Colors.cyanAccent,
                  ),
                  onTap: () {
                    cubit.changeitem(3);
                    controller.jumpToPage(3);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
