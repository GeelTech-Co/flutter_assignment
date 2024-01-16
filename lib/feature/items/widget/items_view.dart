part of '../items.dart';

class _ItemsView extends StatelessWidget {
  const _ItemsView({
    required this.items,
  });
  final List<ItemGeneral> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => context.go(
            AppRoutes.home + AppRoutes.itemDetails,
            extra: {'idItem': items.elementAt(index).id.toString()},
          ),
          child: Card(
            child: SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(items.elementAt(index).name),
                  Text('${items.elementAt(index).price} JD'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
