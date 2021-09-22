import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  
  const Category(
      {required this.id, required this.title});
}

const Categories_data = const [
  Category(
    id: 'c1',
    title: 'All',
  ),
  Category(
    id: 'c2',
    title: 'Workshops',
  ),
  Category(
    id: 'c3',
    title: 'Tech',
  ),
  Category(
    id: 'c4',
    title: 'Conferences',
  ),
  Category(
    id: 'c5',
    title: 'Sports',
  ),
  Category(
    id: 'c6',
    title: 'Others',
  ),
];
