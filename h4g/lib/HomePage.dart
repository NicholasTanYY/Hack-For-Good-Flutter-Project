import 'package:flutter/material.dart';
import 'package:h4g/Button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController IdeaInput = TextEditingController();
    TextEditingController DetailsInput = TextEditingController();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('Home')),
              Tab(child: Text('Profile Page')),
              Tab(child: Text('Collaborations')),
            ],
          ),
          title: const Text('Home page'),
        ),
        floatingActionButton: const Button(),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
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
                          controller: IdeaInput,
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: const InputDecoration(
                              labelText: 'Input your general idea',
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.black)))),
                      TextFormField(
                          controller: DetailsInput,
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: const InputDecoration(
                              labelText: 'Give more details here',
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 100.0),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.black)))),

                      // SizedBox(height: 20),
                    ]),
                  );
                },
              );
            },
            child: Text('Show dialog'),
          ),
        ),
      ),
    );
  }
}
