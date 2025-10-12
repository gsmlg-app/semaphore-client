// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'Ansible Semaphore Runner';

  @override
  String get show => 'عرض';

  @override
  String get hide => 'إخفاء';

  @override
  String get exit => 'خروج';

  @override
  String get destinationProject => 'مشروع';

  @override
  String get destinationSetting => 'إعداد';

  @override
  String get destinationServer => 'Server';

  @override
  String get settingsTitle => 'إعداد';

  @override
  String get smenuTheme => 'مظهر';

  @override
  String get titleSelectAppearance => 'اختر المظهر';

  @override
  String get titleSelectColorTheme => 'اختر لون التمييز';

  @override
  String get smenuSemaphore => 'Server';

  @override
  String get smenuServer => 'Server';

  @override
  String get smenuSemaphoreServer => 'خادم';

  @override
  String get titleSelectServer => 'اختر الخادم';

  @override
  String get addServer => 'أضف خادم';

  @override
  String get serverNameLabel => 'اسم الخادم';

  @override
  String get serverNameHint => 'أدخل اسمًا للخادم';

  @override
  String get serverUrlLabel => 'عنوان URL للخادم';

  @override
  String get serverUrlHint =>
      'أدخل عنوان URL للخادم، يجب أن يتضمن جزء /api، على سبيل المثال https://semaphore.example.com/api';

  @override
  String get usernameLabel => 'اسم المستخدم';

  @override
  String get usernameHint => 'أدخل اسم المستخدم للمصادقة مع الخادم';

  @override
  String get passwordLabel => 'كلمة المرور';

  @override
  String get passwordHint => 'أدخل كلمة المرور للمصادقة مع الخادم';

  @override
  String get buttonDelete => 'حذف';

  @override
  String get buttonCancel => 'إلغاء';

  @override
  String get buttonSave => 'حفظ';

  @override
  String get smenuSemaphoreServerProject => 'مشروع';

  @override
  String get noServerActivated => '[لم يتم تنشيط أي خادم]';

  @override
  String get accidentallyDeleted => 'حذفت عن طريق الخطأ؟';

  @override
  String get undo => 'تراجع';

  @override
  String get delete => 'حذف';

  @override
  String get refresh => 'تحديث';

  @override
  String get autoRefresh => 'التحديث التلقائي';

  @override
  String get rename => 'إعادة تسمية';

  @override
  String get serverAdded => 'تم إضافة الخادم';

  @override
  String get renameServer => 'إعادة تسمية الخادم';

  @override
  String serverRenamed(String serverName) {
    return 'تمت إعادة تسمية الخادم إلى $serverName';
  }

  @override
  String get clickToSelect => '[انقر لتحديد]';

  @override
  String get titleSelectProject => 'اختر المشروع';

  @override
  String get addProject => 'أضف مشروع';

  @override
  String get projectNameLabel => 'اسم المشروع';

  @override
  String get projectNameHint => 'أدخل اسمًا للمشروع';

  @override
  String get projectAlertLabel => 'السماح بالتنبيهات لهذا المشروع';

  @override
  String get alertChatLabel => 'معرف محادثة Telegram (اختياري)';

  @override
  String get maxParallelTasksLabel => 'العدد الأقصى للمهام المتوازية (اختياري)';

  @override
  String get maxParallelTasksHint => 'يجب أن يكون 0 أو أكبر، 0 - غير محدود.';

  @override
  String get projectPageTitle => 'مشروع';

  @override
  String get titleHistory => 'التاريخ';

  @override
  String get titleActivity => 'النشاط';

  @override
  String get titleTemplate => 'قالب';

  @override
  String get titleSchedule => 'Schedule';

  @override
  String get titleInventory => 'Inventory';

  @override
  String get titleVariable => 'Variable Group';

  @override
  String get titleKeyStore => 'Key Store';

  @override
  String get titleRepository => 'Repository';

  @override
  String get titleIntegration => 'Integration';

  @override
  String get titleTeam => 'Team';

  @override
  String get titleTask => 'مهمة';

  @override
  String get rerunTask => 'إعادة تشغيل المهمة';

  @override
  String get runTask => 'تشغيل المهمة';

  @override
  String get add => 'Add';

  @override
  String get create => 'Create';

  @override
  String get edit => 'تحرير';

  @override
  String get save => 'Save';

  @override
  String get statusSuccess => 'نجاح';

  @override
  String get statusFailed => 'فشل';

  @override
  String get statusRunning => 'جار التشغيل';

  @override
  String get statusWaiting => 'في انتظار';

  @override
  String get statusStopped => 'توقف';

  @override
  String get statusUnknown => 'غير معروف';

  @override
  String get taskOutput => 'مخرجات المهمة';

  @override
  String get taskNoOutput => 'غير متاح';

  @override
  String get taskLabelMessage => 'رسالة';

  @override
  String get taskLabelDryRun => 'تشغيل جاف';

  @override
  String get taskLabelDebug => 'تصحيح الأخطاء';

  @override
  String get taskLabelDiff => 'الفرق';

  @override
  String taskCreated(int taskId) {
    return 'تم إنشاء المهمة #$taskId!';
  }

  @override
  String get showTaskOutput => 'Show Task Output';

  @override
  String taskStartedAt(String time) {
    return 'بدأ في $time';
  }

  @override
  String get taskRunning => 'جار التشغيل...';

  @override
  String taskDuration(String duration) {
    return 'المدة: $duration';
  }

  @override
  String byUser(String user) {
    return 'بواسطة $user';
  }

  @override
  String get inventoryNameLabel => 'Name';

  @override
  String get inventorySshKeyLabel => 'User Credentials';

  @override
  String get inventoryBecomeKeyLabel => 'Sudo Credentials (Optional)';

  @override
  String get inventoryTypeLabel => 'Type';

  @override
  String get inventoryInventoryFileLabel => 'Path to Inventory file';

  @override
  String get inventoryInventoryTextLabel => 'Enter inventory';

  @override
  String get inventoryInventoryTextHint => 'Static inventory example:';

  @override
  String get inventoryInventoryTextYamlHint => 'Static YAML inventory example:';

  @override
  String get inventoryRepositoryLabel => 'Repository (Optional)';

  @override
  String get inventoryCreated => 'Inventory created';

  @override
  String get inventoryUpdated => 'Inventory updated';

  @override
  String get inventoryDeleted => 'Inventory deleted';
}
