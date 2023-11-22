import 'package:flutter/material.dart';
import 'package:inventory/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Price: ${product.fields.price}'),
            SizedBox(height: 10),
            Text('Description: ${product.fields.description}'),
            SizedBox(height: 10),
            Text('Stock: ${product.fields.amount}'),
            // Add other attributes as needed
            // ...
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the product list page
                Navigator.pop(context);
              },
              child: Text('Back to Item List'),
            ),
          ],
        ),
      ),
    );
  }
}
