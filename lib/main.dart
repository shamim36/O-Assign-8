import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) {
        return MaterialApp(
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white)),
          title: 'Assignment 08',
          home: HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myItems = [
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          final isLandscape = orientation == Orientation.landscape;
          final crossAxisCount = isLandscape ? 3 : 3;

          return isLandscape
              ? Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipOval(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          child: Image.network(
                              'https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                            child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet turpis eu enim tristique, in iaculis libero porttitor.'),
                          ),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: crossAxisCount,
                                crossAxisSpacing: 0.8,
                                childAspectRatio: isLandscape ? 1.1 : .8,
                              ),
                              itemCount: myItems.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  child: Container(
                                    margin: const EdgeInsets.all(5),
                                    width: double.infinity,
                                    height: isLandscape ? 100 : 150,
                                    child: Image.network(
                                      myItems[index]['img']!,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    ClipOval(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        child: Image.network(
                            'https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1',
                            fit: BoxFit.cover),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet turpis eu enim tristique, in iaculis libero porttitor.'),
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          crossAxisSpacing: 0.8,
                          childAspectRatio: isLandscape ? 0.9 : 1.1,
                        ),
                        itemCount: myItems.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              width: double.infinity,
                              height: isLandscape ? 100 : 150,
                              child: Image.network(
                                myItems[index]['img']!,
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
