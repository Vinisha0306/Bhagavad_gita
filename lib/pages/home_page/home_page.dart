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
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/736x/06/81/40/0681406912e7e70adc035f4b1c286684.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          listenable.allData.isEmpty
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
                      color: Colors.white.withOpacity(0.5),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        margin: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Text(
                          listenable.allData[0]['chapters']
                              [(index + 1).toString()]['name'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
