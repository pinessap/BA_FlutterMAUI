import 'package:flutter/material.dart';

class MathPage extends StatefulWidget {
  const MathPage({Key? key}) : super(key: key);

  @override
  _MathPageState createState() => _MathPageState();
}

class _MathPageState extends State<MathPage> {
  int primeCount = 0;
  bool isCalculating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prime Number Count'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isCalculating = true;
                });
                generatePrimes(23000000);
              },
              child: const Text('Calculate Prime Count'),
            ),
            if (isCalculating)
              CircularProgressIndicator()
            else if (primeCount > 0)
              Text(
                'Total Prime Numbers: $primeCount',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }

  void generatePrimes(int limit) {
    List<bool> isPrime = List<bool>.filled(limit + 1, false);
    if (limit > 2) isPrime[2] = !isPrime[2];
    if (limit > 3) isPrime[3] = !isPrime[3];

    for (int x = 1; x * x <= limit; x++) {
      for (int y = 1; y * y <= limit; y++) {
        int n = (4 * x * x) + (y * y);
        if (n <= limit && (n % 12 == 1 || n % 12 == 5)) {
          isPrime[n] = !isPrime[n];
        }

        n = (3 * x * x) + (y * y);
        if (n <= limit && n % 12 == 7) {
          isPrime[n] = !isPrime[n];
        }

        n = (3 * x * x) - (y * y);
        if (x > y && n <= limit && n % 12 == 11) {
          isPrime[n] = !isPrime[n];
        }
      }
    }

    for (int n = 5; n * n <= limit; n++) {
      if (isPrime[n]) {
        for (int k = n * n; k <= limit; k += n * n) {
          isPrime[k] = false;
        }
      }
    }

    int count = 0;
    for (int i = 2; i <= limit; i++) {
      if (isPrime[i]) {
        count++;
      }
    }

    setState(() {
      primeCount = count;
      isCalculating = false;
    });
  }
}
