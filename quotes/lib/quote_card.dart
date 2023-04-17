import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  const QuoteCard({super.key, required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 6,),
            Text(
              quote.author,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8,),
            TextButton.icon(
              onPressed: delete, // calls the delete function when pressed
              label: const Text('Delete Quote'), // displays the text label
              icon: const Icon(Icons.delete), // displays the delete icon
            )
          ],
        ),
      ),
    );
  }
}