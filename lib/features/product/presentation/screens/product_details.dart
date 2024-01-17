import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assignment_test/core/enums/enum_state.dart';
import 'package:assignment_test/features/product/presentation/providers/product_provider.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final int id = ModalRoute.of(context)!.settings.arguments as int;
      await Provider.of<ProductProvider>(context, listen: false).getProduct(id);
      
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.kBgColor,
      appBar: AppBar(
        // backgroundColor: AppColors.kBgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_right,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shop,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Consumer<ProductProvider>(
        builder: (context, value, child) {
          if (value.getProductState == States.loading) {
            return const CircularProgressIndicator();
          } else if (value.getProductState == States.error) {
            return const Text("Error Data");
          } else if (value.getProductState == States.success) {
            return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .35,
                padding: const EdgeInsets.only(bottom: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(value.product!.imageUrl),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 40, right: 14, left: 14),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  value.product!.name,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '\$${value.product!.price}',
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor consectetur tortor vitae interdum.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              'Related',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 110,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: value.product!.related.length,
                                itemBuilder: (context, index) => Container(
                                  margin: const EdgeInsets.only(right: 6),
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    // color: AppColors.kSmProductBgColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:  Center(
                                    child: Image(
                                      height: 70,
                                      image: NetworkImage(
                                          value.product!.related[index].imageUrl),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          // color: AppColors.kGreyColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
          }
          return const SizedBox();
          
        },
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(color: AppColors.kGreyColor),
              ),
              child: const Icon(
                Icons.favorite_sharp,
                size: 30,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: InkWell(
                onTap: () {
                  // productController.addToCart();
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    '+ Add to Cart',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  // child: Obx(
                  //   () => productController.isAddLoading.value
                  //       ? SizedBox(
                  //           width: 20,
                  //           height: 20,
                  //           child: CircularProgressIndicator(
                  //             color: Colors.white,
                  //             strokeWidth: 3,
                  //           ),
                  //         )
                  //       :
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
