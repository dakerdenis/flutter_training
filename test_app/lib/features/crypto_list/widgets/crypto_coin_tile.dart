
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    Key? key,
    required this.coinName,

  }) :super(key: key);

  final String coinName;


  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);
    return ListTile(
      leading: Image.asset(
        'assets/images/bitcoin.png',
        height: 25,
        width: 25,
      ),
      title: Text(
        coinName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "2000\$",
        style: theme.textTheme.bodySmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coinName,
        );
      },
    );
  }
}
