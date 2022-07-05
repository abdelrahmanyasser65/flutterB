import 'package:flutter/material.dart';
import 'package:flutterb/state_management/provider_example2/providerE2.dart';
import 'package:provider/provider.dart';

class HomepageCounter extends StatelessWidget {
  const HomepageCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProviderE2(),
      builder: (ctx, _) {
        var provider = Provider.of<ProviderE2>(ctx);
        return Scaffold(
          appBar: AppBar(
            title: const Text("Provider Example 2"),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("You have pushed the button "),
                Text(
                  '${ctx.read<ProviderE2>().counter}',
                  style: const TextStyle(fontSize: 50),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => provider.change(),
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
