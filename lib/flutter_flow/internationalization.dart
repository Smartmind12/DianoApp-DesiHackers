import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'de', 'ar'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? deText = '',
    String? arText = '',
  }) =>
      [enText, esText, deText, arText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // StartPage
  {
    'h9bcw118': {
      'en': 'Welcome to Vardiano',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ie2slap7': {
      'en': 'Click-Shop-Deliver',
      'ar': '',
      'de': '',
      'es': '',
    },
    'qmm4pm3y': {
      'en': 'Create an account',
      'ar': '',
      'de': '',
      'es': '',
    },
    '554f5tqa': {
      'en': 'Sign In',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // registerAccount
  {
    'gpokmd81': {
      'en': 'Get Started',
      'ar': 'البدء',
      'de': 'Loslegen',
      'es': 'Empezar',
    },
    'oitrrwgg': {
      'en': 'Create your account below.',
      'ar': 'قم بإنشاء حسابك أدناه.',
      'de': 'Erstellen Sie unten Ihr Konto.',
      'es': 'Crea tu cuenta a continuación.',
    },
    'gcwdqm4g': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'iam0xgwx': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'bqv15dcf': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'de': 'Passwort',
      'es': 'Contraseña',
    },
    'joih97mn': {
      'en': 'Enter your password...',
      'ar': 'ادخل رقمك السري...',
      'de': 'Geben Sie Ihr Passwort ein...',
      'es': 'Ingresa tu contraseña...',
    },
    'rzpiwq9p': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
      'de': 'Kennwort bestätigen',
      'es': 'Confirmar contraseña',
    },
    'eyfkffka': {
      'en': 'Enter your password...',
      'ar': 'ادخل رقمك السري...',
      'de': 'Geben Sie Ihr Passwort ein...',
      'es': 'Ingresa tu contraseña...',
    },
    '5kmjfwsk': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
      'de': 'Benutzerkonto erstellen',
      'es': 'Crear una cuenta',
    },
    '3twynvfz': {
      'en': 'Login',
      'ar': 'هل لديك حساب؟',
      'de': 'Sie haben bereits ein Konto?',
      'es': '¿Ya tienes una cuenta?',
    },
    '9ssznj0g': {
      'en': 'Already have an account?',
      'ar': 'هل لديك حساب؟',
      'de': 'Sie haben bereits ein Konto?',
      'es': '¿Ya tienes una cuenta?',
    },
    '3ugmx2zp': {
      'en': 'Continue as Guest',
      'ar': 'تواصل كضيف',
      'de': 'Als Gast fortfahren',
      'es': 'Continua como invitado',
    },
    'momge5oj': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // loginPage
  {
    'o07j3mgv': {
      'en': 'Hello Again!',
      'ar': 'البدء',
      'de': 'Loslegen',
      'es': 'Empezar',
    },
    'fzxvw3mu': {
      'en': 'Login to access your account below.',
      'ar': 'قم بإنشاء حسابك أدناه.',
      'de': 'Erstellen Sie unten Ihr Konto.',
      'es': 'Crea tu cuenta a continuación.',
    },
    'a9j78va9': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'i7f18cve': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'wztjmbn8': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'de': 'Passwort',
      'es': 'Contraseña',
    },
    'lw1jpm1f': {
      'en': 'Enter your password...',
      'ar': 'ادخل رقمك السري...',
      'de': 'Geben Sie Ihr Passwort ein...',
      'es': 'Ingresa tu contraseña...',
    },
    'm2xyjvuf': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
      'de': 'Passwort vergessen?',
      'es': '¿Has olvidado tu contraseña?',
    },
    'qbmoi1av': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
      'de': 'Anmeldung',
      'es': 'Acceso',
    },
    'cjqb8ial': {
      'en': 'Don\'t have an account?',
      'ar': 'ليس لديك حساب؟',
      'de': 'Sie haben kein Konto?',
      'es': '¿No tienes una cuenta?',
    },
    'a0iimirx': {
      'en': 'Create',
      'ar': 'ليس لديك حساب؟',
      'de': 'Sie haben kein Konto?',
      'es': '¿No tienes una cuenta?',
    },
    '1zqiw31h': {
      'en': 'Continue as Guest',
      'ar': 'تواصل كضيف',
      'de': 'Als Gast fortfahren',
      'es': 'Continua como invitado',
    },
    '2bb3vct7': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // completeProfile
  {
    'p7e296ot': {
      'en': 'Complete Your Profile',
      'ar': '',
      'de': '',
      'es': '',
    },
    'r6npjsue': {
      'en': 'Upload a photo for us to easily identify you.',
      'ar': 'قم بتحميل صورة لنا للتعرف عليك بسهولة.',
      'de':
          'Laden Sie ein Foto hoch, damit wir Sie leicht identifizieren können.',
      'es': 'Sube una foto para que te identifiquemos fácilmente.',
    },
    'sdptn7dd': {
      'en': 'Your Name',
      'ar': 'اسمك',
      'de': 'Dein Name',
      'es': 'Tu nombre',
    },
    'zmk4nxnu': {
      'en': 'i.e. Sam Jose',
      'ar': '',
      'de': '',
      'es': '',
    },
    'n636qnrx': {
      'en': 'Your Age',
      'ar': 'عمرك',
      'de': 'Ihr Alter',
      'es': 'Su edad',
    },
    's7yvjzbs': {
      'en': 'i.e. 34',
      'ar': 'أي 34',
      'de': 'dh 34',
      'es': 'es decir, 34',
    },
    '72ii0waq': {
      'en': 'Your Phone Number',
      'ar': 'لقبك',
      'de': 'Dein Titel',
      'es': 'Tu título',
    },
    'pf8glhkg': {
      'en': 'i.e. (+91) xxxxxxxxxx',
      'ar': 'ماهوموقعك؟',
      'de': 'Wo befinden Sie sich?',
      'es': '¿Cual es tu posicion?',
    },
    'a56y4gg0': {
      'en': 'Your Email Id',
      'ar': 'لقبك',
      'de': 'Dein Titel',
      'es': 'Tu título',
    },
    '2omeabgm': {
      'en': 'i.e. samjose@abc.com',
      'ar': 'ماهوموقعك؟',
      'de': 'Wo befinden Sie sich?',
      'es': '¿Cual es tu posicion?',
    },
    'hbhd3bdt': {
      'en': 'Complete Profile',
      'ar': 'الملف الشخصي الكامل',
      'de': 'Vollständiges Profil',
      'es': 'Perfil completo',
    },
    'w75dikic': {
      'en': 'Skip for Now',
      'ar': 'تخطي في الوقت الراهن',
      'de': 'Für jetzt überspringen',
      'es': 'Saltar por ahora',
    },
    '1eac148w': {
      'en': 'Field is required',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ew7dbn3s': {
      'en': 'Field is required',
      'ar': '',
      'de': '',
      'es': '',
    },
    'jhhlgzk5': {
      'en': 'Field is required',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4k3jnl38': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // forgotPassword
  {
    'gnirua8x': {
      'en': 'Forgot Password',
      'ar': '',
      'de': '',
      'es': '',
    },
    'enjwhtup': {
      'en':
          'Enter the email associated with your account and we will send you a verification code.',
      'ar': 'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك رمز التحقق.',
      'de':
          'Geben Sie die mit Ihrem Konto verknüpfte E-Mail-Adresse ein und wir senden Ihnen einen Bestätigungscode.',
      'es':
          'Introduce el correo electrónico asociado a tu cuenta y te enviaremos un código de verificación.',
    },
    'm79uroix': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'sqj4r7z6': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'dptwbxf6': {
      'en': 'Send Reset Link',
      'ar': 'أرسل رابط إعادة التعيين',
      'de': 'Zurücksetzen-Link senden',
      'es': 'Enviar enlace de reinicio',
    },
    '598b8d3m': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // transferComplete
  {
    'xf8d4sm8': {
      'en': 'Payment Complete',
      'ar': 'نقل كامل',
      'de': 'Übertragung vollständig',
      'es': 'transferencia completa',
    },
    'iq9jjji8': {
      'en':
          'Great work, you successfully transferred funds. It may take a few days for the product to reach your door step.',
      'ar':
          'عمل رائع ، لقد قمت بتحويل الأموال بنجاح. قد يستغرق خروج الأموال من حسابك بضعة أيام.',
      'de':
          'Großartige Arbeit, Sie haben erfolgreich Geld überwiesen. Es kann einige Tage dauern, bis das Geld von Ihrem Konto abgebucht wird.',
      'es':
          'Buen trabajo, transfirió fondos con éxito. Los fondos pueden tardar unos días en salir de su cuenta.',
    },
    'wrbg19ed': {
      'en': 'Okay',
      'ar': 'تمام',
      'de': 'Okay',
      'es': 'Okey',
    },
    'ndkybnrt': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // notificationsSettings
  {
    '9tggii79': {
      'en': 'Notification Settings ',
      'ar': '',
      'de': '',
      'es': '',
    },
    'gjygkr0n': {
      'en': 'Push Notifications',
      'ar': 'دفع الإخطارات',
      'de': 'Mitteilungen',
      'es': 'Notificaciones push',
    },
    '3y3yhxbk': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'ar': 'تلقي إشعارات من تطبيقنا على أساس شبه منتظم.',
      'de':
          'Erhalten Sie regelmäßig Push-Benachrichtigungen von unserer Anwendung.',
      'es':
          'Reciba notificaciones Push de nuestra aplicación de forma semi regular.',
    },
    '1ytebj35': {
      'en': 'Email Notifications',
      'ar': 'اشعارات البريد الالكتروني',
      'de': 'E-Mail Benachrichtigungen',
      'es': 'Notificaciónes de Correo Electrónico',
    },
    '9lvh5nst': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'ar':
          'تلقي إشعارات البريد الإلكتروني من فريق التسويق لدينا حول الميزات الجديدة.',
      'de':
          'Erhalten Sie E-Mail-Benachrichtigungen von unserem Marketingteam über neue Funktionen.',
      'es':
          'Reciba notificaciones por correo electrónico de nuestro equipo de marketing sobre nuevas funciones.',
    },
    '69d2j74u': {
      'en': 'Location Services',
      'ar': 'خدمات الموقع',
      'de': 'Standortdienste',
      'es': 'Servicios de localización',
    },
    '3k8cuv0d': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'ar':
          'اسمح لنا بتتبع موقعك ، فهذا يساعد على تتبع الإنفاق ويحافظ على سلامتك.',
      'de':
          'Erlauben Sie uns, Ihren Standort zu verfolgen, dies hilft, die Ausgaben im Auge zu behalten und schützt Sie.',
      'es':
          'Permítanos rastrear su ubicación, esto ayuda a realizar un seguimiento de los gastos y lo mantiene seguro.',
    },
    'isgrgbfs': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
      'de': 'Änderungen speichern',
      'es': 'Guardar cambios',
    },
    'a96mlyeh': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // privacyPolicy
  {
    'alczfiiy': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
      'de': 'Datenschutz-Bestimmungen',
      'es': 'Política de privacidad',
    },
    'fvsfg5on': {
      'en': 'How we use your data',
      'ar': 'كيف نستخدم بياناتك',
      'de': 'Wie wir Ihre Daten verwenden',
      'es': 'Cómo usamos sus datos',
    },
    'nbiyrnzl': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis at erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla.\n\nEuismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia at quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit.\n\nEt malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
      'ar':
          'Lorem ipsum dolor sit amet، consectetur adipiscing elit، sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. غير consectetur a erat nam. دونك ألتريسيس تينسيدونت قوس غير مخادع. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis في erat pellentesque adipiscing. موريس نونك كونيج سيرة ذاتية. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia في quis risus sed vulputate odio. فيليت كريمينسيم sodales ut eu sem سيرة ذاتية صحيحة justo eget. Risus feugiat في ما قبل ميتوس. Leo vel orci porta non pulvinar neque laoreet suspension interdum. Suscipit Tellus mauris a Diam Maecenas Sed enim ut sem. SEM السيرة الذاتية الصحيحة justo eget magna fermentum iaculis eu. لاسينيا في quis risus sed. Faucibus purus في ماسا مؤقت. ليو بقطر سوليتودين معرف مؤقت الاتحاد الأوروبي. Nisi scelerisque eu ultrices السيرة الذاتية موصل. Vulputate كريم معلق في وقت مبكر. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus Préium quam vulputate. Elit pellentesque موطن morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. sit amet mattis vulputate enim nulla. Nisi lacus sed viverra Tellus في العادة السيئة. اجلس أميت ريسوس نولام إيجيت فيليس إيجيت نونك لوبورتيز. Pretium lectus quam id leo in vitae. Adipiscing Diam donec adipiscing tristique. كومودو سيد egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing النخبة pellentesque المعيشية morbi. مونتيس ناسيتور ريديكولوس موس موريس. Ut etiam sit amet nisl purus in. Arcu ac Ornare suspendisse sed nisi lacus sed viverra.',
      'de':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis bei erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia bei quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis at erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem entero vitae justo eget magna fermentum iaculis eu. Lacinia at quis risus sed. Faucibus purus en massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Cómodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
    },
    'oks4x95o': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // FeaturePage
  {
    'a7wi8qaf': {
      'en': 'Curb-side pickup',
      'ar': 'إنشاء الميزانيات',
      'de': 'Erstellen Sie Budgets',
      'es': 'Crear presupuestos',
    },
    '9gc5hqu7': {
      'en': 'Allow customers to collect their order from a convenient location',
      'ar':
          'قم بإنشاء ميزانيات يمكنك ربط المعاملات بها أيضًا من أجل التتبع السهل.',
      'de':
          'Erstellen Sie Budgets, mit denen Sie auch Transaktionen verknüpfen können, um sie einfach nachverfolgen zu können.',
      'es':
          'Cree presupuestos en los que también pueda vincular transacciones para facilitar el seguimiento.',
    },
    '4oabrrbf': {
      'en': 'Free Shipping on all Orders',
      'ar': 'تتبع الإنفاق',
      'de': 'Behalten Sie die Ausgaben im Auge',
      'es': 'Mantenga un registro de los gastos',
    },
    'ir9f5qo9': {
      'en':
          'No additional cost for the delivery of product to your doorstep after purchase',
      'ar': 'أضف المعاملات بسهولة وربطها بالميزانيات التي تم إنشاؤها.',
      'de':
          'Fügen Sie ganz einfach Transaktionen hinzu und verknüpfen Sie sie mit erstellten Budgets.',
      'es':
          'Agregue fácilmente transacciones y asócielas con los presupuestos que se han creado.',
    },
    'dmpw6b79': {
      'en': 'Low Prices Guaranteed',
      'ar': 'تحليل الميزانية',
      'de': 'Budgetanalyse',
      'es': 'Análisis de presupuesto',
    },
    'qw76dswu': {
      'en': '100% Guarantee of Low prices on all products',
      'ar': 'تعرف على مكان ميزانياتك وكيف يمكن تعديلها.',
      'de': 'Wissen, wo Ihre Budgets sind und wie sie angepasst werden können.',
      'es': 'Sepa dónde están sus presupuestos y cómo se pueden ajustar.',
    },
    '5yanysvx': {
      'en': 'Available to you 24/7 ',
      'ar': 'تحليل الميزانية',
      'de': 'Budgetanalyse',
      'es': 'Análisis de presupuesto',
    },
    'y1km8utm': {
      'en': 'Shop on the go! Anytime & Anywhere (24x7)',
      'ar': 'تعرف على مكان ميزانياتك وكيف يمكن تعديلها.',
      'de': 'Wissen, wo Ihre Budgets sind und wie sie angepasst werden können.',
      'es': 'Sepa dónde están sus presupuestos y cómo se pueden ajustar.',
    },
    'l2gc3h21': {
      'en': 'Start  Shopping',
      'ar': 'إنشاء ميزانيتك',
      'de': 'Erstellen Sie Ihr Budget',
      'es': 'Crea tu presupuesto',
    },
  },
  // LandingPage
  {
    'f1e3vce0': {
      'en': 'DISCOVER',
      'ar': '',
      'de': '',
      'es': '',
    },
    'qj0xtgsx': {
      'en': 'Discover all the products in store',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5pg6adpu': {
      'en': 'SHOP',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ejqxm43f': {
      'en': 'NEW ARRIVALS',
      'ar': '',
      'de': '',
      'es': '',
    },
    '96jeqyst': {
      'en': 'Checkout the latest gadgets in town',
      'ar': '',
      'de': '',
      'es': '',
    },
    'of53bwcr': {
      'en': 'SHOP',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5eludpjt': {
      'en': 'Best Sellers',
      'ar': '',
      'de': '',
      'es': '',
    },
    'itfloiic': {
      'en': 'Look into the frequently bought items',
      'ar': '',
      'de': '',
      'es': '',
    },
    '89b9z0k8': {
      'en': 'SHOP',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kqjdncbw': {
      'en': 'WEARABLES',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l7e709ms': {
      'en': 'Search & Shop',
      'ar': '',
      'de': '',
      'es': '',
    },
    'yms8bvog': {
      'en': 'SHOP',
      'ar': '',
      'de': '',
      'es': '',
    },
    '04is3imx': {
      'en': 'AUDIO',
      'ar': '',
      'de': '',
      'es': '',
    },
    'i2mtvdtp': {
      'en': 'Products of best sound quality in market',
      'ar': '',
      'de': '',
      'es': '',
    },
    '14coql36': {
      'en': 'SHOP',
      'ar': '',
      'de': '',
      'es': '',
    },
    'lb3jm4jy': {
      'en': 'ON SALE',
      'ar': '',
      'de': '',
      'es': '',
    },
    '69laps0t': {
      'en': 'Heavy Discounts',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4svtejzy': {
      'en': 'SHOP',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ya4xh85l': {
      'en': 'HOME',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // DiscoverPage
  {
    'p0fbf7lg': {
      'en': 'Today\'s Deals',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vd15v8bu': {
      'en': 'Recommended for you',
      'ar': '',
      'de': '',
      'es': '',
    },
    'd2lltgxw': {
      'en': 'View All',
      'ar': '',
      'de': '',
      'es': '',
    },
    'otnis1dj': {
      'en': 'Calling Smart Watch',
      'ar': '',
      'de': '',
      'es': '',
    },
    'maem8id4': {
      'en': '₹999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ru12b9vm': {
      'en': 'Portable Turbine \nWashing Machine',
      'ar': '',
      'de': '',
      'es': '',
    },
    'hamgqlor': {
      'en': '₹1,399.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wvtj1u8z': {
      'en': 'W26+ Smart Watch',
      'ar': '',
      'de': '',
      'es': '',
    },
    'igzjckjl': {
      'en': '₹2,499.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3gaqupwb': {
      'en': 'Smart Vacuum Bottle',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wwpb50uv': {
      'en': '₹499.00Price',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ttnfuy2i': {
      'en': 'TV Bluetooth Soundbar',
      'ar': '',
      'de': '',
      'es': '',
    },
    'g6153eg8': {
      'en': '₹8,485.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mwsh9qik': {
      'en': 'Apple Iphone X',
      'ar': '',
      'de': '',
      'es': '',
    },
    'i7c9pjh8': {
      'en': '₹23,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'fdruuspi': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // Bestseller
  {
    'ucp492ps': {
      'en': 'Adjust Filters',
      'ar': '',
      'de': '',
      'es': '',
    },
    '41x9aqff': {
      'en': 'ZEBRONICS Zeb-Rush \nGAMING',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0e3ax7ua': {
      'en': 'Produced by Zebronics',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nspa6f4g': {
      'en': '₹1,099.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '1cjpj0eo': {
      'en': 'Vardiano backpack',
      'ar': '',
      'de': '',
      'es': '',
    },
    'lscbc4oj': {
      'en': 'Produced by Adidas',
      'ar': '',
      'de': '',
      'es': '',
    },
    'tfo95k9i': {
      'en': '₹3,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vf0eq46a': {
      'en': 'Apple iPad Air 4th Gen',
      'ar': '',
      'de': '',
      'es': '',
    },
    's8x0vtx1': {
      'en': 'Produced by Apple',
      'ar': '',
      'de': '',
      'es': '',
    },
    'cms8acca': {
      'en': '₹44,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '240ksae8': {
      'en': 'Best Sellers',
      'ar': '',
      'de': '',
      'es': '',
    },
    'o1r4cw39': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // NewArrivals
  {
    'n2d96wmt': {
      'en': 'Adjust Filters',
      'ar': '',
      'de': '',
      'es': '',
    },
    'jqgo47xw': {
      'en': 'Apple iPhone 13 Pro \n(1TB)',
      'ar': '',
      'de': '',
      'es': '',
    },
    'opyke73j': {
      'en': 'Produced by Apple',
      'ar': '',
      'de': '',
      'es': '',
    },
    'iqkz82cf': {
      'en': '₹155,000.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wg64v2zp': {
      'en': 'CCTV Camera 1080p HD',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ql0l7x15': {
      'en': 'Produced by PTZ',
      'ar': '',
      'de': '',
      'es': '',
    },
    'twxi0y12': {
      'en': '₹2,499.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3z31j7oc': {
      'en': 'Portronics Plugs',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kd3m7ogd': {
      'en': 'Produced by Portronics',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l67losnm': {
      'en': '₹1,199.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j04z21z3': {
      'en': 'New Arrivals',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vebpvpqc': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // Audio
  {
    'hpinrx0s': {
      'en': 'Adjust Filters',
      'ar': '',
      'de': '',
      'es': '',
    },
    's9fqtzbq': {
      'en': 'Mega Bass HP-50',
      'ar': '',
      'de': '',
      'es': '',
    },
    '1w4bbqox': {
      'en': 'Produced by Ubon',
      'ar': '',
      'de': '',
      'es': '',
    },
    '1xbw5bq5': {
      'en': '₹1,599.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '068s6gjt': {
      'en': 'Portronics SoundDrum \nPlus',
      'ar': '',
      'de': '',
      'es': '',
    },
    '68bz3fra': {
      'en': 'Produced by Portronics',
      'ar': '',
      'de': '',
      'es': '',
    },
    '52ni32xw': {
      'en': '₹2,599.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'gih6wmze': {
      'en': 'Portronics Pure Sound 101',
      'ar': '',
      'de': '',
      'es': '',
    },
    'fu3zkw7g': {
      'en': 'Produced by Portronics',
      'ar': '',
      'de': '',
      'es': '',
    },
    '27hg05vs': {
      'en': '₹999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'znksxysd': {
      'en': 'Audio Tech',
      'ar': '',
      'de': '',
      'es': '',
    },
    'aero04ka': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // Wearables
  {
    '6dhw4m57': {
      'en': 'Latest Products',
      'ar': '',
      'de': '',
      'es': '',
    },
    'eopo8u20': {
      'en': 'ZEBRONICS Zeb-FIT \n1020CH',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vc1bbnxc': {
      'en': 'Produced by Zebronics',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6ywxdpp0': {
      'en': '₹2,759.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9wcm8y14': {
      'en': 'HV Virtual Reality\n System',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bpt7yp93': {
      'en': 'Produced by Vardiano',
      'ar': '',
      'de': '',
      'es': '',
    },
    '90jldack': {
      'en': '₹999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'n2otb30w': {
      'en': 'Apple Watch Series 7',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rijjmp5l': {
      'en': 'Produced by Apple',
      'ar': '',
      'de': '',
      'es': '',
    },
    'w2j2vge9': {
      'en': '₹33,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4fqkv3xf': {
      'en': 'Airpods 2 AAA',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ce2zvywz': {
      'en': 'Produced by Apple',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ggtj7mf4': {
      'en': '₹999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'da7dybs5': {
      'en': 'Journey Glass XD \nVR Headset',
      'ar': '',
      'de': '',
      'es': '',
    },
    'owzys8rg': {
      'en': 'Produced by Vardiano',
      'ar': '',
      'de': '',
      'es': '',
    },
    'tzu8elvo': {
      'en': '₹684.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'h3m0hraa': {
      'en': 'Wearable Items',
      'ar': '',
      'de': '',
      'es': '',
    },
    '7fkfh4nq': {
      'en': 'Products',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // WearableProd
  {
    'sijt4v1m': {
      'en': 'Apple Watch Series 7',
      'ar': '',
      'de': '',
      'es': '',
    },
    '90wptvgp': {
      'en':
          'Apple Watch Series 7 (GPS, 41mm) - Abyss Blue Sport Band - Regular',
      'ar': '',
      'de': '',
      'es': '',
    },
    '762frnjg': {
      'en': 'Apple Watch',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5z9g1ljk': {
      'en': '₹33,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dw8kjs3d': {
      'en':
          'Always-on Retina display has nearly 20% more screen area than Series 6, making everything easier to see and use;The most crack-resistant front crystal yet on an Apple Watch, IP6X dust resistance and swimproof design\nMeasure your blood oxygen with a powerful sensor and app;Take an ECG anytime, anywhere\nGet high and low heart rate, and irregular heart rhythm notifications;Stay in the moment with the new Mindfulness app reach your sleep goals with the Sleep app\nTrack your daily activity on Apple Watch and see your trends in the Fitness app on iPhone; Sync your favourite music and podcasts;All-day battery life\nIncluded Components: Apple Watch 1n, Band 1n, 1m Magnetic Charging Cable; Compatible Devices: Smartphone.',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ydl04i6n': {
      'en': 'BLACK',
      'ar': '',
      'de': '',
      'es': '',
    },
    'xeswox68': {
      'en': 'BLUE',
      'ar': '',
      'de': '',
      'es': '',
    },
    'f44zi0f5': {
      'en': 'RED',
      'ar': '',
      'de': '',
      'es': '',
    },
    'oxt09wdv': {
      'en': 'Color',
      'ar': '',
      'de': '',
      'es': '',
    },
    'z41oi31p': {
      'en': 'Buy Now',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // OnSale
  {
    'zc69it5u': {
      'en': 'Latest Products',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mvcv7zrs': {
      'en': '4-Axis Dual Camera \nAerial Drone',
      'ar': '',
      'de': '',
      'es': '',
    },
    'sufcgkmy': {
      'en': 'Produced by Pioneer-drone',
      'ar': '',
      'de': '',
      'es': '',
    },
    'u1p8axqt': {
      'en': '₹10,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8qim1xlt': {
      'en': 'Round Mini Portable \nBluetooth Speaker',
      'ar': '',
      'de': '',
      'es': '',
    },
    'isueuvu9': {
      'en': 'Produced by Vardiano',
      'ar': '',
      'de': '',
      'es': '',
    },
    'krk6rcjc': {
      'en': '₹835.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'a0vlr1vd': {
      'en': 'Turn5 Pioneer \nBluetooth Speaker',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bqfebuia': {
      'en': 'Produced byTurn5',
      'ar': '',
      'de': '',
      'es': '',
    },
    'h6qix39v': {
      'en': '₹1,484.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9zfqe104': {
      'en': 'Waterproof Mini \nDigital Camera',
      'ar': '',
      'de': '',
      'es': '',
    },
    'a5loz9b5': {
      'en': 'Produced by Vardiano',
      'ar': '',
      'de': '',
      'es': '',
    },
    'g0sdo86f': {
      'en': '₹1,484.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ulxwcdg3': {
      'en': 'Rechargeable Led \nTouch Table Lamps',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nel6ljub': {
      'en': 'Produced by Vardiano',
      'ar': '',
      'de': '',
      'es': '',
    },
    '7k94ln8v': {
      'en': '₹499.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'a9snzu5k': {
      'en': 'Balo Headphones \n700',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dfgh38i6': {
      'en': 'Produced by Balo',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4w3wppaa': {
      'en': '₹1,334.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '65tpe9cw': {
      'en': 'ON-SALE ITEMS',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vxbkja3s': {
      'en': 'Products',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // OnSaleProd
  {
    'jkq0cmy4': {
      'en': 'Ariel Drone',
      'ar': '',
      'de': '',
      'es': '',
    },
    'sso1i2hm': {
      'en':
          'WiFi FPV Pioneer Optical Flow 4-Axis Dual Camera Aerial Drone with Dual Flash',
      'ar': '',
      'de': '',
      'es': '',
    },
    'f2o1bcsn': {
      'en': 'Ariel Drone',
      'ar': '',
      'de': '',
      'es': '',
    },
    'jazowcwe': {
      'en': '₹14,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4mkho3ck': {
      'en': '₹10,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'do5eg1ic': {
      'en':
          'This drone comes with dual cameras out of one is wide angle lens, dual lights & powerful motors. It has optical flow function which contributes for the apparent motion of the image of scene points. You can easily switch cameras & take selfies on this drone with hand gesture feature. This drone is loaded with tons of features: optical flow, follow me, HD wide angle lens, hand gesture selfie, camera switching, auto return, headless mode, roll 360° flights, one key take off & landing, speed switching, headless mode, master mode, follow me, gesture photography, emergency stop, & app control.',
      'ar': '',
      'de': '',
      'es': '',
    },
    'xagj3cdn': {
      'en': 'BLACK',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rpxtbyd6': {
      'en': 'GOLD',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vamt0j09': {
      'en': 'SILVER',
      'ar': '',
      'de': '',
      'es': '',
    },
    'qds7zkb8': {
      'en': 'Color',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6p687ze5': {
      'en': 'Buy Now',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // MyCart
  {
    'sazbllct': {
      'en': 'My Cart',
      'ar': '',
      'de': '',
      'es': '',
    },
    'd36j81ql': {
      'en':
          'WiFi FPV Pioneer Optical Flow 4-Axis Dual Camera Aerial Drone with Dual Flash',
      'ar': '',
      'de': '',
      'es': '',
    },
    'qb6x1i1u': {
      'en': 'Color: Silver',
      'ar': '',
      'de': '',
      'es': '',
    },
    'hesakjpu': {
      'en': '₹10,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ewbmivrk': {
      'en': 'Order Summary',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ax02i5n6': {
      'en': 'Subtotal',
      'ar': '',
      'de': '',
      'es': '',
    },
    'otura3ui': {
      'en': '₹10,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'uqhfzx8z': {
      'en': 'Tax (8%)',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rgvl402y': {
      'en': '₹879.92',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vz8t4z4u': {
      'en': 'Order Total',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0i2vnwmm': {
      'en': '₹11878.92',
      'ar': '',
      'de': '',
      'es': '',
    },
    '37tgs8zz': {
      'en': 'Subtotal',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dc66xgml': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6115fspr': {
      'en': 'Proceed to Checkout',
      'ar': '',
      'de': '',
      'es': '',
    },
    'etz83hxz': {
      'en': 'CART',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // MyCart2
  {
    '5b9tu810': {
      'en': 'My Cart',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6z3b15vv': {
      'en':
          'WiFi FPV Pioneer Optical Flow 4-Axis Dual Camera Aerial Drone with Dual Flash',
      'ar': '',
      'de': '',
      'es': '',
    },
    'hfzgp0w2': {
      'en': 'Color: Silver',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bb22ckbr': {
      'en': '₹10,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6kqypshq': {
      'en':
          'Apple Watch Series 7 (GPS, 41mm) - Abyss Blue Sport Band - Regular',
      'ar': '',
      'de': '',
      'es': '',
    },
    'clqacleo': {
      'en': 'Color: Blue',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9j93cspd': {
      'en': '₹33,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5n0z4jt8': {
      'en': 'Order Summary',
      'ar': '',
      'de': '',
      'es': '',
    },
    'yuppw3uc': {
      'en': 'Subtotal',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kumbppf1': {
      'en': '₹44,998.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'sff8e1z8': {
      'en': 'Tax (8%',
      'ar': '',
      'de': '',
      'es': '',
    },
    'r0zaxe8j': {
      'en': '₹3599.84',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zp5g2gh3': {
      'en': 'Order Total',
      'ar': '',
      'de': '',
      'es': '',
    },
    '7h3edo20': {
      'en': '₹48518.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'gjyn74y1': {
      'en': 'Grand Total',
      'ar': '',
      'de': '',
      'es': '',
    },
    't0u8uikt': {
      'en': '₹48597.84',
      'ar': '',
      'de': '',
      'es': '',
    },
    'b1t8m94l': {
      'en': 'Proceed to Checkout',
      'ar': '',
      'de': '',
      'es': '',
    },
    'p8whvfln': {
      'en': 'CART',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // MY_profilePage
  {
    'zdgg6lri': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
      'de': 'Profil bearbeiten',
      'es': 'Editar perfil',
    },
    'mn04qp2j': {
      'en': 'Change Password',
      'ar': 'تغيير كلمة المرور',
      'de': 'Kennwort ändern',
      'es': 'Cambia la contraseña',
    },
    '1ime3jya': {
      'en': 'My Purchase History',
      'ar': 'إعدادات الإشعار',
      'de': 'Benachrichtigungseinstellungen',
      'es': 'Configuración de las notificaciones',
    },
    'ldory0x7': {
      'en': 'Features & Benefits',
      'ar': 'سياسة الخصوصية',
      'de': 'Datenschutz-Bestimmungen',
      'es': 'Política de privacidad',
    },
    '2lz9ayfb': {
      'en': 'Notification Settings',
      'ar': 'درس تعليمي',
      'de': 'Lernprogramm',
      'es': 'Tutorial',
    },
    'jxmso3zq': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
      'de': 'Datenschutz-Bestimmungen',
      'es': 'Política de privacidad',
    },
    'x9nst0cc': {
      'en': 'PROFILE',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // PaymentMethod
  {
    'yys28f8h': {
      'en': 'Payment Method',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ma5d9p37': {
      'en': 'Credit Card',
      'ar': '',
      'de': '',
      'es': '',
    },
    'x9c7qjuw': {
      'en': 'Your Name',
      'ar': '',
      'de': '',
      'es': '',
    },
    'yzrw6qwx': {
      'en': 'Paypal',
      'ar': '',
      'de': '',
      'es': '',
    },
    'c3rk2edq': {
      'en': 'Apple Pay',
      'ar': '',
      'de': '',
      'es': '',
    },
    'f12qc25p': {
      'en': 'Pay Now',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ahca41p6': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // PaymentMethod2
  {
    '911esyn1': {
      'en': 'Payment Method',
      'ar': '',
      'de': '',
      'es': '',
    },
    'i2gjiky5': {
      'en': 'Credit Card',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kvwz5k51': {
      'en': 'Paypal',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l2imapwu': {
      'en': 'Your Account Number',
      'ar': '',
      'de': '',
      'es': '',
    },
    'eeep6cab': {
      'en': 'Your PIN',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zjijvvc3': {
      'en': 'Apple Pay',
      'ar': '',
      'de': '',
      'es': '',
    },
    '7g8c4woq': {
      'en': 'Pay Now',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dmtjqe6a': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // PaymentMethod3
  {
    'jtqjg7su': {
      'en': 'Payment Method',
      'ar': '',
      'de': '',
      'es': '',
    },
    '1ao9a38r': {
      'en': 'Credit Card',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3daicnlx': {
      'en': 'Paypal',
      'ar': '',
      'de': '',
      'es': '',
    },
    'w50n9pex': {
      'en': 'Apple Pay',
      'ar': '',
      'de': '',
      'es': '',
    },
    'naxd0gg4': {
      'en': 'Your Account Number',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9he1we70': {
      'en': 'Your PIN',
      'ar': '',
      'de': '',
      'es': '',
    },
    'scb9u2xf': {
      'en': 'Pay Now',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8g8i6ap4': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // EditPassword
  {
    'x7bltr8d': {
      'en': 'Change Password',
      'ar': '',
      'de': '',
      'es': '',
    },
    'hp10lxbc': {
      'en':
          'Update your account password by filling in the information below to access the app.',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8xkmga3z': {
      'en': 'Current Password',
      'ar': '',
      'de': '',
      'es': '',
    },
    '02n9mmrr': {
      'en': 'Enter your current password...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ft4b5nhw': {
      'en': 'Password',
      'ar': '',
      'de': '',
      'es': '',
    },
    'k157sflc': {
      'en': 'Please enter your password...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rkzd1gxz': {
      'en': 'Confirm Password',
      'ar': '',
      'de': '',
      'es': '',
    },
    'cowuztax': {
      'en': 'Please enter your password...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nupfqm5h': {
      'en': 'Save Password',
      'ar': '',
      'de': '',
      'es': '',
    },
    'tn2o1gwr': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // PurchaseHistory
  {
    'vrikcmv1': {
      'en': 'Purchase History',
      'ar': '',
      'de': '',
      'es': '',
    },
    'baduzlhj': {
      'en': 'This Month',
      'ar': '',
      'de': '',
      'es': '',
    },
    'utr3kcif': {
      'en': 'Apple Watch Series 7',
      'ar': '',
      'de': '',
      'es': '',
    },
    'q50cytad': {
      'en': 'Sep 18, 2022',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mctvj6pp': {
      'en': '₹33,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'w7perv2k': {
      'en': '4-Axis Camera Aerial Drone',
      'ar': '',
      'de': '',
      'es': '',
    },
    'w6tbz21r': {
      'en': 'Sep 18, 2022',
      'ar': '',
      'de': '',
      'es': '',
    },
    'drhbogwc': {
      'en': '₹10,999.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vfcv82m0': {
      'en': 'Last Month',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zoati96a': {
      'en': 'Portronics Plugs',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6rjp9go9': {
      'en': 'Mar 36, 2022',
      'ar': '',
      'de': '',
      'es': '',
    },
    'amdl0lkj': {
      'en': '₹1,199.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'pqprw5yl': {
      'en': 'ZEBRONICS Zeb-Rush',
      'ar': '',
      'de': '',
      'es': '',
    },
    'yge3yjan': {
      'en': 'Feb 15, 2022',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ssuosqcp': {
      'en': '₹1,099.00',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ajqqykzr': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // bookAppointment
  {
    'sfzj3riz': {
      'en': 'Book Appointment',
      'ar': 'موعد الكتاب',
      'de': 'Einen Termin verabreden',
      'es': 'Reservar una cita',
    },
    '4skzh9os': {
      'en':
          'Fill out the information below in order to book your appointment with our office.',
      'ar': 'املأ المعلومات أدناه من أجل حجز موعدك مع مكتبنا.',
      'de':
          'Füllen Sie die folgenden Informationen aus, um Ihren Termin in unserem Büro zu buchen.',
      'es':
          'Complete la información a continuación para reservar su cita con nuestra oficina.',
    },
    'b87tcas2': {
      'en': 'Emails will be sent to:',
      'ar': 'سيتم إرسال رسائل البريد الإلكتروني إلى:',
      'de': 'E-Mails werden gesendet an:',
      'es': 'Los correos electrónicos serán enviados a:',
    },
    'iicnw3dq': {
      'en': 'Booking For',
      'ar': 'الحجز لـ',
      'de': 'Buchung für',
      'es': 'reserva para',
    },
    '5tkkg4yu': {
      'en': 'Type of Appointment',
      'ar': 'نوع التعيين',
      'de': 'Art der Ernennung',
      'es': 'Tipo de cita',
    },
    '7w5m45zt': {
      'en': 'Doctors Visit',
      'ar': 'زيارة الأطباء',
      'de': 'Arztbesuch',
      'es': 'Visita de médicos',
    },
    'bmfmxg71': {
      'en': 'Routine Checkup',
      'ar': 'فحص روتيني حتى',
      'de': 'Routineuntersuchung',
      'es': 'Chequeo de rutina',
    },
    'prt95f0g': {
      'en': 'Scan/Update',
      'ar': 'مسح / تحديث',
      'de': 'Scannen/Aktualisieren',
      'es': 'Escanear/Actualizar',
    },
    '7ohalsg9': {
      'en': 'What\'s the problem?',
      'ar': 'ما هي المشكلة؟',
      'de': 'Was ist das Problem?',
      'es': '¿Cuál es el problema?',
    },
    'xukiv2ku': {
      'en': 'Choose Date',
      'ar': 'اختر موعدا',
      'de': 'Wählen Sie Datum',
      'es': 'Elija fecha',
    },
    'lpc88cht': {
      'en': 'Cancel',
      'ar': 'يلغي',
      'de': 'Abbrechen',
      'es': 'Cancelar',
    },
    'b5umyycx': {
      'en': 'Book Now',
      'ar': 'احجز الآن',
      'de': 'buchen Sie jetzt',
      'es': 'Reservar ahora',
    },
  },
  // bookingOld
  {
    '8laf5zmk': {
      'en': 'Book Appointment',
      'ar': 'موعد الكتاب',
      'de': 'Einen Termin verabreden',
      'es': 'Reservar una cita',
    },
    'udwhsu8p': {
      'en':
          'Fill out the information below in order to book your appointment with our office.',
      'ar': 'املأ المعلومات أدناه من أجل حجز موعدك مع مكتبنا.',
      'de':
          'Füllen Sie die folgenden Informationen aus, um Ihren Termin in unserem Büro zu buchen.',
      'es':
          'Complete la información a continuación para reservar su cita con nuestra oficina.',
    },
    'm6f5lawq': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'yz52729g': {
      'en': 'Booking For',
      'ar': 'الحجز لـ',
      'de': 'Buchung für',
      'es': 'reserva para',
    },
    'hdmqdmzq': {
      'en': 'Type of Appointment',
      'ar': 'نوع التعيين',
      'de': 'Art der Ernennung',
      'es': 'Tipo de cita',
    },
    'stpxpct6': {
      'en': 'Doctors Visit',
      'ar': 'زيارة الأطباء',
      'de': 'Arztbesuch',
      'es': 'Visita de médicos',
    },
    'wvgk6obb': {
      'en': 'Routine Checkup',
      'ar': 'فحص روتيني حتى',
      'de': 'Routineuntersuchung',
      'es': 'Chequeo de rutina',
    },
    'xt7ujyt8': {
      'en': 'Scan/Update',
      'ar': 'مسح / تحديث',
      'de': 'Scannen/Aktualisieren',
      'es': 'Escanear/Actualizar',
    },
    'andpn0t0': {
      'en': 'What\'s the problem?',
      'ar': 'ما هي المشكلة؟',
      'de': 'Was ist das Problem?',
      'es': '¿Cuál es el problema?',
    },
    'ycaso9dc': {
      'en': 'Choose Date',
      'ar': 'اختر موعدا',
      'de': 'Wählen Sie Datum',
      'es': 'Elija fecha',
    },
    '2pmd2p3w': {
      'en': 'Cancel',
      'ar': 'يلغي',
      'de': 'Abbrechen',
      'es': 'Cancelar',
    },
    '13j05r8j': {
      'en': 'Book Now',
      'ar': 'احجز الآن',
      'de': 'buchen Sie jetzt',
      'es': 'Reservar ahora',
    },
  },
  // editBooking
  {
    '6j668hma': {
      'en': 'Edit Appointment',
      'ar': 'تحرير موعد',
      'de': 'Termin bearbeiten',
      'es': 'Editar cita',
    },
    'cbp936ta': {
      'en': 'Edit the fields below in order to change your appointment.',
      'ar': 'قم بتحرير الحقول أدناه لتغيير موعدك.',
      'de': 'Bearbeiten Sie die Felder unten, um Ihren Termin zu ändern.',
      'es': 'Edite los campos a continuación para cambiar su cita.',
    },
    '6btfslje': {
      'en': 'Emails will be sent to:',
      'ar': 'سيتم إرسال رسائل البريد الإلكتروني إلى:',
      'de': 'E-Mails werden gesendet an:',
      'es': 'Los correos electrónicos serán enviados a:',
    },
    'mhko6q8p': {
      'en': 'Booking For',
      'ar': 'الحجز لـ',
      'de': 'Buchung für',
      'es': 'reserva para',
    },
    'shqcgjqe': {
      'en': 'Type of Appointment',
      'ar': 'نوع التعيين',
      'de': 'Art der Ernennung',
      'es': 'Tipo de cita',
    },
    '5ixhbnsd': {
      'en': 'Doctors Visit',
      'ar': 'زيارة الأطباء',
      'de': 'Arztbesuch',
      'es': 'Visita de médicos',
    },
    'db46hhfw': {
      'en': 'Routine Checkup',
      'ar': 'فحص روتيني حتى',
      'de': 'Routineuntersuchung',
      'es': 'Chequeo de rutina',
    },
    'e1zm6kzh': {
      'en': 'Scan/Update',
      'ar': 'مسح / تحديث',
      'de': 'Scannen/Aktualisieren',
      'es': 'Escanear/Actualizar',
    },
    'oy6qvd33': {
      'en': 'What\'s the problem?',
      'ar': 'ما هي المشكلة؟',
      'de': 'Was ist das Problem?',
      'es': '¿Cuál es el problema?',
    },
    '9emhgrhs': {
      'en': 'Choose Date',
      'ar': 'اختر موعدا',
      'de': 'Wählen Sie Datum',
      'es': 'Elija Fecha',
    },
    '2bzoinpy': {
      'en': 'Cancel',
      'ar': 'يلغي',
      'de': 'Abbrechen',
      'es': 'Cancelar',
    },
    'gjnq0j86': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
      'de': 'Änderungen speichern',
      'es': 'Guardar cambios',
    },
  },
  // pauseCard
  {
    'dt7m486y': {
      'en': 'Pause Card',
      'ar': 'بطاقة وقفة',
      'de': 'Pausenkarte',
      'es': 'Tarjeta de pausa',
    },
    '6edae99k': {
      'en': 'Are you sure you want to pause your card?',
      'ar': 'هل أنت متأكد أنك تريد إيقاف بطاقتك مؤقتًا؟',
      'de': 'Möchten Sie Ihre Karte wirklich pausieren?',
      'es': '¿Seguro que quieres pausar tu tarjeta?',
    },
    'omtrfcm5': {
      'en': 'Nevermind',
      'ar': 'لا بأس',
      'de': 'egal',
      'es': 'No importa',
    },
    'hw07mkb9': {
      'en': 'Yes, Pause',
      'ar': 'نعم توقف',
      'de': 'Ja, Pause',
      'es': 'Sí, pausa',
    },
  },
  // Miscellaneous
  {
    'lzyb73wy': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'kx9cdks4': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'efvtwj7k': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ec5hfa1e': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'q5ljwvfo': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j4rmwb3h': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6ah1b18f': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2kos1hen': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'aox3s4fb': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l8hv5a7z': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4pjwb70a': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0xlokf4y': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8twlwiwt': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    't4xzlq9q': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '513nj4m0': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'a1jxfgju': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
