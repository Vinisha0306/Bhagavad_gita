import 'package:bhagavad_gita/headers.dart';
import 'package:flutter/cupertino.dart';
import '../../utils/global.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    BhagavadGita listenable = Provider.of<BhagavadGita>(context);

    dynamic data = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${listenable.allData[0]['verse_hindi']}-${Globals.globals.range[data.toString()]['verse_number']}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      listenable.allData[0]['verse_hindi'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      Globals.globals.range[data.toString()]['text'],
                    ),
                    Text(
                      listenable.allData[0]['verse_meaning_hindi'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      Globals.globals.range[data.toString()]['meaning'],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      listenable.allData[0]['word_meaning_hindi'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      Globals.globals.range[data.toString()]['word_meanings'],
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                data = data + 1;
                setState(() {});
              },
              icon: const Icon(
                CupertinoIcons.arrow_right_circle,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
