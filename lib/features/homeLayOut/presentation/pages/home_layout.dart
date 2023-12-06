import 'package:assignment_test/features/homeLayOut/presentation/cubit/home_layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayOut extends StatefulWidget {
  static const routName = 'home layout';
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
              var snackBar = SnackBar(
                content: Text(state.failure.toString()),
                backgroundColor: Colors.red.withOpacity(.6),
                elevation: 0,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else if (state is LogInSuccess) {
              var snackBar =
                  const SnackBar(content: Text('Logedin successfully '));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else if (state is GetItemsFailureState) {
              var snackBar = SnackBar(
                content: Text(state.failure.toString()),
                backgroundColor: Colors.red.withOpacity(.6),
                elevation: 0,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          builder: (context, state) {
            return GestureDetector(
              onHorizontalDragStart: (details) {
                switched = false;
                startX = details.globalPosition.dx;
              },
              onHorizontalDragUpdate: (details) async {
                final deltaX = details.globalPosition.dx - startX;
                if (deltaX > 90.0) {
                  if (HomeLayoutCubit.get(context).tab - 1 >= 0 && !switched) {
                    controller.index = HomeLayoutCubit.get(context).tab - 1;
                    HomeLayoutCubit.get(context)
                        .switchTab(index: HomeLayoutCubit.get(context).tab - 1);
                    switched = true;
                  }
                } else if (deltaX < -90.0) {
                  if (HomeLayoutCubit.get(context).tab + 1 <= 2 && !switched) {
                    controller.index = HomeLayoutCubit.get(context).tab + 1;
                    HomeLayoutCubit.get(context)
                        .switchTab(index: HomeLayoutCubit.get(context).tab + 1);
                    switched = true;
                  }
                }
              },
              child: Scaffold(
                appBar: AppBar(
                    title: Text(widget.title),
                    bottom: TabBar(
                      onTap: (value) {
                        HomeLayoutCubit.get(context).switchTab(index: value);
                      },
                      isScrollable: true,
                      tabs: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: const Tab(
                            child: Text('Login'),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: const Tab(
                            child: Text('Items'),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: const Tab(
                            child: Text('Fix'),
                          ),
                        ),
                      ],
                      controller: controller,
                    )),
                body: SafeArea(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: HomeLayoutCubit.get(context).currentTab(),
                    ),
                  ),
                ),
              ),
            );
          },
        ));

/*
 return GestureDetector(
      onHorizontalDragStart: (details) => startX = details.globalPosition.dx,
      onHorizontalDragUpdate: (details) {
        final deltaX = details.globalPosition.dx - startX;
        if (deltaX > 50.0) {
          controller.animateTo(
              (controller.index + 1) % 3);
          startX = details.globalPosition.dx;
        } else if (deltaX < -50.0) {
          if (controller.index > 0) {
            controller.animateTo(controller.index - 1);
            startX = details.globalPosition.dx;
          }
        }
      },
      child: TabBar(
        tabs: widget.tabs,
        controller: controller,
      ),
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  child: Text('Items'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: const Tab(
                  child: Text('Fix'),
                ),
              ),
            ],
            onTap: (v) {
              setState(() {
                tab = v;
              });
            },
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _tabBars(tab),
          ),
        ),
      ),
    );
  */
  }
}
