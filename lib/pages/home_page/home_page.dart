import 'package:bhagavad_gita/headers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BhagavadGita listenable = Provider.of<BhagavadGita>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          listenable.allData[0]['chapter_hindi'],
        ),
      ),
      body: listenable.allData.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: 18,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.chaptersPage,
                      arguments: index + 1);
                },
                child: Card(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(listenable.allData[0]['chapters']
                        [(index + 1).toString()]['name']),
                  ),
                ),
              ),
            ),
    );
  }
}
