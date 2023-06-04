import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmOrder extends StatelessWidget {
  final String address = "Pick-Up";
  final String phone = "09565310135";
  final double total = 50;
  final double delivery = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Order"),
        backgroundColor: Color.fromARGB(255, 76, 76, 76),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Subtotal"),
              Text("₱ $total"),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Delivery fee"),
              Text("₱ $delivery"),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text("₱ ${total + delivery}",
                  style: Theme.of(context).textTheme.headline6),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Delivery Options".toUpperCase())),
          Column(
            children: <Widget>[
              RadioListTile(
                selected: true,
                value: address,
                groupValue: address,
                title: Text(address),
                onChanged: (value) {},
              ),
              RadioListTile(
                selected: false,
                value: "New Address",
                groupValue: address,
                title: Text("Choose new delivery address"),
                onChanged: (value) {},
              ),
              Container(
                  color: Colors.grey.shade200,
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Text("Contact Number".toUpperCase())),
              RadioListTile(
                selected: true,
                value: phone,
                groupValue: phone,
                title: Text(phone),
                onChanged: (value) {},
              ),
              RadioListTile(
                selected: false,
                value: "New Phone",
                groupValue: phone,
                title: Text("Choose new contact number"),
                onChanged: (value) {},
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Payment Option".toUpperCase())),
          RadioListTile(
            groupValue: false,
            value: true,
            title: Text("Cash on Delivery"),
            onChanged: (value) {},
          ),
          RadioListTile(
            groupValue: true,
            value: true,
            title: Text("Gcash"),
            onChanged: (value) {},
          ),
          RadioListTile(
            groupValue: true,
            value: false,
            title: Text("PayMaya"),
            onChanged: (value) {},
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
              ),
              onPressed: () => {},
              child: Text(
                "Confirm",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
