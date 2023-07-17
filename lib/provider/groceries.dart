import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppingshop/data/dummy_items.dart';

final groceriesProvider = Provider((ref) {
  return groceryItems;
});
