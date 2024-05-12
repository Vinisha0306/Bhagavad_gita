import 'package:bhagavad_gita/headers.dart';
import 'package:bhagavad_gita/utils/global.dart';
import 'package:flutter/cupertino.dart';

class ChaptersPage extends StatelessWidget {
  ChaptersPage({super.key});

  @override
  Widget build(BuildContext context) {
    int dataindex = ModalRoute.of(context)!.settings.arguments as int;

    BhagavadGita listenable = Provider.of<BhagavadGita>(context);
    BhagavadGita unlistenable =
        Provider.of<BhagavadGita>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
            listenable.allData[0]['chapters'][dataindex.toString()]['name']),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/bg2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  listenable.allData[0]['chapters'][dataindex.toString()]
                      ['chapter_summary'],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  listenable.allData[0]['verse_hindi'],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: listenable.allData[0]['chapters']
                        [dataindex.toString()]['verses_count'],
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.detailspage,
                            arguments: index + 1);

                        Globals.globals.range = listenable.allData[0]['verses']
                            [dataindex.toString()];
                      },
                      child: Card(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: Text(
                            listenable.allData[0]['verses']
                                    [dataindex.toString()]
                                [(index + 1).toString()]['text'],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
