import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  static const String name = '/add_new_product_screen';

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Product'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildProductForm(),
      ),
    );
  }

  Widget _buildProductForm() {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _nameTEController,
            decoration: InputDecoration(
              labelText: 'product name',
              hintText: 'Name',
            ),
            validator: (String? value) {
              if (value?.trim().isNotEmpty ?? true) {
                return 'Enter Product Name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _priceTEController,
            decoration: InputDecoration(
              labelText: 'product price',
              hintText: 'Price',
            ),
            validator: (String? value) {
              if (value?.trim().isNotEmpty ?? true) {
                return 'Enter Product price';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _totalTEController,
            decoration: InputDecoration(
              labelText: 'product total price',
              hintText: 'Total Price',
            ),
            validator: (String? value) {
              if (value?.trim().isNotEmpty ?? true) {
                return 'Enter Product Total price';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _quantityTEController,
            decoration: InputDecoration(
              labelText: 'product quantity',
              hintText: 'Quantity',
            ),
            validator: (String? value) {
              if (value?.trim().isNotEmpty ?? true) {
                return 'Enter Product Quantity';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _imageTEController,
            decoration: InputDecoration(
              labelText: 'product image',
              hintText: 'Image',
            ),
            validator: (String? value) {
              if (value?.trim().isNotEmpty ?? true) {
                return 'Enter Product Image';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _codeTEController,
            decoration: InputDecoration(
              labelText: 'product code',
              hintText: 'Code',
            ),
            validator: (String? value) {
              if (value?.trim().isNotEmpty ?? true) {
                return 'Enter Product Code';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Update Product'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameTEController.dispose();
    _codeTEController.dispose();
    _imageTEController.dispose();
    _priceTEController.dispose();
    _quantityTEController.dispose();
    _totalTEController.dispose();
    super.dispose();
  }
}
