import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks3/BusinessLogic/chooserBloc/bloc/chooser_bloc.dart';
import 'package:tasks3/presentation/chooserScreen/widgets/bottomNavItems.dart';
import 'package:tasks3/presentation/chooserScreen/widgets/bottomNavScreens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChooserBloc, ChooserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              bottomNavScreens.elementAt(state.tabIndex),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItem,
            currentIndex: state.tabIndex,
            onTap: (index) {
              BlocProvider.of<ChooserBloc>(context)
                  .add(TabChange(tabindex: index));
            },
          ),
        );
      },
    );
  }
}
