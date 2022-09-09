// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:first_app/pages/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:first_app/models/catalog.dart';
import 'package:first_app/pages/home_detail_page.dart';

import '../../models/cart.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items?.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items![index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailPage(
                  catalog: catalog,
                ),
              ),
            ),
            child: CatalogItem(catalog: catalog),
          );
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(context.accentColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: Vx.mH8,
                  children: [
                    "\$${catalog.price}".text.xl.bold.make(),
                    AddToCart(catalog: catalog),
                  ])
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
