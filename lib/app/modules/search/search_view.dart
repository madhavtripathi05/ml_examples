import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ml_examples/app/common/widgets/custom_action.dart';
import 'package:ml_examples/app/common/widgets/custom_appbar.dart';
import 'package:ml_examples/app/modules/search/search_controller.dart';
import 'package:ml_examples/app/routes/app_pages.dart';
import 'package:ml_examples/app/utils/app_utils.dart';

class SearchView extends GetView<SearchController> {
  final sc = SearchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Search Anything',
        leadings: [
          CustomAction(() {
            Get.back();
          }, FlutterIcons.back_ant)
        ],
        actions: [
          CustomAction(() {
            Get.offNamed(Routes.HOME);
          }, FlutterIcons.home_ant)
        ],
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: buildSearchField(),
          ),
          Obx(
            () => SliverPadding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 25,
              ),
              sliver: sc.searchItems.length == 0
                  ? SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Center(
                          child: Text('no items found!'),
                        ),
                      ),
                    )
                  : SearchItemsList(),
            ),
          ),
        ],
      ),
    );
  }

  Container buildSearchField() {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 10, horizontal: Get.width > 500 ? Get.width * 0.25 : 20),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                  hintText: "Search an Item (i.e. Algorithm, Category etc)",
                  // hintStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none),
              onChanged: (val) {
                sc.search(val);
              },
            ),
          ),
          Icon(
            Icons.search,
            // color: Colors.black54,
          )
        ],
      ),
    );
  }
}

class SearchItemsList extends StatelessWidget {
  // final double itemHeight = 200;
  // final double itemWidth = Get.width / 2 - 100;
  final sc = SearchController();

  @override
  Widget build(BuildContext context) {
    //print('${pc.searchProducts.length}');
    //print('${Get.width}');
    return Obx(
      () => SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Get.width > 500 ? 2 : 1,
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 25.0,
            childAspectRatio: 0.9),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int i) {
            if (sc.searchItems.length == 0) {
              //print('No Products Found!');
              return Center(
                child: Text('No Products Found!'),
              );
            }
            return InkWell(
                child:
                    buildCard('title', 'https://picsum.photos/200/200', () {}),
                onTap: () {});
          },
          childCount: sc.searchItems.length ?? 0,
        ),
      ),
    );
  }

  Widget buildCard(String text, String imagePath, Function onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 7,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            buildSvg(imagePath, 100),
            Text(
              text,
              style: kBoldText,
            )
          ]),
        ),
      ),
    );
  }

  Widget buildSvg(String imagePath, double size) {
    return GetPlatform.isWeb || GetUtils.isURL(imagePath)
        ? Image.network(
            imagePath,
            width: size,
            height: size,
            fit: BoxFit.contain,
          )
        : SvgPicture.network(
            imagePath,
            width: size,
            height: size,
            fit: BoxFit.contain,
            placeholderBuilder: (_) => Container(
              width: 30,
              height: 30,
              padding: EdgeInsets.all(30),
              child: CircularProgressIndicator(),
            ),
          );
  }
}
