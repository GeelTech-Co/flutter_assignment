import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/homeLayOut/presentation/cubit/home_layout_cubit.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/tabs/fix.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/tabs/items.dart';
import 'package:assignment_test/features/homeLayOut/presentation/pages/tabs/login.dart';
import 'package:assignment_test/features/homeLayOut/presentation/widgets/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayOut extends StatefulWidget {
  const HomeLayOut({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeLayOut> createState() => HomeLayOutState();
}

class HomeLayOutState extends State<HomeLayOut>
    with SingleTickerProviderStateMixin {
  bool switched = false;
  double startX = 0.0;
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeLayoutCubit(),
        child: BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
          listener: (context, state) {
            if (state is LogInFailureState) {
              snackBarWidget(true, state.failure.toString(), context);
            } else if (state is LogInSuccess) {
              snackBarWidget(false, AppStrings.loggedIn, context);
            } else if (state is GetItemsFailureState) {
              snackBarWidget(true, state.failure.toString(), context);
            }
          },
          builder: (context, state) {
            return DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: const Tab(
                          child: Text(AppStrings.logIn),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: const Tab(
                          child: Text(AppStrings.items),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: const Tab(
                          child: Text(AppStrings.fix),
                        ),
                      ),
                    ],
                  ),
                ),
                body: const TabBarView(
                  children: [LoginTab(), ItemsTab(), FixTab()],
                ),
              ),
            );
          },
        ));
  }
}
