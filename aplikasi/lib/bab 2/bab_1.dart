import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({super.key});

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Expanded',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('The container below dont use expansion'),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text('The container below uses espansion'),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
