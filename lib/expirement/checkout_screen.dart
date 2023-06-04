import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Order Summary',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16.0),
            _buildOrderItem(context, 'Item 1', 2, 10.0),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal:',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  '\$60.00',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping:',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  '\$5.00',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  '\$65.00',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderItem(
      BuildContext context, String name, int quantity, double price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$name x $quantity',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          '\$${price * quantity}',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
