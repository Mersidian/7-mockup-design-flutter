import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Controllers/product_controller.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: Image.asset(
                products[index].imageUrl,
                width: 160.0,
                height: 160.0,
              ),
              title: Text(
                products[index].name,
                style: GoogleFonts.itim(
                    textStyle: const TextStyle(
                  fontSize: 20,
                )),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    products[index].description,
                    style: GoogleFonts.itim(
                        textStyle: const TextStyle(
                            fontSize: 11,
                            color: Color.fromRGBO(151, 151, 151, 1))),
                  ),
                  Text(
                    '${products[index].price}฿',
                    style: GoogleFonts.itim(
                        textStyle: const TextStyle(
                            fontSize: 32,
                            color: Color.fromRGBO(0, 67, 156, 1))),
                  ),
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded,
                  color: Color.fromRGBO(160, 160, 160, 1)),
            ),
            const Divider(height: 1.0),
          ],
        );
      },
    );
  }
}


