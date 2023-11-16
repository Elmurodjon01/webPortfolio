import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ko', 'uz', 'ru'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? koText = '',
    String? uzText = '',
    String? ruText = '',
  }) =>
      [enText, koText, uzText, ruText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

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
  // HomePage
  {
    's22bmq9o': {
      'en': 'Hi, ',
      'ko': '안녕,',
      'ru': 'Привет,',
      'uz': 'Salom,',
    },
    'bcdx64uk': {
      'en': 'I\'m ',
      'ko': '나는',
      'ru': 'Я',
      'uz': 'men',
    },
    '5bfw7rwa': {
      'en': 'John',
      'ko': '남자',
      'ru': 'Джон',
      'uz': 'Jon',
    },
    'hxcjzum7': {
      'en': 'I build',
      'ko': '나는 짓는다',
      'ru': 'я строю',
      'uz': 'quraman',
    },
    '5wohossa': {
      'en': 'apps',
      'ko': '앱',
      'ru': 'Программы',
      'uz': 'ilovalar',
    },
    '18u7yli6': {
      'en': 'using Flutter and Flutterflow',
      'ko': 'Flutter와 Flutterflow를 사용하여',
      'ru': 'использование Flutter и Flutterflow',
      'uz': 'Flutter va Flutterflow yordamida',
    },
    '3vere3tw': {
      'en': 'Contact Now',
      'ko': '지금 연락하세요',
      'ru': 'Связаться сейчас',
      'uz': 'Hozir murojaat qiling',
    },
    'a779mdpg': {
      'en': 'Technologies I use',
      'ko': '내가 사용하는 기술',
      'ru': 'Технологии, которые я использую',
      'uz': 'Men foydalanadigan texnologiyalar',
    },
    'w6gytho8': {
      'en': 'Flutter',
      'ko': '실룩 거리다',
      'ru': 'трепетать',
      'uz': 'Flutter',
    },
    'zt495e5g': {
      'en': 'Figma',
      'ko': '피그마',
      'ru': 'Фигма',
      'uz': 'Figma',
    },
    'jtlo36mm': {
      'en': 'Github',
      'ko': 'Github',
      'ru': 'Гитхаб',
      'uz': 'Github',
    },
    'wka7w34i': {
      'en': 'FlutterFlow',
      'ko': 'FlutterFlow',
      'ru': 'FlutterFlow',
      'uz': 'FlutterFlow',
    },
    'ktleldbm': {
      'en': 'Firebase',
      'ko': '중포 기지',
      'ru': 'Огневая база',
      'uz': 'Firebase',
    },
    '9ibkxh26': {
      'en': 'Postman',
      'ko': '우편 집배원',
      'ru': 'Почтальон',
      'uz': 'Pochtachi',
    },
    '7y3z9sjr': {
      'en': 'Android Studio',
      'ko': '안드로이드 스튜디오',
      'ru': 'Android-студия',
      'uz': 'Android Studio',
    },
    'es4w97xa': {
      'en': 'VS code',
      'ko': 'VS 코드',
      'ru': 'VS-код',
      'uz': 'VS kodi',
    },
    '3bzoa3td': {
      'en': 'Google services',
      'ko': 'FlutterFlow',
      'ru': 'FlutterFlow',
      'uz': 'FlutterFlow',
    },
    'q4ysksye': {
      'en': 'I studied at',
      'ko': '나는에서 공부했다',
      'ru': 'я учился в',
      'uz': 'da oʻqiganman',
    },
    '61c2pi8h': {
      'en': 'University',
      'ko': '대학교',
      'ru': 'Университет',
      'uz': 'Universitet',
    },
    '3b619p2h': {
      'en': 'Udemy',
      'ko': '유데미',
      'ru': 'Удеми',
      'uz': 'Udemy',
    },
    '7l9xt1zg': {
      'en': 'Youtube',
      'ko': '유튜브',
      'ru': 'YouTube',
      'uz': 'Youtube',
    },
    'qta5kvnr': {
      'en': 'private courses',
      'ko': '개인 코스',
      'ru': 'частные курсы',
      'uz': 'xususiy kurslar',
    },
    'ocz26eti': {
      'en': 'Home',
      'ko': '집',
      'ru': 'Дом',
      'uz': 'Uy',
    },
  },
  // Contact
  {
    'bp326p6n': {
      'en': 'Info',
      'ko': '정보',
      'ru': 'Информация',
      'uz': 'Ma\'lumot',
    },
    'yd21db84': {
      'en': 'abdulajonov01@gmail.com',
      'ko': 'abdulajonov01@gmail.com',
      'ru': 'abdulajonov01@gmail.com',
      'uz': 'abdulajonov01@gmail.com',
    },
    'wpjawu3k': {
      'en': '+821023501311',
      'ko': '+821023501311',
      'ru': '+821023501311',
      'uz': '+821023501311',
    },
    'haquzxee': {
      'en': 'South Korea, Incheon',
      'ko': '한국, 인천',
      'ru': 'Южная Корея, Инчхон',
      'uz': 'Janubiy Koreya, Incheon',
    },
    'n1ber0gm': {
      'en': '22221',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'f9ljp8xf': {
      'en': 'Contact Me',
      'ko': '저에게 연락하세요',
      'ru': 'Свяжитесь со мной',
      'uz': 'Men bilan bog\'lan',
    },
    'einxdnbk': {
      'en':
          'Feel free to contact me any time. I will get \nback to you as soon as I can!',
      'ko': '언제든지 저에게 연락 주시기 바랍니다. 나는 얻을 것이다\n최대한 빨리 다시 연락드리겠습니다!',
      'ru':
          'Не стесняйтесь обращаться ко мне в любое время. я получу\nвернусь к вам, как только смогу!',
      'uz':
          'Istalgan vaqtda men bilan bog\'lanishingiz mumkin. olaman\nimkon qadar tezroq sizga qaytib kelaman!',
    },
    'duhh2ein': {
      'en': 'Name',
      'ko': '이름',
      'ru': 'Имя',
      'uz': 'Ism',
    },
    'ontlc4po': {
      'en': 'Email',
      'ko': '이메일',
      'ru': 'Электронная почта',
      'uz': 'Elektron pochta',
    },
    'zyp7wm0d': {
      'en': 'Message',
      'ko': '메시지',
      'ru': 'Сообщение',
      'uz': 'Xabar',
    },
    '2v7faesu': {
      'en': 'Send',
      'ko': '보내다',
      'ru': 'Отправлять',
      'uz': 'Yuborish',
    },
    '536trm01': {
      'en': 'Home',
      'ko': '집',
      'ru': 'Дом',
      'uz': 'Uy',
    },
  },
  // Projects
  {
    'f2iq5ed2': {
      'en': 'Listening App',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'vzgrf6ic': {
      'en': 'Prodect description',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'cm269awp': {
      'en': 'Listening App',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '2od93f3i': {
      'en': 'Prodect description',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'rcpw3iw3': {
      'en': 'Listening App',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'vcjnvw5g': {
      'en': 'Prodect description',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'laezp7yh': {
      'en': 'See More',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'o2erv9a2': {
      'en': 'Listening App',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'aqj57s53': {
      'en': 'Prodect description',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'gtu96u0c': {
      'en': 'Listening App',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'a6agur1e': {
      'en': 'Prodect description',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'jaotnnw4': {
      'en': 'Close',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'ye3lgb02': {
      'en': 'Home',
      'ko': '집',
      'ru': 'Дом',
      'uz': 'Uy',
    },
  },
  // HomePage2
  {
    'v5pke990': {
      'en': 'builderking.io',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'cf1kloau': {
      'en': 'BUILD LIKE A KING!',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'uayue4xg': {
      'en': 'EFFECTS',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'xr74tgre': {
      'en': 'Interactive\nComponents',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'atx9mt81': {
      'en': 'Create interactive components in Flutterflow ith hover',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'jew0esuq': {
      'en': 'Home',
      'ko': '',
      'ru': '',
      'uz': '',
    },
  },
  // skills
  {
    'hedst07e': {
      'en': 'My Story',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '1diupjcb': {
      'en':
          '영어에서 번역됨-채우기 텍스트는 실제 작성된 텍스트의 일부 특성을 공유하지만 무작위로 생성되거나 생성된 텍스트입니다. 글꼴 샘플을 표시하거나 테스트할 텍스트를 생성하거나 전자 메일 스팸 필터를 스푸핑하는 데 사용할 수 있습니다. 영어에서 번역됨-채우기 텍스트는 실제 작성된 텍스트의 일부 특성을 공유하지만 무작위로 생성되거나 생성된 텍스트입니다. 글꼴 샘플을 표시하거나 테스트할 텍스트를 생성하거나 전자 메일 스팸 필터를 스푸핑하는 데 사용할 수 있습니다. 영어에서 번역됨-채우기 텍스트는 실제 작성된 텍스트의 일부 특성을 공유하지만 무작위로 생성되거나 생성된 텍스트입니다. 글꼴 샘플을 표시하거나 테스트할 텍스트를 생성하거나 전자 메일 스팸 필터를 스푸핑하는 데 사용할 수 있습니다.',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'on99v923': {
      'en': 'My Skills',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '97q9wgxp': {
      'en': '70%',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '8si3mps1': {
      'en': 'Flutter',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'a8a5xwbf': {
      'en': '60%',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '3zs1wkn9': {
      'en': 'Flutterflow',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'xo0b3y2p': {
      'en': '70%',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'wkwmvqb4': {
      'en': 'Firebase',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'ct83dan4': {
      'en': '70%',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'enjyc087': {
      'en': 'Github',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '5b9lm59k': {
      'en': '80%',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '7pvsyyy7': {
      'en': 'English',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'k437ir3u': {
      'en': '50%',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'u0gg7wca': {
      'en': 'Korean',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'c8pudp7s': {
      'en': '100%',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '4y71aa5z': {
      'en': 'Uzbek',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'ab0okjwf': {
      'en': 'Home',
      'ko': '',
      'ru': '',
      'uz': '',
    },
  },
  // resumePage
  {
    '0kt354ma': {
      'en': 'Download',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'os9nf002': {
      'en': 'Home',
      'ko': '',
      'ru': '',
      'uz': '',
    },
  },
  // Header
  {
    'v067qzyq': {
      'en': 'John',
      'ko': '남자',
      'ru': 'Джон',
      'uz': 'Jon',
    },
    'wb2qlsu6': {
      'en': 'Home',
      'ko': '집',
      'ru': 'Дом',
      'uz': 'Uy',
    },
    '7owa06lk': {
      'en': 'Resume',
      'ko': '에 대한',
      'ru': 'О',
      'uz': 'Haqida',
    },
    'wez49gqg': {
      'en': 'Skills',
      'ko': '기술',
      'ru': 'Навыки',
      'uz': 'Ko\'nikmalar',
    },
    'lwf65uwl': {
      'en': 'Works',
      'ko': '공장',
      'ru': 'Работает',
      'uz': 'Ishlar',
    },
    'njqdhmm1': {
      'en': 'Contact',
      'ko': '연락하다',
      'ru': 'Контакт',
      'uz': 'Aloqa',
    },
  },
  // footer
  {
    'cg8tyges': {
      'en': 'logo',
      'ko': '심벌 마크',
      'ru': 'логотип',
      'uz': 'logotip',
    },
    'g2l1l1bg': {
      'en': 'Menu',
      'ko': '메뉴',
      'ru': 'Меню',
      'uz': 'Menyu',
    },
    'gw0k5kwt': {
      'en': 'Home',
      'ko': '집',
      'ru': 'Дом',
      'uz': 'Uy',
    },
    'uy1g5lv9': {
      'en': 'Resume',
      'ko': '에 대한',
      'ru': 'О',
      'uz': 'Haqida',
    },
    'a9n5e1tl': {
      'en': 'Skills',
      'ko': '기술',
      'ru': 'Навыки',
      'uz': 'Ko\'nikmalar',
    },
    'hpnsi0lb': {
      'en': 'Works',
      'ko': '공장',
      'ru': 'Работает',
      'uz': 'Ishlar',
    },
    '6tmcjpm7': {
      'en': 'Contact',
      'ko': '연락하다',
      'ru': 'Контакт',
      'uz': 'Aloqa',
    },
    'jw23z1ri': {
      'en': 'Social',
      'ko': '사회의',
      'ru': 'Социальное',
      'uz': 'Ijtimoiy',
    },
    't96efl73': {
      'en': 'LinkedIn',
      'ko': '링크드인',
      'ru': 'LinkedIn',
      'uz': 'LinkedIn',
    },
    'pb3y8jeg': {
      'en': 'Github',
      'ko': 'Github',
      'ru': 'Гитхаб',
      'uz': 'Github',
    },
    'i4yips08': {
      'en': 'Twitter',
      'ko': '트위터',
      'ru': 'Твиттер',
      'uz': 'Twitter',
    },
  },
  // checkMessages
  {
    '0uie4an7': {
      'en': 'Email',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'ews4dmvf': {
      'en': 'Password',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'juhen1re': {
      'en': 'check',
      'ko': '',
      'ru': '',
      'uz': '',
    },
  },
  // Miscellaneous
  {
    'jzplktut': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'cwrx1vu4': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '0n6op5mx': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '59tr7x7g': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '45bmzyww': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '66kdfp2k': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '95xd2ele': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'tn6bev1b': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'ig0cm822': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'p545oxpp': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '4pf4ta5g': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '38ncce3p': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'kb3k8x4i': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'c086wv69': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'hyy2zau3': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '9wcav5jh': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    's61ddpks': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '1m92w7lu': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'snd1dg38': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'rodolanh': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'cz3nyajx': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    'u2q14hjw': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
    '5ggsgnt0': {
      'en': '',
      'ko': '',
      'ru': '',
      'uz': '',
    },
  },
].reduce((a, b) => a..addAll(b));
