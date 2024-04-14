import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class QuoteCard extends StatefulWidget {
  const QuoteCard({super.key});

  @override
  State<QuoteCard> createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  String quote = "";
  Future<void> fetchQuote() async {
    final response =
        await http.get(Uri.parse('https://api.quotable.io/random'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      setState(() {
        quote = data['content'];
      });
    } else {
      throw Exception('Failed to load quote');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: const Color.fromARGB(255, 211, 142, 31),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        title: Row(
          children: [
            Expanded(
              child: Text(
                quote,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: fetchQuote,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
