import 'package:bhagavad_gita/headers.dart';
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
            "${listenable.allData[0]['verse_hindi']} - ${Globals.globals.range[data.toString()]['verse_number']}"),
      ),
      body: PageView.builder(
        itemCount: listenable.allData.length,
        itemBuilder: (context, index) => Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "lib/assets/images.jpeg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
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
        ),
      ),
    );
  }
}
