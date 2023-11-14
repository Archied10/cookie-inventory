import 'package:flutter/material.dart';
import 'package:cookie_inventory/widgets/left_drawer.dart';

final List<LightCone> items = [];

class LightCone {
  String name;
  int amount;
  String description;
  int rarity;
  String lc_path;
  int base_atk;
  int base_hp;
  int base_def;

  LightCone({
    required this.name,
    required this.amount,
    required this.description,
    required this.rarity,
    required this.lc_path,
    required this.base_atk,
    required this.base_def,
    required this.base_hp
  });
}

class LCListPage extends StatelessWidget {
  const LCListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Light Cone List',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Amount')),
            DataColumn(label: Text('Description')),
            DataColumn(label: Text('Rarity')),
            DataColumn(label: Text('Path')),
            DataColumn(label: Text('Base ATK')),
            DataColumn(label: Text('Base HP')),
            DataColumn(label: Text('Base DEF')),
          ],
          rows: items.map((item) {
            return DataRow(cells: [
              DataCell(Text(item.name)),
              DataCell(Text(item.amount.toString())),
              DataCell(Text(item.description)),
              DataCell(Text(item.rarity.toString())),
              DataCell(Text(item.lc_path)),
              DataCell(Text(item.base_atk.toString())),
              DataCell(Text(item.base_hp.toString())),
              DataCell(Text(item.base_def.toString())),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}