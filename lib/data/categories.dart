import 'package:flutter/material.dart';
import 'package:shoppingshop/models/category.dart';

enum Categories {
  vegetables,
  fruit,
  meat,
  dairy,
  sweets,
  carbs,
  spices,
  convenience,
  hygiene,
  other,
}

const categories = {
  Categories.vegetables: Category(
    id: 'Vegetables',
    title: 'Vegetables',
    color: Color.fromARGB(255, 0, 255, 128),
  ),
  Categories.fruit: Category(
    id: 'Fruit',
    title: 'Fruit',
    color: Color.fromARGB(255, 145, 255, 0),
  ),
  Categories.meat: Category(
    id: 'Meat',
    title: 'Meat',
    color: Color.fromARGB(255, 255, 102, 0),
  ),
  Categories.dairy: Category(
    id: 'Dairy',
    title: 'Dairy',
    color: Color.fromARGB(255, 0, 208, 255),
  ),
  Categories.carbs: Category(
    id: 'Dairy',
    title: 'Dairy',
    color: Color.fromARGB(255, 0, 60, 255),
  ),
  Categories.sweets: Category(
    id: 'Sweets',
    title: 'Sweets',
    color: Color.fromARGB(255, 255, 149, 0),
  ),
  Categories.spices: Category(
    id: 'Spices',
    title: 'Spices',
    color: Color.fromARGB(255, 255, 187, 0),
  ),
  Categories.convenience: Category(
    id: 'Convenience',
    title: 'Convenience',
    color: Color.fromARGB(255, 191, 0, 255),
  ),
  Categories.hygiene: Category(
    id: 'Hygiene',
    title: 'Hygiene',
    color: Color.fromARGB(255, 149, 0, 255),
  ),
  Categories.other: Category(
    id: 'Other',
    title: 'Other',
    color: Color.fromARGB(255, 0, 225, 255),
  ),
};
