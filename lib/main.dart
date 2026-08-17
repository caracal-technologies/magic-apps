import 'package:flutter/material.dart';

void main() {
  runApp(const MagicApps());
}

class MagicApps extends StatelessWidget {
  const MagicApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MagicAppsHome(),
    );
  }
}

class MagicAppsHome extends StatelessWidget {
  const MagicAppsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final sidebarWidth = constraints.maxWidth < 600 ? 140.0 : 220.0;

          return Row(
            children: [
              Container(
                width: sidebarWidth,
                height: double.infinity,
                padding: const EdgeInsets.all(12),
                color: const Color(0xFF171717),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('App Magic'),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: ColoredBox(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'PASAKHABO',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}