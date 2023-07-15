import 'package:flutter/material.dart';

class DynamicTable extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  DynamicTable({required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.blueGrey,
          cardColor: Colors.white,
        ),
        child: DataTable(
          headingRowColor: MaterialStateProperty.all(Colors.grey[200]),
          headingTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          dataRowColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return Theme.of(context).colorScheme.primary.withOpacity(0.08);
            }
            return null; // Use the default value.
          }),
          columns: data.isEmpty
              ? []
              : data[0]
                  .keys
                  .map((column) => DataColumn(label: Text(column.toString())))
                  .toList(),
          rows: data.map((row) {
            return DataRow(
              cells: row.values.map((value) {
                return DataCell(
                  Text(value.toString()),
                );
              }).toList(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
