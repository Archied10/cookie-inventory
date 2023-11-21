import 'package:flutter/material.dart';
import 'package:cookie_inventory/models/item.dart';
import 'package:cookie_inventory/widgets/left_drawer.dart';

class LCDetailPage extends StatefulWidget {
  // const LCDetailPage({Key? key}) : super(key: key);
  final Item item;
  LCDetailPage({required this.item});

  @override
  _LCDetailPageState createState() => _LCDetailPageState();
}

class _LCDetailPageState extends State<LCDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Light Cone Detail',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${widget.item.fields.name}'),
            Text('Amount: ${widget.item.fields.amount}'),
            Text('Description: ${widget.item.fields.description}'),
            Text('Rarity: ${widget.item.fields.rarity}'),
            Text('Path: ${widget.item.fields.lcPath}'),
            Text('Base ATK: ${widget.item.fields.baseAtk}'),
            Text('Base HP: ${widget.item.fields.baseHp}'),
            Text('Base DEF: ${widget.item.fields.baseDef}'),

            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}