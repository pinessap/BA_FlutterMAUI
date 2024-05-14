# Performancevergleich von Flutter und .NET MAUI

Dieses Repository enthält Messwerte und die Implementierungen von zwei einfachen Anwendungen, die mit Flutter und .NET MAUI entwickelt wurden. Ziel des Projekts war es, einen Performancevergleich zwischen den beiden plattformübergreifenden Frameworks durchzuführen.

## Dateistruktur
- baflutterapp: Enthält die Flutter-Anwendung.
- bamauiapp: Enthält die .NET MAUI-Anwendung.
- Messwerte.xlsx: Enthält die gesammelten Messwerte der Performanceanalyse.

## Performance-Messwerte
Die Leistung der Anwendungen wurde anhand verschiedener Metriken wie Startzeit, CPU- und RAM-Nutzung gemessen. Die gesammelten Messwerte sind in der Datei "Messwerte.xlsx" zu finden. Sie wurden auf Android- und Windows-Plattformen gemessen.

## Ausführung der Anwendungen
Um die Flutter Anwendung auszuführen, müssen zunächst die Befehle `flutter clean` und `flutter pub` ausgeführt werden. Anschließend kann das Projekt über **Run > Start Debugging** oder **Run > Start Without Debugging* ausgeführt werden.
Die .NET MAUI Anwendung kann über **Run > Start Debugging** oder **Run > Start Without Debugging* ausgeführt werden. Standardmäßig ist hier die Map-Funktionalität `.UseMauiMaps()` in der Datei **MauiProgram.cs** auskommentiert, um die Ausführung als Windows-Applikation zu ermöglichen.  
