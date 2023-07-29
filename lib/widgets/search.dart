import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintText: "search",
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(45),
          ),
        ),
      ),
    );
  }
}
