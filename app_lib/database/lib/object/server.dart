import 'package:objectbox/objectbox.dart';

@Entity()
class SemaphoreServer {
  @Id()
  int id = 0;
  
  String name;
  String apiUrl;
  String username;
  String? password;
  String? accessToken;
  bool? isSelected;
  int? activeProjectId;
  
  SemaphoreServer({
    required this.name,
    required this.apiUrl,
    required this.username,
    this.password,
    this.accessToken,
    this.isSelected,
    this.activeProjectId,
  });
}