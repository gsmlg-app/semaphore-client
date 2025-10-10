import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'objectbox.g.dart'; // created by `flutter pub run build_runner build`

class ObjectBox {
  /// The Store of this app.
  late final Store store;

  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBox> create() async {
    try {
      String databaseDir;
      
      if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
        // For desktop platforms, use temp directory to avoid permission issues
        final tempDir = Directory.systemTemp;
        databaseDir = '${tempDir.path}/semaphore_client_${DateTime.now().millisecondsSinceEpoch}';
        print('Using temp database directory: $databaseDir');
      } else {
        // For mobile platforms, use the application documents directory
        final docsDir = await getApplicationDocumentsDirectory();
        databaseDir = '${docsDir.path}/semaphore_objectbox';
      }

      // Ensure the directory exists and has proper permissions
      final dir = Directory(databaseDir);
      if (!await dir.exists()) {
        print('Creating database directory: $databaseDir');
        await dir.create(recursive: true);
      }

      // Check directory permissions
      try {
        final testFile = File('$databaseDir/.permission_test');
        await testFile.writeAsString('test');
        await testFile.delete();
        print('Database directory permissions OK');
      } catch (permError) {
        print('Permission error in database directory: $permError');
        rethrow;
      }

      // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
      print('Opening ObjectBox store...');
      final store = await openStore(
        directory: databaseDir,
        macosApplicationGroup: Platform.isIOS ? 'group.gsmlg.app' : null,
      );
      print('ObjectBox store opened successfully at: ${store.directory}');
      return ObjectBox._create(store);
    } catch (e) {
      print('Error creating ObjectBox: $e');
      print('Stack trace: ${StackTrace.current}');
      rethrow;
    }
  }
}
