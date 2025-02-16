import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _addNewProductInProgess = false;

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
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: 'product name',
              hintText: 'Name',
            ),
            validator: (String? value) {
              if (value
                  ?.trim()
                  .isNotEmpty ?? true) {
                return 'Enter Product Name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _priceTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'product price',
              hintText: 'Price',
            ),
            validator: (String? value) {
              if (value
                  ?.trim()
                  .isNotEmpty ?? true) {
                return 'Enter Product price';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _totalTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'product total price',
              hintText: 'Total Price',
            ),
            validator: (String? value) {
              if (value
                  ?.trim()
                  .isNotEmpty ?? true) {
                return 'Enter Product Total price';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _quantityTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'product quantity',
              hintText: 'Quantity',
            ),
            validator: (String? value) {
              if (value
                  ?.trim()
                  .isNotEmpty ?? true) {
                return 'Enter Product Quantity';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _imageTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: 'product image',
              hintText: 'Image',
            ),
            validator: (String? value) {
              if (value
                  ?.trim()
                  .isNotEmpty ?? true) {
                return 'Enter Product Image';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _codeTEController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: 'product code',
              hintText: 'Code',
            ),
            validator: (String? value) {
              if (value
                  ?.trim()
                  .isNotEmpty ?? true) {
                return 'Enter Product Code';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Visibility(
            visible:_addNewProductInProgess==false ,
            replacement: Center(
              child: CircularProgressIndicator(),
            ),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _addNewProduct();
                }
              },
              child: Text('Update Product'),
            ),
          ),
        ],
      ),
    );
  }


  Future<void> _addNewProduct() async {
    _addNewProductInProgess = true;
    setState(() {});
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');
    Map<String, dynamic> requestBoody = {
      "ProductName": _nameTEController.text.trim(),
      "ProductCode": _codeTEController.text.trim(),
      "Img": _imageTEController.text.trim(),
      "UnitPrice": _priceTEController.text.trim(),
      "Qty": _quantityTEController.text.trim(),
      "TotalPrice": _totalTEController.text.trim(),
      "CreatedDate": "2025-02-03T12:24:27.971Z",
      "_id": "67aa2c712ce5af0c13954042"
    };

    Response response = await post(uri,
      headers: {
        'Content-type': 'application/json'
      },
      body: jsonEncode(requestBoody),);
    print(response.statusCode);
    print(response.body);
    _addNewProductInProgess=false;
    setState(() {

    });
    if (response.statusCode == 200) {
      _clearTextFields();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('New Product added!'),),);
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('New Product add failed! try again.'),),);
    }
  }

  void _clearTextFields() {
    _nameTEController.clear();
    _codeTEController.clear();
    _imageTEController.clear();
    _priceTEController.clear();
    _quantityTEController.clear();
    _totalTEController.clear();
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
