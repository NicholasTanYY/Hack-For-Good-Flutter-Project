import 'package:flutter/material.dart';
import './Post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostForm extends StatefulWidget {
  const PostForm({super.key});
  @override
  State<PostForm> createState() => _PostItems();
}

class _PostItems extends State<PostForm> {
  void displayPost(generalIdea, detail) {
    setState(() {
      String ideaStr = generalIdea;
      String detailStr = detail;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController ideaInput = TextEditingController();
    final TextEditingController detailsInput = TextEditingController();
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      elevation: 16,
      child: ListView(shrinkWrap: true, children: <Widget>[
        const SizedBox(height: 20),
        const Center(
            child: Text(
          'CREATE A NEW POST',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        )),
        const SizedBox(height: 20),
        TextFormField(
            controller: ideaInput,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
            decoration: const InputDecoration(
                labelText: 'Input your general idea',
                contentPadding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black)))),
        TextFormField(
            controller: detailsInput,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
            decoration: const InputDecoration(
                labelText: 'Give more details here',
                contentPadding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 100.0),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black)))),

        // SizedBox(height: 20),
        FloatingActionButton.extended(
            backgroundColor: const Color(0xff03dac6),
            foregroundColor: Colors.black,
            onPressed: () {
              displayPost(ideaInput.text, detailsInput.text);
            },
            icon: const Icon(Icons.add),
            label: const Text('Post'))
      ]),
    );
  }
}
