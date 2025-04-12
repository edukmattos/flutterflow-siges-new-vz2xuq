import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

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
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // pgSignin
  {
    '50q6t7g2': {
      'pt': 'Legal você aqui !',
      'en': '',
    },
    '2lbtaner': {
      'pt': 'Preencha os campos abaixo para acessar a sua conta.',
      'en': '',
    },
    'ihceiaxb': {
      'pt': 'Versão',
      'en': '',
    },
    'ifsk7r1n': {
      'pt': 'Usuário',
      'en': '',
    },
    'ggmnvhzb': {
      'pt': '',
      'en': '',
    },
    'ts2lzi3c': {
      'pt': '',
      'en': '',
    },
    'qnlqhchc': {
      'pt': 'Senha',
      'en': '',
    },
    'tf0hiitd': {
      'pt': '',
      'en': '',
    },
    '0regb3td': {
      'pt': '',
      'en': '',
    },
    '8x2ct3co': {
      'pt': 'ENTRAR',
      'en': '',
    },
    '9lvinwup': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '63yh3kqx': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ge46rber': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '9zske1ag': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'xdwdg0ou': {
      'pt': 'Esqueceu a senha ?',
      'en': '',
    },
    'xc77dz46': {
      'pt': 'Criar Conta',
      'en': '',
    },
    'lbwbmd75': {
      'pt': 'Migracao',
      'en': '',
    },
    '89hvpy46': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSignupEmail
  {
    '0fztpb42': {
      'pt': 'Criar conta',
      'en': '',
    },
    'wfcg56vq': {
      'pt': 'E-mail',
      'en': '',
    },
    'nmy4sjl2': {
      'pt': '',
      'en': '',
    },
    'mco2d592': {
      'pt': '',
      'en': '',
    },
    'udv762dn': {
      'pt': 'Nome completo',
      'en': '',
    },
    'ya7cltuu': {
      'pt': '',
      'en': '',
    },
    'gmp105hd': {
      'pt': '',
      'en': '',
    },
    'qi6gnu0e': {
      'pt': 'Apelido',
      'en': '',
    },
    '5wmfzxxi': {
      'pt': '',
      'en': '',
    },
    'n8wvz371': {
      'pt': '',
      'en': '',
    },
    'asul2tf8': {
      'pt': 'Senha',
      'en': '',
    },
    'yz6poh4y': {
      'pt': '',
      'en': '',
    },
    '1wi21kzf': {
      'pt': '',
      'en': '',
    },
    'ux42u8j1': {
      'pt': 'Confirmar senha',
      'en': '',
    },
    'lww9fhjm': {
      'pt': '',
      'en': '',
    },
    'xrs6k8ot': {
      'pt': '',
      'en': '',
    },
    'im50t4ye': {
      'pt': 'Celular ?',
      'en': '',
    },
    'ulfosq41': {
      'pt': '',
      'en': '',
    },
    'h5362ojx': {
      'pt': '',
      'en': '',
    },
    'lgira9gd': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    'r78nqfux': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'vsm4mq6m': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'cnroci6p': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'o6cl0fdt': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'xs8e5cev': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'zmzpmw1w': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'wvp4j40s': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'x1hdhm95': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'jt372ly2': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '0i9zy97p': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'oxa42ox3': {
      'pt': 'Já tem conta ?  ',
      'en': '',
    },
    'zwa4m707': {
      'pt': 'Entre Aqui',
      'en': '',
    },
    '7wkxrlmi': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgDBUsersO
  {
    '75473zdn': {
      'pt': 'Meu Painel',
      'en': '',
    },
    'rg7qmiia': {
      'pt': 'Meus Serviços',
      'en': '',
    },
    '1eokvasz': {
      'pt': 'Atualização automática',
      'en': '',
    },
    '1ij9m26m': {
      'pt': 'Situações',
      'en': '',
    },
    'w2ta0aju': {
      'pt': 'AU',
      'en': '',
    },
    '42cqmgem': {
      'pt': 'Autorizadas',
      'en': '',
    },
    'l6hyd3m0': {
      'pt': 'AG',
      'en': '',
    },
    'jgprho46': {
      'pt': 'Agendadas',
      'en': '',
    },
    '9556gfzj': {
      'pt': 'EX',
      'en': '',
    },
    'j7yt1ka1': {
      'pt': 'Execução',
      'en': '',
    },
    '0uksa0lz': {
      'pt': 'SU',
      'en': '',
    },
    '3oubw5gh': {
      'pt': 'Suspensas',
      'en': '',
    },
    '6usinksn': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgMyProfile
  {
    'xs1g7u6b': {
      'pt': 'Meus ajustes',
      'en': '',
    },
    'wpz5i7kn': {
      'pt': 'Minha Equipe',
      'en': '',
    },
    'mw805njd': {
      'pt': 'Meu Veículo',
      'en': '',
    },
    'v73s2if4': {
      'pt': 'Meu Perfil',
      'en': '',
    },
    '36jdxb1o': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgNotAllowed
  {
    '932ee3mh': {
      'pt': 'Acesso Restrito',
      'en': '',
    },
    'xiw1z8ge': {
      'pt':
          'O seu perfil não possui a permissão suficiente para acessar esta funcionalidade.',
      'en': '',
    },
    'fj4a2z48': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgUnitShow
  {
    'ryz0uixp': {
      'pt': 'Unidade',
      'en': '',
    },
    'ikkrpu7q': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgUnitCreateOri
  {
    'ec2dk0b6': {
      'pt': 'Código ?',
      'en': '',
    },
    'ts1hyitr': {
      'pt': '',
      'en': '',
    },
    'q2nu8kfy': {
      'pt': '',
      'en': '',
    },
    '1v3u5zo6': {
      'pt': 'Descrição ?',
      'en': '',
    },
    'qq2iytak': {
      'pt': '',
      'en': '',
    },
    'k5f5sid1': {
      'pt': '',
      'en': '',
    },
    'n1bymlon': {
      'pt': 'Informe um endereço',
      'en': '',
    },
    'jkeoa7cv': {
      'pt': 'Complemento ?',
      'en': '',
    },
    '5szferee': {
      'pt': '',
      'en': '',
    },
    'xqqv166f': {
      'pt': '',
      'en': '',
    },
    'xpvwacsd': {
      'pt': 'Minha Localização',
      'en': '',
    },
    'msz0endq': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    '6k6dnehy': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '6vp3vnmc': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'l73azyub': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '0wvpc5eq': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'f6c9kh7m': {
      'pt': 'Field is required',
      'en': '',
    },
    'wpim1je1': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '8jhvei72': {
      'pt': 'Nova Unidade',
      'en': '',
    },
    'loz1qin1': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgUnitUpdateLocation
  {
    'rnxd958u': {
      'pt': 'Editar Endereço',
      'en': '',
    },
    'o5bdmmk8': {
      'pt': 'Informe o novo endereço',
      'en': '',
    },
    '7qimdl37': {
      'pt': 'Minha Localização',
      'en': '',
    },
    '3yr73nlj': {
      'pt': 'Complemento',
      'en': '',
    },
    '0d56huot': {
      'pt': '',
      'en': '',
    },
    'cp5c068b': {
      'pt': '',
      'en': '',
    },
    'b2y6gn8y': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    '5wpzahz7': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    't013g7xr': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'fgq5w66t': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'f4cenhqe': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'cbyl6rpi': {
      'pt': 'Field is required',
      'en': '',
    },
    '1rc53p5b': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'fl7394ag': {
      'pt': 'Unidade',
      'en': '',
    },
    'iep16fav': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgUnitUpdateData
  {
    'arnkxlmt': {
      'pt': 'Editar Dados',
      'en': '',
    },
    'liyecad5': {
      'pt': 'Código ?',
      'en': '',
    },
    '4isq64iu': {
      'pt': '',
      'en': '',
    },
    'j13laz38': {
      'pt': 'Descrição ?',
      'en': '',
    },
    'ufea5kai': {
      'pt': '',
      'en': '',
    },
    'jc9cw8db': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    'feqyu42y': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'o1k12uf2': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '3y2qswym': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '2letkob7': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'gxwc0hgt': {
      'pt': 'Unidade',
      'en': '',
    },
    '3repkbos': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetsSearch
  {
    'ueynwzuu': {
      'pt': 'Ativos',
      'en': '',
    },
    'nzmq1rn1': {
      'pt': 'Cancelar',
      'en': '',
    },
    '4pyo3amd': {
      'pt': 'Código',
      'en': '',
    },
    'h0u13h7v': {
      'pt': '',
      'en': '',
    },
    '55m4jlux': {
      'pt': '',
      'en': '',
    },
    'mfp1ngoh': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetShow
  {
    'bq06bkh2': {
      'pt': 'Ativo',
      'en': '',
    },
    '00gwu5yz': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetCUStep_01
  {
    'znubtm53': {
      'pt': 'Código',
      'en': '',
    },
    'tr5d1tuy': {
      'pt': '',
      'en': '',
    },
    'vo1rn9ni': {
      'pt': 'AVANÇAR',
      'en': '',
    },
    'e6ac9ljv': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'ofidcrag': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'peupodbv': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetCUStep_02
  {
    '2sl5fy6f': {
      'pt': 'Marca ?',
      'en': '',
    },
    '6g2tt0lp': {
      'pt': '',
      'en': '',
    },
    'i12l54fp': {
      'pt': 'Modelo ?',
      'en': '',
    },
    '2b76y38a': {
      'pt': '',
      'en': '',
    },
    'lf9tgr0o': {
      'pt': 'Serial ?',
      'en': '',
    },
    'zgqnwtfg': {
      'pt': '',
      'en': '',
    },
    'puko5u9y': {
      'pt': 'Localização ?',
      'en': '',
    },
    'o1dbzs7f': {
      'pt': '',
      'en': '',
    },
    'hx2v4ja3': {
      'pt': 'Data Situação ?',
      'en': '',
    },
    '5pjoyqjk': {
      'pt': '',
      'en': '',
    },
    '98u336q8': {
      'pt': 'Observações ?',
      'en': '',
    },
    '5di9dr7r': {
      'pt': '',
      'en': '',
    },
    'moptcrgv': {
      'pt': 'Data Aquisição ?',
      'en': '',
    },
    'j0wowk4o': {
      'pt': '',
      'en': '',
    },
    'rsnovo9t': {
      'pt': 'CANCELAR',
      'en': '',
    },
    '3ci76pek': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'v45k4qrl': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '733b3y1k': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'wa5rzdqg': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ngrkb5rh': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'pawkyljk': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '40yy1y6y': {
      'pt': 'Field is required',
      'en': '',
    },
    'ivn0k90f': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '7criomz9': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'odf181ua': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mswxh7ns': {
      'pt': 'Field is required',
      'en': '',
    },
    'jlwxcwy5': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '2mamc0uj': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'lfkry5mt': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'kdkldyqi': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetCUStep_03_1
  {
    '7iww85jx': {
      'pt': 'Tensões (V1/V2)',
      'en': '',
    },
    'h57emjqq': {
      'pt': '',
      'en': '',
    },
    '1gcwt1rc': {
      'pt': 'Correntes eléticas (A1/A2)',
      'en': '',
    },
    'sgm1r00l': {
      'pt': '',
      'en': '',
    },
    'xujg5p89': {
      'pt': 'Pólos (P)',
      'en': '',
    },
    'h3vjmomv': {
      'pt': '',
      'en': '',
    },
    '5jitow5r': {
      'pt': 'Rotação (rpm)',
      'en': '',
    },
    'q4ou8n4x': {
      'pt': '',
      'en': '',
    },
    'u59737kc': {
      'pt': 'Peso (Kg)',
      'en': '',
    },
    '6uy1cjth': {
      'pt': '',
      'en': '',
    },
    'l9h1h0jx': {
      'pt': 'CANCELAR',
      'en': '',
    },
    'diky16n7': {
      'pt': 'AVANÇAR',
      'en': '',
    },
    'ddxq4vjh': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'jt1vb62v': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ccca8v4j': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'crx9jbtf': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'lnah084m': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '9xwlp7rb': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'trsrsuzs': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '91f1uvg4': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'nuykei85': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'q6cwa883': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'tvjbanlq': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '2oqy0nzv': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '6pn6ie2x': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'mnrabi0l': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'r1sabcdy': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetCUStep_03_28-200
  {
    'v6qe5rhn': {
      'pt': 'Tensões (V1/V2)',
      'en': '',
    },
    'omlk21hx': {
      'pt': '',
      'en': '',
    },
    'qh6e45xd': {
      'pt': 'Correntes eléticas (A1/A2)',
      'en': '',
    },
    'rxtlf76c': {
      'pt': '',
      'en': '',
    },
    'xmw2ttl4': {
      'pt': 'Pólos (P)',
      'en': '',
    },
    'suo3f0ev': {
      'pt': '',
      'en': '',
    },
    '1278tufx': {
      'pt': 'Rotação (rpm)',
      'en': '',
    },
    '7i2bqfx5': {
      'pt': '',
      'en': '',
    },
    'grljj6hf': {
      'pt': 'Ponto Superior (PS)',
      'en': '',
    },
    'v8dxz7cl': {
      'pt': 'mca',
      'en': '',
    },
    'pbxs4w9n': {
      'pt': 'l/s',
      'en': '',
    },
    '6yng2854': {
      'pt': 'Ponto Operação (PO)',
      'en': '',
    },
    'a5mtvtbm': {
      'pt': 'mca',
      'en': '',
    },
    'vebo78uo': {
      'pt': 'l/s',
      'en': '',
    },
    'vjfjcjwv': {
      'pt': 'Ponto Inferior (PI)',
      'en': '',
    },
    'xytdf4r6': {
      'pt': 'mca',
      'en': '',
    },
    'p4vdzdgt': {
      'pt': 'l/s',
      'en': '',
    },
    'u51iq3z2': {
      'pt': 'Peso (Kg)',
      'en': '',
    },
    '8wm98fwh': {
      'pt': '',
      'en': '',
    },
    '8yfi55tl': {
      'pt': 'CANCELAR',
      'en': '',
    },
    'sknpvhzs': {
      'pt': 'AVANÇAR',
      'en': '',
    },
    'klohnuif': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'cn2g92kl': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'r1bacrfg': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'q3v52xod': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'qnom27ip': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'm6pkkxes': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'tzf99h6y': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '3h158exg': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'zyqf3akz': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'jxglyy9d': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'eycckgkj': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '6xl5lnzi': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'lh1tofhl': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '405bvpe8': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'tz0f38kf': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOPCreate
  {
    's4mzvhv4': {
      'pt': 'Nova SS',
      'en': '',
    },
    '12c0w3xw': {
      'pt': 'Qual o problema ?',
      'en': '',
    },
    '8kpo6ipb': {
      'pt': '',
      'en': '',
    },
    '91hi66cn': {
      'pt': 'Celular ?',
      'en': '',
    },
    '5h4q7r41': {
      'pt': '',
      'en': '',
    },
    'pmobw9t7': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    'gncehtvq': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'svu79hiy': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'il1e0pgn': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'megn39sh': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'g2ntpds6': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOPShow
  {
    'kbmhrhgm': {
      'pt': 'SS',
      'en': '',
    },
    'hzvsl7ey': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOPProgramming
  {
    '6t8hsf6k': {
      'pt': 'Programação',
      'en': '',
    },
    'iw43wo16': {
      'pt': 'Historico da Atividades',
      'en': '',
    },
    '7dxiprv9': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOCreate
  {
    '50l44tkm': {
      'pt': 'Qual o problema ?',
      'en': '',
    },
    'zr086p17': {
      'pt': 'Telefone ?',
      'en': '',
    },
    '4tapzbgv': {
      'pt': '',
      'en': '',
    },
    '2s6mnbpg': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    'hrlrxs5e': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'pepzdszp': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    't2t3r3if': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'ti2hbkjq': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'xwx4737e': {
      'pt': 'Nova OS',
      'en': '',
    },
    'nwcwjo7v': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgDBAdminO
  {
    '1b73msdc': {
      'pt': 'Serviços',
      'en': '',
    },
    '2idmdd1h': {
      'pt': 'Atualização automática',
      'en': '',
    },
    'z2wvpj7n': {
      'pt': 'Filtrar',
      'en': '',
    },
    'ky2mm49f': {
      'pt': 'SS/OS',
      'en': '',
    },
    '5iospmf4': {
      'pt': '',
      'en': '',
    },
    'dwp4vujm': {
      'pt': '',
      'en': '',
    },
    'javo5v7g': {
      'pt': 'Seq',
      'en': '',
    },
    '555v4b3d': {
      'pt': '',
      'en': '',
    },
    'd715287v': {
      'pt': '',
      'en': '',
    },
    'kt4k2hax': {
      'pt': 'Ano',
      'en': '',
    },
    'h8brrpx7': {
      'pt': '',
      'en': '',
    },
    'vm1h6nu4': {
      'pt': 'SS\'s Não Programadas (Acumuladas)',
      'en': '',
    },
    '83ux88wr': {
      'pt': 'Hoje',
      'en': '',
    },
    '23e3zno1': {
      'pt': 'Ontem',
      'en': '',
    },
    '01h1si4u': {
      'pt': '7 dias',
      'en': '',
    },
    '6esfr7vn': {
      'pt': '15 dias',
      'en': '',
    },
    'v0yp2pov': {
      'pt': '30 dias',
      'en': '',
    },
    'dvi626f9': {
      'pt': '> 30 dias',
      'en': '',
    },
    '5he4dxwn': {
      'pt': 'OS\'s Abertas',
      'en': '',
    },
    'nm4k7jqi': {
      'pt': 'AV',
      'en': '',
    },
    'erhhv8cu': {
      'pt': 'Avaliação',
      'en': '',
    },
    'bdfgnf5w': {
      'pt': 'AU',
      'en': '',
    },
    'gbngcs1n': {
      'pt': 'Autorizadas',
      'en': '',
    },
    '4xmd2tqi': {
      'pt': 'AG',
      'en': '',
    },
    'nhx2l28p': {
      'pt': 'Agendadas',
      'en': '',
    },
    'dkekfae3': {
      'pt': 'EX',
      'en': '',
    },
    'muyhgsl2': {
      'pt': 'Agendadas',
      'en': '',
    },
    'bolkbuyb': {
      'pt': 'SU',
      'en': '',
    },
    '3zh3n8oz': {
      'pt': 'Suspensas',
      'en': '',
    },
    '1iy5lqie': {
      'pt': 'Ordens de Serviços',
      'en': '',
    },
    'kcn54e01': {
      'pt': 'AU',
      'en': '',
    },
    'szfvfxho': {
      'pt': 'Autorizadas',
      'en': '',
    },
    'km9qcd3y': {
      'pt': 'AG',
      'en': '',
    },
    'a6gwsavu': {
      'pt': 'Agendadas',
      'en': '',
    },
    'itxfnuwp': {
      'pt': 'EX',
      'en': '',
    },
    'stw4g5vk': {
      'pt': 'Agendadas',
      'en': '',
    },
    'phb0qcw8': {
      'pt': 'SU',
      'en': '',
    },
    'if45cljy': {
      'pt': 'Agendadas',
      'en': '',
    },
    'kf2bupy5': {
      'pt': '0',
      'en': '',
    },
    'sdzl4y99': {
      'pt': 'Painel Geral',
      'en': '',
    },
    'xeo4dx6c': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOShow
  {
    '57lzchfm': {
      'pt': 'OS',
      'en': '',
    },
    'gw024chb': {
      'pt': 'SS',
      'en': '',
    },
    'zkx1e9ku': {
      'pt': 'Atendimentos',
      'en': '',
    },
    'tqskurv5': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Dashboard5
  {
    'z0h56q90': {
      'pt': 'Below is a summary of your day.',
      'en': '',
    },
    'vjroovfl': {
      'pt': '16',
      'en': '',
    },
    '7zob14ks': {
      'pt': 'New Activity',
      'en': '',
    },
    '4qxs8re9': {
      'pt': '16',
      'en': '',
    },
    'crx7vlw2': {
      'pt': 'Current Tasks',
      'en': '',
    },
    'plwwwsaz': {
      'pt': '16',
      'en': '',
    },
    'twrifnso': {
      'pt': 'Completed Tasks',
      'en': '',
    },
    '30vlsjj5': {
      'pt': 'Current Route',
      'en': '',
    },
    'hqpi7g81': {
      'pt': 'An overview of your route.',
      'en': '',
    },
    'rf4q8z2r': {
      'pt': '15/26',
      'en': '',
    },
    'x7qovjns': {
      'pt': 'Route progress',
      'en': '',
    },
    '72rgwxio': {
      'pt': '12',
      'en': '',
    },
    'ugmkfqqj': {
      'pt': 'Tasks to be completed',
      'en': '',
    },
    'hdpg9yos': {
      'pt': 'Current Tasks',
      'en': '',
    },
    'f0ubrkvb': {
      'pt': 'A summary of your tasks',
      'en': '',
    },
    'b9yprj6c': {
      'pt': 'Task Type',
      'en': '',
    },
    'qljtyhz7': {
      'pt':
          'Task Description here this one is really long and it goes over maybe? And goes to two lines.',
      'en': '',
    },
    '5qfbgomv': {
      'pt': 'Due:',
      'en': '',
    },
    'rsu9fww5': {
      'pt': 'Today, 6:20pm',
      'en': '',
    },
    'mf9o4xk6': {
      'pt': 'Update',
      'en': '',
    },
    'entl9cxq': {
      'pt': '1',
      'en': '',
    },
    'znqvlaac': {
      'pt': 'Task Type',
      'en': '',
    },
    'l62erii7': {
      'pt': 'Task description here.',
      'en': '',
    },
    '1b7mix9h': {
      'pt': 'Due:',
      'en': '',
    },
    'bdk904dm': {
      'pt': 'Today, 6:20pm',
      'en': '',
    },
    'v25a06n1': {
      'pt': 'Update',
      'en': '',
    },
    'tiwnysaq': {
      'pt': '1',
      'en': '',
    },
    'dj4g5skq': {
      'pt': 'Recent Activity',
      'en': '',
    },
    'u0nxavim': {
      'pt': 'Below is an overview of tasks & activity completed.',
      'en': '',
    },
    'usaekb4i': {
      'pt': 'Tasks',
      'en': '',
    },
    '02zbydcy': {
      'pt': 'Completed',
      'en': '',
    },
    'omwlhyvt': {
      'pt': 'Launches',
      'en': '',
    },
    'zg28w5l0': {
      'pt': 'Last 30 Days',
      'en': '',
    },
    'e6c5pkdd': {
      'pt': 'Avg. Grade',
      'en': '',
    },
    're2akmyi': {
      'pt': 'Dashboard',
      'en': '',
    },
    'jbzs75ot': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Details03TransactionsSummary
  {
    'hrxcus8t': {
      'pt': 'Profit Details',
      'en': '',
    },
    'puuosxid': {
      'pt': 'Sales & Revenue',
      'en': '',
    },
    '8k0wxvbq': {
      'pt': '56.4k',
      'en': '',
    },
    'm8ffu3ym': {
      'pt': 'Customers',
      'en': '',
    },
    '5meuyec7': {
      'pt': '\$320k',
      'en': '',
    },
    'fskw9264': {
      'pt': 'Total Sales',
      'en': '',
    },
    'jqw1eemq': {
      'pt': '\$45.6M',
      'en': '',
    },
    'ae6dw8ps': {
      'pt': 'Revenue',
      'en': '',
    },
    'nba3n5rp': {
      'pt': '56.4k',
      'en': '',
    },
    'j8pgtesb': {
      'pt': 'Customers',
      'en': '',
    },
    '3l0eyfmo': {
      'pt': 'Your transactions',
      'en': '',
    },
    'jx9vvx7m': {
      'pt': 'List Item Title',
      'en': '',
    },
    'pt3b03ip': {
      'pt': 'Secondary text',
      'en': '',
    },
    '4snkc0uq': {
      'pt': '\$1.50',
      'en': '',
    },
    '58vtilzn': {
      'pt': 'List Item Title',
      'en': '',
    },
    '5oh6u24y': {
      'pt': 'Secondary text',
      'en': '',
    },
    '31lo1p7c': {
      'pt': '\$1.50',
      'en': '',
    },
    'ry0myrt0': {
      'pt': 'List Item Title',
      'en': '',
    },
    '1pgr73bs': {
      'pt': 'Secondary text',
      'en': '',
    },
    '1eq5trx9': {
      'pt': '\$1.50',
      'en': '',
    },
    '0p4cnq9w': {
      'pt': 'List Item Title',
      'en': '',
    },
    'mwadmhvn': {
      'pt': 'Secondary text',
      'en': '',
    },
    'bd5bf3p1': {
      'pt': '\$1.50',
      'en': '',
    },
    'j0lfrok6': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOVShow
  {
    'mhpb8201': {
      'pt': 'Atendimento',
      'en': '',
    },
    'e829yxlq': {
      'pt': 'Ativos',
      'en': '',
    },
    'ntcvxb0m': {
      'pt': 'Transporte',
      'en': '',
    },
    'u9elt01i': {
      'pt': 'Serviços',
      'en': '',
    },
    '867iqs8i': {
      'pt': 'Transporte',
      'en': '',
    },
    'isi43xr3': {
      'pt': 'Ativos',
      'en': '',
    },
    '6mzt873v': {
      'pt': 'Serviços',
      'en': '',
    },
    'yp1plqo1': {
      'pt': 'R\$ Unit',
      'en': '',
    },
    'ntgs8cv5': {
      'pt': 'A/D',
      'en': '',
    },
    'svlye24n': {
      'pt': 'Qte',
      'en': '',
    },
    '1na81oto': {
      'pt': 'R\$ Total',
      'en': '',
    },
    '3nohcoms': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgMyTeam
  {
    'hyf47vfi': {
      'pt': 'Minha Equipe',
      'en': '',
    },
    'odsq7pov': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettings
  {
    'woedd6f9': {
      'pt': 'Usuários',
      'en': '',
    },
    'zirjci3o': {
      'pt': 'SS / OS: Tipos',
      'en': '',
    },
    '2oma364a': {
      'pt': 'Atividades',
      'en': '',
    },
    '6fvfnrc4': {
      'pt': 'Empresas',
      'en': '',
    },
    'xlq22rpv': {
      'pt': 'Configurações',
      'en': '',
    },
    'mlahxsuj': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsUsers
  {
    'gcue29po': {
      'pt': 'Hello World',
      'en': '',
    },
    'bcupsgzd': {
      'pt': 'Análise',
      'en': '',
    },
    '6g5sga0w': {
      'pt': 'Inativos',
      'en': '',
    },
    'gmghdqfl': {
      'pt': 'Ativos',
      'en': '',
    },
    '46gt1p7q': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsCompanies
  {
    '0fdvgx4j': {
      'pt': 'Empresas',
      'en': '',
    },
    'qvbcfl83': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsCompany
  {
    '3gcyqhyw': {
      'pt': 'Acessibilidade',
      'en': '',
    },
    'vsnhks2g': {
      'pt': 'Contratos',
      'en': '',
    },
    'yjzez6uy': {
      'pt': 'Serviços',
      'en': '',
    },
    'o297b17r': {
      'pt': 'Empresa',
      'en': '',
    },
    'gqfvq3dl': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsCompanyContractAccesses
  {
    'kggohig8': {
      'pt': 'Usuários',
      'en': '',
    },
    '6ojn3kvm': {
      'pt': 'Ativo',
      'en': '',
    },
    'y7hq97hc': {
      'pt': 'Permissões',
      'en': '',
    },
    'xj4yjo0h': {
      'pt': 'Acessibilidade',
      'en': '',
    },
    'b1eritnr': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsUserEdit
  {
    'sntxryfe': {
      'pt': 'Nome completo',
      'en': '',
    },
    'rfn5r18q': {
      'pt': 'Apelido',
      'en': '',
    },
    '80lk2nnx': {
      'pt': 'Celular',
      'en': '',
    },
    'ols45bt5': {
      'pt': '',
      'en': '',
    },
    'bbye92kz': {
      'pt': 'ALTERAR',
      'en': '',
    },
    '8ai0xyfa': {
      'pt': 'Usuário',
      'en': '',
    },
    'dvrf6h21': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsCompanyContracts
  {
    't2oqhab4': {
      'pt': 'Contratos',
      'en': '',
    },
    '008gcay8': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgMyProfileVehiclesList
  {
    'fkpzdc9f': {
      'pt': 'Meu Veículo',
      'en': '',
    },
    '9sr7edr0': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOVAsset1Search
  {
    '85my5lr0': {
      'pt': 'Cancel',
      'en': '',
    },
    '51myoo5e': {
      'pt': 'Ativos',
      'en': '',
    },
    'lp7cj19t': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOVAsset2Before
  {
    'f92spvow': {
      'pt': 'Condição do Ativo',
      'en': '',
    },
    'l64rwywy': {
      'pt': 'Salvar',
      'en': '',
    },
    'e387hjez': {
      'pt': 'Situação ?',
      'en': '',
    },
    'rwj7kfai': {
      'pt': 'Situação ?',
      'en': '',
    },
    'tdgy7soy': {
      'pt': 'Reportada',
      'en': '',
    },
    'gdvsg5ow': {
      'pt': 'Rejeitar',
      'en': '',
    },
    'mvfu60fa': {
      'pt': 'Revisada',
      'en': '',
    },
    'uklhhqgg': {
      'pt': 'Arquivar',
      'en': '',
    },
    'yyyzbb5s': {
      'pt': 'Situação ?',
      'en': '',
    },
    'qz4h5eci': {
      'pt': 'Revisada',
      'en': '',
    },
    'sxc2wyp3': {
      'pt': 'Arquivar',
      'en': '',
    },
    '8vwznsgb': {
      'pt': 'Atendimento',
      'en': '',
    },
    'b590gk2u': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOVAsset3ActivitesSearch
  {
    'tcyvgv82': {
      'pt': 'Intervenções',
      'en': '',
    },
    'u6j9dejg': {
      'pt': 'INCLUIR',
      'en': '',
    },
    'a2bqdntz': {
      'pt': 'Salvar',
      'en': '',
    },
    'tc2fda29': {
      'pt': 'Atendimento',
      'en': '',
    },
    '6ios6lbo': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOVAsset5Moving
  {
    'qb8j2zyg': {
      'pt': 'Houve movimentação ou alteração da situação?',
      'en': '',
    },
    'ofsbecqv': {
      'pt': 'NÃO',
      'en': '',
    },
    'ilcd7mz3': {
      'pt': 'SIM',
      'en': '',
    },
    'w73z5v8r': {
      'pt': 'Informe o destino',
      'en': '',
    },
    'otn5f0nq': {
      'pt': 'Field is required',
      'en': '',
    },
    'q4b0ga85': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '6zdb9hst': {
      'pt': 'Atendimento',
      'en': '',
    },
    'd3jrv7zl': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgUnitCreate
  {
    '6yivab8l': {
      'pt': 'Código ?',
      'en': '',
    },
    'tvoc7t32': {
      'pt': '',
      'en': '',
    },
    'y6yasj86': {
      'pt': '',
      'en': '',
    },
    'cflnffs5': {
      'pt': 'Descrição ?',
      'en': '',
    },
    'l6unn3vx': {
      'pt': '',
      'en': '',
    },
    'ilbhidjj': {
      'pt': '',
      'en': '',
    },
    'fc1u0urx': {
      'pt': 'Informe um endereço',
      'en': '',
    },
    'dyqak8in': {
      'pt': 'Complemento ?',
      'en': '',
    },
    's7jhm0t4': {
      'pt': '',
      'en': '',
    },
    'pispebxz': {
      'pt': '',
      'en': '',
    },
    'qpfwygs0': {
      'pt': 'Minha Localização',
      'en': '',
    },
    '2vdr7536': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    '1984thgr': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'orzlg243': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'eljrnat9': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'afss3wjj': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'jve37l0e': {
      'pt': 'Field is required',
      'en': '',
    },
    'm60uavt3': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mboz482x': {
      'pt': 'Nova Unidade',
      'en': '',
    },
    'sa5xnple': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOPShowCopy
  {
    '5ibd6yyb': {
      'pt': 'SS',
      'en': '',
    },
    'uuaggvos': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgUnitsSearchCopy
  {
    '1glpg9uj': {
      'pt': 'Código e/ou Descrição',
      'en': '',
    },
    'mavhnw0s': {
      'pt': '',
      'en': '',
    },
    'yawst3sw': {
      'pt': '',
      'en': '',
    },
    'pfachkot': {
      'pt': 'Unidades',
      'en': '',
    },
    'q0wxndkt': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgUnitsSearch
  {
    '8jt6s7jb': {
      'pt': 'Código e/ou Descrição',
      'en': '',
    },
    'a5pzew0b': {
      'pt': '',
      'en': '',
    },
    '5w3bstq3': {
      'pt': '',
      'en': '',
    },
    'gltty110': {
      'pt': 'Unidades',
      'en': '',
    },
    'o6djyi71': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgMaterialsSearchCopy
  {
    'dzp336ub': {
      'pt': 'Código e/ou Descrição',
      'en': '',
    },
    '85sqdj9c': {
      'pt': '',
      'en': '',
    },
    '97jk2j89': {
      'pt': '',
      'en': '',
    },
    '638hicuz': {
      'pt': 'Materiais',
      'en': '',
    },
    'qo92j7cg': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgMaterialsSearch
  {
    'xn2b5hrm': {
      'pt': 'Materiais',
      'en': '',
    },
    'awfyrrzb': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgCartShow
  {
    'zzuw6v92': {
      'pt': 'Carrinho',
      'en': '',
    },
    '1jhcgoxp': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgDBAdminOV
  {
    'dhpmopuo': {
      'pt': 'Atendimentos',
      'en': '',
    },
    'rtp516s4': {
      'pt': 'Atualização manual',
      'en': '',
    },
    'q979dqr4': {
      'pt': 'Atualizar',
      'en': '',
    },
    '1xtotarj': {
      'pt': 'Situações',
      'en': '',
    },
    'rczgnyii': {
      'pt': 'Painel Geral',
      'en': '',
    },
    'vdcns0sp': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgDBUserOV
  {
    'kewjzwmq': {
      'pt': 'Meus Atendimentos',
      'en': '',
    },
    'oh77d8a2': {
      'pt': 'Atualização manual',
      'en': '',
    },
    'zp7p35q5': {
      'pt': 'Atualizar',
      'en': '',
    },
    '0qt0qxau': {
      'pt': 'Processamento',
      'en': '',
    },
    'y6o1y0jn': {
      'pt': 'Meu Painel',
      'en': '',
    },
    'phtnnbeq': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOVAsset4MaterialsSearch
  {
    'edrwyc4n': {
      'pt': 'Materiais',
      'en': '',
    },
    'bkrz9j45': {
      'pt': 'R\$ Unit',
      'en': '',
    },
    'qitl3m29': {
      'pt': 'A/D',
      'en': '',
    },
    'hum5g9wk': {
      'pt': 'Qte',
      'en': '',
    },
    'o1eaiz73': {
      'pt': 'R\$ Total',
      'en': '',
    },
    '7u9rq6te': {
      'pt': 'Salvar',
      'en': '',
    },
    'n5sesbih': {
      'pt': 'Atendimento',
      'en': '',
    },
    'og8t7lye': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Home22DashboardResponsive
  {
    'bec61ie8': {
      'pt': 'check.io',
      'en': '',
    },
    'ihwmnze7': {
      'pt': 'Platform Navigation',
      'en': '',
    },
    'i5xzw11h': {
      'pt': 'Dashboard',
      'en': '',
    },
    '39722edo': {
      'pt': 'Chats',
      'en': '',
    },
    'w57t8xs3': {
      'pt': 'Projects',
      'en': '',
    },
    '34rkni2j': {
      'pt': 'Settings',
      'en': '',
    },
    'xwxa61ls': {
      'pt': 'Notifications',
      'en': '',
    },
    'ehnn5f2c': {
      'pt': '12',
      'en': '',
    },
    'g7e0g60q': {
      'pt': 'Billing',
      'en': '',
    },
    'ggym78yn': {
      'pt': 'Explore',
      'en': '',
    },
    '2ysvdtfo': {
      'pt': 'Light Mode',
      'en': '',
    },
    'z1x8yaoe': {
      'pt': 'Dark Mode',
      'en': '',
    },
    'fldb3sj5': {
      'pt': 'Overview',
      'en': '',
    },
    'mutbnogn': {
      'pt': 'Below is a company overview',
      'en': '',
    },
    'mj43fk35': {
      'pt': 'Andrew D.',
      'en': '',
    },
    'ha9g5ggl': {
      'pt': 'admin@gmail.com',
      'en': '',
    },
    'bm2l5t8g': {
      'pt': 'Income this Month',
      'en': '',
    },
    '855xr5wx': {
      'pt': '\$567,402',
      'en': '',
    },
    'a34p4yyc': {
      'pt': 'Total Orders',
      'en': '',
    },
    'g13jmvsg': {
      'pt': '2,208',
      'en': '',
    },
    '33mnck4l': {
      'pt': 'Total Orders',
      'en': '',
    },
    '21ybjo00': {
      'pt': '2,208',
      'en': '',
    },
    '7y0itcxj': {
      'pt': 'Total Orders',
      'en': '',
    },
    'l1uilza6': {
      'pt': '2,208',
      'en': '',
    },
    'rh0txk3u': {
      'pt': 'Outstanding Balance',
      'en': '',
    },
    'dtweems5': {
      'pt': '\$529,204',
      'en': '',
    },
    'i6jlt5hc': {
      'pt': '55%',
      'en': '',
    },
    'l5que9cd': {
      'pt': 'Outstanding Balance',
      'en': '',
    },
    'txz1iin5': {
      'pt': '\$529,204',
      'en': '',
    },
    'zt2oa4gm': {
      'pt': 'Network Requests',
      'en': '',
    },
    'fstm0023': {
      'pt': 'You’re using 80% of available requests.',
      'en': '',
    },
    'lp37wsha': {
      'pt': '562k',
      'en': '',
    },
    'hbnlo29t': {
      'pt': 'You’ve almost reached your limit',
      'en': '',
    },
    'jnfxc3ck': {
      'pt':
          'You have used 80% of your available requests. Upgrade plan to make more network requests.',
      'en': '',
    },
    'tlniits3': {
      'pt': 'Card Header',
      'en': '',
    },
    'e8j2e3zw': {
      'pt': 'Create tables and ui elements that work below.',
      'en': '',
    },
    'dr8r7ko7': {
      'pt': 'Add New',
      'en': '',
    },
    'ao1by22x': {
      'pt': 'Work Type',
      'en': '',
    },
    'yh44glah': {
      'pt': 'Assigned User',
      'en': '',
    },
    'hnu76bhk': {
      'pt': 'Contract Amount',
      'en': '',
    },
    '9389q5bt': {
      'pt': 'Status',
      'en': '',
    },
    'k3su7bjb': {
      'pt': 'Actions',
      'en': '',
    },
    'shk6n208': {
      'pt': 'Design Work',
      'en': '',
    },
    'yzhtbr02': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    '2vacxg9q': {
      'pt': 'Business Name',
      'en': '',
    },
    '0f09lpg1': {
      'pt': '\$2,100',
      'en': '',
    },
    'tfo0kxxs': {
      'pt': 'Paid',
      'en': '',
    },
    'l9r9l5pw': {
      'pt': 'Design Work',
      'en': '',
    },
    'dltuupn8': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'ljjpbwzv': {
      'pt': 'Business Name',
      'en': '',
    },
    'ldczlrff': {
      'pt': '\$2,100',
      'en': '',
    },
    '16cz9anw': {
      'pt': 'Paid',
      'en': '',
    },
    'prprxkpf': {
      'pt': 'Design Work',
      'en': '',
    },
    'eedkk7z7': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'jkk9i51z': {
      'pt': 'Business Name',
      'en': '',
    },
    '5t9eitx8': {
      'pt': '\$2,100',
      'en': '',
    },
    '6w4q9bpc': {
      'pt': 'Paid',
      'en': '',
    },
    'srnv9g0s': {
      'pt': 'Design Work',
      'en': '',
    },
    'tay2aj3t': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    '48i9vejl': {
      'pt': 'Business Name',
      'en': '',
    },
    'nk520fyw': {
      'pt': '\$2,100',
      'en': '',
    },
    'nhj33gpe': {
      'pt': 'Paid',
      'en': '',
    },
    'zmdt4pzg': {
      'pt': 'Design Work',
      'en': '',
    },
    'dvlltjpq': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'dsa3zw4v': {
      'pt': 'Business Name',
      'en': '',
    },
    'hes8zqto': {
      'pt': '\$2,100',
      'en': '',
    },
    'nyc49dky': {
      'pt': 'Pending',
      'en': '',
    },
    'xy2va3mg': {
      'pt': 'Design Work',
      'en': '',
    },
    'amlg4w7r': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'w3pkfik4': {
      'pt': 'Business Name',
      'en': '',
    },
    'q3ir43y3': {
      'pt': '\$2,100',
      'en': '',
    },
    'lpegfkmm': {
      'pt': 'Pending',
      'en': '',
    },
    'v73luw6o': {
      'pt': 'Design Work',
      'en': '',
    },
    'n66ud2at': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'ufhmtfpk': {
      'pt': 'Business Name',
      'en': '',
    },
    'u4599v7z': {
      'pt': '\$2,100',
      'en': '',
    },
    '7r6hyb6p': {
      'pt': 'Pending',
      'en': '',
    },
    'wa38efez': {
      'pt': 'Card Header',
      'en': '',
    },
    'khnfw5oc': {
      'pt': 'Create tables and ui elements that work below.',
      'en': '',
    },
    'ds0d840s': {
      'pt': 'Add New',
      'en': '',
    },
    'vifxg2i9': {
      'pt': 'Work Type',
      'en': '',
    },
    '7k44uzbm': {
      'pt': 'Assigned User',
      'en': '',
    },
    'k7atvyki': {
      'pt': 'Contract Amount',
      'en': '',
    },
    'fkyefr3x': {
      'pt': 'Status',
      'en': '',
    },
    'w67wx51f': {
      'pt': 'Actions',
      'en': '',
    },
    'od5kvvfs': {
      'pt': 'Design Work',
      'en': '',
    },
    '9qsrkg57': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'e9lkkea1': {
      'pt': 'Business Name',
      'en': '',
    },
    '3o2cf62p': {
      'pt': '\$2,100',
      'en': '',
    },
    'noj4yv5u': {
      'pt': 'Paid',
      'en': '',
    },
    'cs1a9m82': {
      'pt': 'Design Work',
      'en': '',
    },
    '3ax2ah9c': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    '8py85adj': {
      'pt': 'Business Name',
      'en': '',
    },
    'nbw4sy12': {
      'pt': '\$2,100',
      'en': '',
    },
    '2i6zyi14': {
      'pt': 'Paid',
      'en': '',
    },
    'eyhco4sj': {
      'pt': 'Design Work',
      'en': '',
    },
    'hwnjilnv': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    '6v9zvrcy': {
      'pt': 'Business Name',
      'en': '',
    },
    'tm1yh50i': {
      'pt': '\$2,100',
      'en': '',
    },
    'apywve1t': {
      'pt': 'Paid',
      'en': '',
    },
    'lplurhcp': {
      'pt': 'Design Work',
      'en': '',
    },
    '4sa4mdar': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'gs7rsjsw': {
      'pt': 'Business Name',
      'en': '',
    },
    'g1400dya': {
      'pt': '\$2,100',
      'en': '',
    },
    'nnt1kbdu': {
      'pt': 'Paid',
      'en': '',
    },
    '4273lghr': {
      'pt': 'Design Work',
      'en': '',
    },
    '9iln25r9': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'ko56vj5d': {
      'pt': 'Business Name',
      'en': '',
    },
    'l9mcl3qs': {
      'pt': '\$2,100',
      'en': '',
    },
    '7v0z3370': {
      'pt': 'Pending',
      'en': '',
    },
    '48tch6ks': {
      'pt': 'Design Work',
      'en': '',
    },
    'ulgwohxz': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'v7rqyr9b': {
      'pt': 'Business Name',
      'en': '',
    },
    '703q0jf2': {
      'pt': '\$2,100',
      'en': '',
    },
    'emzbgs9b': {
      'pt': 'Pending',
      'en': '',
    },
    'peal0ko9': {
      'pt': 'Design Work',
      'en': '',
    },
    'jebxyqnf': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'nd3lbyq4': {
      'pt': 'Business Name',
      'en': '',
    },
    'uekcsihl': {
      'pt': '\$2,100',
      'en': '',
    },
    'ofuf2q6z': {
      'pt': 'Pending',
      'en': '',
    },
    '4yiy0mvt': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetCUStep_03_2
  {
    '1d57zzy5': {
      'pt': 'Pólos (P)',
      'en': '',
    },
    'slhyf6zh': {
      'pt': '',
      'en': '',
    },
    'jerte0nx': {
      'pt': 'Rotação (rpm)',
      'en': '',
    },
    'w6aav60t': {
      'pt': '',
      'en': '',
    },
    'sdz0gbw7': {
      'pt': 'Ponto Superior (PS)',
      'en': '',
    },
    'fqxwrtdj': {
      'pt': 'mca',
      'en': '',
    },
    'a52fdy6p': {
      'pt': 'l/s',
      'en': '',
    },
    '9ph4c0fp': {
      'pt': 'Ponto Operação (PO)',
      'en': '',
    },
    'nfxxg6ts': {
      'pt': 'mca',
      'en': '',
    },
    'fqt3krfp': {
      'pt': 'l/s',
      'en': '',
    },
    'n0iy6kqs': {
      'pt': 'Ponto Inferior (PI)',
      'en': '',
    },
    'npw8d2a5': {
      'pt': 'mca',
      'en': '',
    },
    'h9kl6i6q': {
      'pt': 'l/s',
      'en': '',
    },
    '6257kxgk': {
      'pt': 'Peso (Kg)',
      'en': '',
    },
    'yhn2z803': {
      'pt': '',
      'en': '',
    },
    'cckz2cum': {
      'pt': 'CANCELAR',
      'en': '',
    },
    '3evdardk': {
      'pt': 'AVANÇAR',
      'en': '',
    },
    'ne9kowk0': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'j98gv510': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'zzpek5l7': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'jqvn0t9h': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '1i3cc531': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '4x9areh2': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ib1hsmm6': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'ajn6ty2k': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'g1jdfjlo': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'w23tzi80': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '23p55776': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'p0usxgw2': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'hfpoevxi': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '44qwvc6h': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '5iv6h8e8': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetCUStep_03_12_13_14_15_29
  {
    'rflbez0q': {
      'pt': 'Tensões (V1/V2)',
      'en': '',
    },
    '3yyr5bwi': {
      'pt': '',
      'en': '',
    },
    'axscf3b0': {
      'pt': 'Correntes eléticas (A1/A2)',
      'en': '',
    },
    'q6g9xtiv': {
      'pt': '',
      'en': '',
    },
    'azh74jh7': {
      'pt': 'Peso (Kg)',
      'en': '',
    },
    'td06c19d': {
      'pt': '',
      'en': '',
    },
    'opfi284o': {
      'pt': 'CANCELAR',
      'en': '',
    },
    'hcnk9t95': {
      'pt': 'AVANÇAR',
      'en': '',
    },
    '0esbeth7': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'bxl678bo': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'xkead9h6': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'fz60xhjq': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'hau4e00e': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'vfm3fm76': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'tjto0lbo': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'nhs835z0': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '9tyyltx7': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'lqn8ezqc': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '7xnh3hsh': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'a5fj8cld': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'vuijbgda': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'ijtj9x9c': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '20d9yyk5': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetCUStep_04_image
  {
    '4v85q86p': {
      'pt': 'CANCELAR',
      'en': '',
    },
    'c75rlb2y': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    '41o765ph': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'iiz5tjrv': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '7e3tk6hg': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'xj6vvsuk': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '2bqa5fpj': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'l47c6vk4': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'rfoozg8p': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '1bec6rlr': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '6kftwg16': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'qh0j7j4d': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'l4pu0f0k': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'spvs82t8': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'tdqj3c40': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '5hqu6fs7': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'pvv9bskc': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAssetCUStep_03_19
  {
    'oh45ekb8': {
      'pt': 'Tensões (AT/BT V)',
      'en': '',
    },
    'soynu3w4': {
      'pt': '',
      'en': '',
    },
    'rqsah4x5': {
      'pt': 'Correntes eléticas (AT/BT A)',
      'en': '',
    },
    'tfr22elg': {
      'pt': '',
      'en': '',
    },
    '7cg82qd3': {
      'pt': 'Peso (Kg)',
      'en': '',
    },
    '0q6own3t': {
      'pt': '',
      'en': '',
    },
    'hho19wdp': {
      'pt': 'CANCELAR',
      'en': '',
    },
    'mygibkem': {
      'pt': 'AVANÇAR',
      'en': '',
    },
    'p7culf08': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'grmi1f14': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'g1k0te9v': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'ew5njlr4': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'tqmhfnuw': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'rwv2jkc5': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '7lwb9ego': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'n87q495m': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '3sd251cd': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'sikfozhv': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'oz3qcsb1': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'eo62qv4c': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'hfn5q436': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'dprvr1if': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '4n9v94il': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgTMSearch
  {
    'whrwp55q': {
      'pt': 'Biblioteca',
      'en': '',
    },
    'ju695wck': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgTMShow
  {
    'rltzzmt1': {
      'pt': 'Documentos',
      'en': '',
    },
    '4fxjb7tm': {
      'pt': 'Ativos',
      'en': '',
    },
    'b9x220kp': {
      'pt': 'Biblioteca',
      'en': '',
    },
    'g2ncdgmy': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgAppVersionNewRelease
  {
    'o13k6jfm': {
      'pt':
          'Entre no grupo SiGeS do WhatsApp para baixar a nova versão atualizada.',
      'en': '',
    },
    'pvoyws2c': {
      'pt':
          'Caso apareça algum erro no momento da instalação, desinstale a versão atual, baixe a nova versão e após instale novamente.',
      'en': '',
    },
    'iplf4bz9': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsOTypesActivities
  {
    '9xfsfd9z': {
      'pt': 'Atividades',
      'en': '',
    },
    'v41t7xid': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsCompanyContractDetails
  {
    'ppgks1ne': {
      'pt': 'Gestores',
      'en': '',
    },
    'i3sch5w7': {
      'pt': 'Remover',
      'en': '',
    },
    'ge1jexze': {
      'pt': 'Serviços',
      'en': '',
    },
    'rez7y8zq': {
      'pt': 'Contrato',
      'en': '',
    },
    'e2ndgfkx': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsCompanyContractServicesSearch
  {
    '68pdmxxz': {
      'pt': 'Page Title',
      'en': '',
    },
    'zabxtjn2': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgCalendar
  {
    'q7pwotb5': {
      'pt': '2023',
      'en': '',
    },
    'sok03hxm': {
      'pt': 'Jan',
      'en': '',
    },
    'da3qlf8b': {
      'pt': 'Feb',
      'en': '',
    },
    'wwkdaaz8': {
      'pt': 'Mar',
      'en': '',
    },
    'w9qxhp6s': {
      'pt': 'Apr',
      'en': '',
    },
    'mvliampo': {
      'pt': 'May',
      'en': '',
    },
    'hc3oocsb': {
      'pt': 'Jun',
      'en': '',
    },
    '3qfamahk': {
      'pt': 'Jul',
      'en': '',
    },
    '4wk3xfu9': {
      'pt': 'Aug',
      'en': '',
    },
    'o5r905y2': {
      'pt': 'Sep',
      'en': '',
    },
    'bdcr4h95': {
      'pt': 'Oct',
      'en': '',
    },
    'j4yuvklq': {
      'pt': 'Nov',
      'en': '',
    },
    '6tfkitaj': {
      'pt': 'Dec',
      'en': '',
    },
    'm4spt41e': {
      'pt': '1',
      'en': '',
    },
    'lkzae5wm': {
      'pt': '2',
      'en': '',
    },
    'x0xhxgd9': {
      'pt': '3',
      'en': '',
    },
    '1oxhy3na': {
      'pt': '4',
      'en': '',
    },
    'j3ceuuaj': {
      'pt': '5',
      'en': '',
    },
    'dtr72smc': {
      'pt': '6',
      'en': '',
    },
    'b8tqoa3x': {
      'pt': '7',
      'en': '',
    },
    're5nkl5j': {
      'pt': '8',
      'en': '',
    },
    '45pmc7p1': {
      'pt': '9',
      'en': '',
    },
    'd5bhacjc': {
      'pt': '10',
      'en': '',
    },
    'irit1e1p': {
      'pt': '11',
      'en': '',
    },
    '0kltqrgl': {
      'pt': '12',
      'en': '',
    },
    '71saf7hv': {
      'pt': '13',
      'en': '',
    },
    'vyqc9w3t': {
      'pt': '14',
      'en': '',
    },
    'pn58vd9v': {
      'pt': '15',
      'en': '',
    },
    'kteb43lj': {
      'pt': '16',
      'en': '',
    },
    'zftzf19w': {
      'pt': '17',
      'en': '',
    },
    '2mcri0ue': {
      'pt': '18',
      'en': '',
    },
    '9z8toud3': {
      'pt': '19',
      'en': '',
    },
    'b43sgh80': {
      'pt': '20',
      'en': '',
    },
    'wg6n526f': {
      'pt': '21',
      'en': '',
    },
    '3bb8ekmn': {
      'pt': '22',
      'en': '',
    },
    'bdjr52ji': {
      'pt': '23',
      'en': '',
    },
    '2wq04er2': {
      'pt': '24',
      'en': '',
    },
    'hforzpp2': {
      'pt': '25',
      'en': '',
    },
    'nkp1uxqf': {
      'pt': '26',
      'en': '',
    },
    'n6wl1w7p': {
      'pt': '27',
      'en': '',
    },
    '58h48c1x': {
      'pt': '28',
      'en': '',
    },
    'e4n2x76w': {
      'pt': '29',
      'en': '',
    },
    'g53d5fs5': {
      'pt': '30',
      'en': '',
    },
    '3b3c22a1': {
      'pt': '31',
      'en': '',
    },
  },
  // pgDBAdminFinancial
  {
    'hrild40j': {
      'pt': 'Financeiro',
      'en': '',
    },
    '8xrwbxpj': {
      'pt': 'Selecione uma situação do Processamento.',
      'en': '',
    },
    'qlgkunhm': {
      'pt': 'Painel Geral',
      'en': '',
    },
    '59by503k': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Home17Calendar
  {
    'kxonjrw0': {
      'pt': 'Month',
      'en': '',
    },
    'jk5fvknd': {
      'pt': 'Coming Up',
      'en': '',
    },
    'vf49mlmt': {
      'pt': 'Doctors Check In',
      'en': '',
    },
    '4romtgu6': {
      'pt': '2:20pm',
      'en': '',
    },
    'yklzhpn2': {
      'pt': 'Wed, 03/08/2022',
      'en': '',
    },
    'n83dix3d': {
      'pt': 'Past Due',
      'en': '',
    },
    'onfq22op': {
      'pt': 'Check In',
      'en': '',
    },
    'k0ad60tr': {
      'pt': '2:20pm',
      'en': '',
    },
    'nx5fbfk0': {
      'pt': 'Wed, 03/08/2022',
      'en': '',
    },
    'tu5dzfqn': {
      'pt': 'Week',
      'en': '',
    },
    '5u6d6mu8': {
      'pt': 'Coming Up',
      'en': '',
    },
    'sgho450t': {
      'pt': 'Doctors Check In',
      'en': '',
    },
    'cc0a43hy': {
      'pt': '2:20pm',
      'en': '',
    },
    'u7qfmcp3': {
      'pt': 'Wed, 03/08/2022',
      'en': '',
    },
    '2d1c8k5g': {
      'pt': 'Past Due',
      'en': '',
    },
    '3wbgbvm0': {
      'pt': 'Check In',
      'en': '',
    },
    'lejyo45l': {
      'pt': '2:20pm',
      'en': '',
    },
    'lrcibntg': {
      'pt': 'Wed, 03/08/2022',
      'en': '',
    },
    'soapypu2': {
      'pt': 'Calendar',
      'en': '',
    },
    '6xc4amss': {
      'pt': '1',
      'en': '',
    },
    'dqep7qmq': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgDBTeamO
  {
    'vglkcu2l': {
      'pt': 'Meu Painel',
      'en': '',
    },
    'kvxaogqc': {
      'pt': 'Meus Serviços',
      'en': '',
    },
    '6ihr989k': {
      'pt': 'Atualização automática',
      'en': '',
    },
    '7mj77a0h': {
      'pt': 'Situações',
      'en': '',
    },
    'swetra0s': {
      'pt': 'AU',
      'en': '',
    },
    'ez28c1zd': {
      'pt': 'Autorizadas',
      'en': '',
    },
    'lf8rzs2b': {
      'pt': 'AG',
      'en': '',
    },
    'iydgoj8r': {
      'pt': 'Agendadas',
      'en': '',
    },
    '7lqmipig': {
      'pt': 'EX',
      'en': '',
    },
    'lrc665vs': {
      'pt': 'Execução',
      'en': '',
    },
    '61036ucg': {
      'pt': 'SU',
      'en': '',
    },
    '13x5m6v7': {
      'pt': 'Suspensas',
      'en': '',
    },
    'zx4l5fvw': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgSettingsServices
  {
    'bkrrc2kg': {
      'pt': 'Serviços',
      'en': '',
    },
    '52xcuphn': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgPasswordRecovery
  {
    'iewov7ll': {
      'pt': 'Novo Acesso',
      'en': '',
    },
    '6fkes6xf': {
      'pt': 'Informe o seu e-mail abaixo para receber instruções.',
      'en': '',
    },
    '5j3oxxa3': {
      'pt': 'E-mail',
      'en': '',
    },
    'zq6dnx0b': {
      'pt': '',
      'en': '',
    },
    'd7hztqic': {
      'pt': '',
      'en': '',
    },
    's3wiovvv': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    'hbjay68r': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'ngz05ogk': {
      'pt': 'Inválido.',
      'en': '',
    },
    'yb4bvgjl': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '0cbhtnl4': {
      'pt': 'Já tem conta ?  ',
      'en': '',
    },
    '13v8ep0k': {
      'pt': 'Entre Aqui',
      'en': '',
    },
    'rvgtc6up': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgPasswordUpdate
  {
    '236fax15': {
      'pt': 'Novo Acesso',
      'en': '',
    },
    'g7q40bxk': {
      'pt': 'Informe a sua nova senha  de acesso abaixo.',
      'en': '',
    },
    'uiipf37m': {
      'pt': 'Senha',
      'en': '',
    },
    '8xtv6hcc': {
      'pt': '',
      'en': '',
    },
    '5p89hql7': {
      'pt': '',
      'en': '',
    },
    '6jaf54gt': {
      'pt': 'Confirmar senha',
      'en': '',
    },
    '1smsctcy': {
      'pt': '',
      'en': '',
    },
    'fjfbppxd': {
      'pt': '',
      'en': '',
    },
    '43bd59dc': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    'ml61dm6w': {
      'pt': 'Obrigatório',
      'en': '',
    },
    'eprdlx42': {
      'pt': 'Mín 06 carateres',
      'en': '',
    },
    'ucd9zm76': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '5uiqdmbg': {
      'pt': 'Obrigatório',
      'en': '',
    },
    '1ad1t2og': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '7bqyzucz': {
      'pt': 'Já tem conta ?  ',
      'en': '',
    },
    'gqiyhncc': {
      'pt': 'Entre Aqui',
      'en': '',
    },
    'g3xfs3xw': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgImportData
  {
    '9brzetij': {
      'pt': 'Usuarios\n',
      'en': '',
    },
    '3ojpnc5q': {
      'pt': 'Page Title',
      'en': '',
    },
    '9zx6ul2z': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgUserMigration
  {
    '6oacbtmc': {
      'pt': 'Search...',
      'en': '',
    },
    'bgyqfq9e': {
      'pt': 'Option 1',
      'en': '',
    },
    '90sw0sil': {
      'pt': 'Option 2',
      'en': '',
    },
    'bcngmm91': {
      'pt': 'Option 3',
      'en': '',
    },
    'y1eagyxr': {
      'pt': 'Button',
      'en': '',
    },
    'p7lxnfci': {
      'pt': 'Button',
      'en': '',
    },
    'b77y2et1': {
      'pt': 'Button',
      'en': '',
    },
    '1030ge5b': {
      'pt': 'Page Title',
      'en': '',
    },
    'tkj93t8b': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgDbUserOve
  {
    '90wtdvzs': {
      'pt': 'Serviços EXTRAS',
      'en': '',
    },
    '3hdsyjg1': {
      'pt': 'Atualização automática',
      'en': '',
    },
    'wmmvvmxi': {
      'pt': 'Processamento',
      'en': '',
    },
    '5xw9oyzr': {
      'pt': 'Meu Painel',
      'en': '',
    },
    '8hyb4j7w': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pppp
  {
    'y7trdvlz': {
      'pt': 'Page Title',
      'en': '',
    },
    'cd4qhfi5': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOCreateCopy
  {
    '0vso2v7u': {
      'pt': 'Qual o problema ?',
      'en': '',
    },
    'dd139hsk': {
      'pt': 'Telefone ?',
      'en': '',
    },
    'r4u5qk58': {
      'pt': '',
      'en': '',
    },
    'dkunthip': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    '23jehv7t': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'zmv1nbb8': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'cp26g6u4': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'mj07lfl9': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'zbvg1u2m': {
      'pt': 'Nova OS',
      'en': '',
    },
    '26uvft47': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOVETest
  {
    'vn2i0txt': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgDbAdminONew
  {
    'm5r5fsb7': {
      'pt': 'Painel Geral',
      'en': '',
    },
    'ecvu6k5j': {
      'pt': 'Disponibilidade',
      'en': '',
    },
    'l44y6fov': {
      'pt': 'Serviços Extras',
      'en': '',
    },
    'ytpbii4x': {
      'pt': 'Atualização automática',
      'en': '',
    },
    '75chuq86': {
      'pt': '',
      'en': '',
    },
    '49sw2d44': {
      'pt': 'SE nr',
      'en': '',
    },
    '6c4w9e5y': {
      'pt': 'Busca rápida',
      'en': '',
    },
    '6iirir4c': {
      'pt': 'Busca por data',
      'en': '',
    },
    'onrx0hga': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOveShow
  {
    'ybrlu8i0': {
      'pt': 'Serviço Extra',
      'en': '',
    },
    '4gi2pqmw': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgOVEShowCopy
  {
    '0bm77j3v': {
      'pt': 'Extraordinário',
      'en': '',
    },
    'al8mjfas': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgDbAdminOve
  {
    'pb6c7tbf': {
      'pt': 'Serviços Extras',
      'en': '',
    },
    'wzhf2wog': {
      'pt': 'Data inicial',
      'en': '',
    },
    'wcmii5jn': {
      'pt': 'Data final',
      'en': '',
    },
    'w80e37ut': {
      'pt': '',
      'en': '',
    },
    'g1vsulug': {
      'pt': 'SE nr',
      'en': '',
    },
    'aeg8zuqc': {
      'pt': 'Processamento',
      'en': '',
    },
    'pb948h8d': {
      'pt': 'Home',
      'en': '',
    },
  },
  // pgDbAdminONewOriginal
  {
    '24kf8x3p': {
      'pt': 'Painel Geral',
      'en': '',
    },
    'vxolamay': {
      'pt': 'Disponibilidade',
      'en': '',
    },
    'bqi9xvh4': {
      'pt': 'Serviços Extras',
      'en': '',
    },
    'n7jwjvi7': {
      'pt': 'Atualização automática',
      'en': '',
    },
    '8xhkinhj': {
      'pt': '',
      'en': '',
    },
    'eah0ucfl': {
      'pt': 'SE nr',
      'en': '',
    },
    'atw3tse9': {
      'pt': 'Serviços',
      'en': '',
    },
    'pbyn0f40': {
      'pt': 'Atualização automática',
      'en': '',
    },
    '0ikfj7ho': {
      'pt': 'Filtrar',
      'en': '',
    },
    '302s7cww': {
      'pt': 'SS/OS',
      'en': '',
    },
    'ofnd3qox': {
      'pt': '',
      'en': '',
    },
    'cwmspk0y': {
      'pt': '',
      'en': '',
    },
    'o9cb173p': {
      'pt': 'Seq',
      'en': '',
    },
    '4cbquxv6': {
      'pt': '',
      'en': '',
    },
    'yjqzyccg': {
      'pt': '',
      'en': '',
    },
    'y1cf5ldl': {
      'pt': 'Ano',
      'en': '',
    },
    'p8789f2w': {
      'pt': '',
      'en': '',
    },
    '5vqpooow': {
      'pt': 'SS\'s Não Programadas (Acumuladas)',
      'en': '',
    },
    'u8u93gya': {
      'pt': 'Hoje',
      'en': '',
    },
    'sx6mfcid': {
      'pt': 'Ontem',
      'en': '',
    },
    'bk05okfd': {
      'pt': '7 dias',
      'en': '',
    },
    '6uz6fupm': {
      'pt': '15 dias',
      'en': '',
    },
    'asbra2om': {
      'pt': '30 dias',
      'en': '',
    },
    '3cx4pskh': {
      'pt': '> 30 dias',
      'en': '',
    },
    'o3uzu7w1': {
      'pt': 'OS\'s Abertas',
      'en': '',
    },
    'e4s39uzx': {
      'pt': 'AV',
      'en': '',
    },
    'ab5lat2m': {
      'pt': 'Avaliação',
      'en': '',
    },
    '3mm73gxp': {
      'pt': 'AU',
      'en': '',
    },
    '4bw5duun': {
      'pt': 'Autorizadas',
      'en': '',
    },
    'he57fl67': {
      'pt': 'AG',
      'en': '',
    },
    'x2f3wl0l': {
      'pt': 'Agendadas',
      'en': '',
    },
    '5mmswri9': {
      'pt': 'EX',
      'en': '',
    },
    'ek0rc7gr': {
      'pt': 'Agendadas',
      'en': '',
    },
    'qiiqb75f': {
      'pt': 'SU',
      'en': '',
    },
    'aa7eew4f': {
      'pt': 'Suspensas',
      'en': '',
    },
    '833116qa': {
      'pt': 'Ordens de Serviços',
      'en': '',
    },
    'qqtg3zej': {
      'pt': 'AU',
      'en': '',
    },
    '49akktbm': {
      'pt': 'Autorizadas',
      'en': '',
    },
    'kcizzibg': {
      'pt': 'AG',
      'en': '',
    },
    'mnzsoazg': {
      'pt': 'Agendadas',
      'en': '',
    },
    'alpl33i6': {
      'pt': 'EX',
      'en': '',
    },
    'vmhxxx26': {
      'pt': 'Agendadas',
      'en': '',
    },
    '1cb14rtg': {
      'pt': 'SU',
      'en': '',
    },
    'n5kqvvxk': {
      'pt': 'Agendadas',
      'en': '',
    },
    'euspr2cl': {
      'pt': '0',
      'en': '',
    },
    'x1wl0qkh': {
      'pt': 'Home',
      'en': '',
    },
  },
  // cpInputText
  {
    'qbkrxl7o': {
      'pt': '',
      'en': '',
    },
  },
  // cpInputPassword
  {
    'gux7rzse': {
      'pt': '',
      'en': '',
    },
  },
  // cpInputEmail
  {
    'qo58syou': {
      'pt': 'E-mail',
      'en': '',
    },
  },
  // cpDropdownTeamsCompany
  {
    'bfowgoo8': {
      'pt': 'Equipe',
      'en': '',
    },
    '1ybep3bg': {
      'pt': 'Equipe',
      'en': '',
    },
  },
  // cpMenu
  {
    'hjo1y486': {
      'pt': 'Menu',
      'en': '',
    },
    'mxd5ld5h': {
      'pt': 'Meu Painel',
      'en': '',
    },
    'fe43c9ms': {
      'pt': 'Unidades',
      'en': '',
    },
    'kucvh5m7': {
      'pt': 'Ativos',
      'en': '',
    },
    '8s4whq10': {
      'pt': 'Materiais',
      'en': '',
    },
    'j30g7p6w': {
      'pt': 'Biblioteca Técnica',
      'en': '',
    },
    'b7lo8d7i': {
      'pt': 'Painel Geral',
      'en': '',
    },
    'efoy02mp': {
      'pt': 'Serviços Extras',
      'en': '',
    },
    'nljeerjp': {
      'pt': 'Configurações',
      'en': '',
    },
  },
  // mdUnitsMenuOptions
  {
    'ohz8f24n': {
      'pt': 'Editar',
      'en': '',
    },
    'zt8njsms': {
      'pt': 'DADOS',
      'en': '',
    },
    '5jpylhl6': {
      'pt': 'ENDEREÇO',
      'en': '',
    },
  },
  // mdAssetsSearchFilters
  {
    '8k487jv4': {
      'pt': 'Filtros',
      'en': '',
    },
    'cb81fk6l': {
      'pt': 'Código e/ou descrição',
      'en': '',
    },
    'v42xwkbd': {
      'pt': '',
      'en': '',
    },
    '46dek56x': {
      'pt': 'Limpar ',
      'en': '',
    },
    'w6tctba8': {
      'pt': 'Aplicar',
      'en': '',
    },
    'as5murjl': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    've3zwnki': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // cpInputCurrency2Decimals
  {
    'x8yoh2vp': {
      'pt': '',
      'en': '',
    },
  },
  // mdAssetsMenuOptions
  {
    '5lacz5bt': {
      'pt': 'EDITAR',
      'en': '',
    },
    'q2p5fmnu': {
      'pt': 'DUPLICAR',
      'en': '',
    },
  },
  // cpInputCurrency0DecimalsCopy
  {
    'hhhtxgbl': {
      'pt': '',
      'en': '',
    },
  },
  // cpInputDate
  {
    'u2760ivu': {
      'pt': 'TextField',
      'en': '',
    },
    'kx98at6i': {
      'pt': 'Button',
      'en': '',
    },
  },
  // cpDropdownFiltersAssetsPriorities
  {
    '9tqbyo16': {
      'pt': 'Prioridades\n',
      'en': '',
    },
    'l7wcchyk': {
      'pt': 'Equipe',
      'en': '',
    },
  },
  // cpInputCalendar
  {
    'gdfqjnal': {
      'pt': '',
      'en': '',
    },
  },
  // cpOStatus
  {
    '9x4xgctu': {
      'pt': 'NP',
      'en': '',
    },
    '10syenrb': {
      'pt': 'Não Programadas',
      'en': '',
    },
    'arcd2ip8': {
      'pt': 'AV',
      'en': '',
    },
    'zo6hwhlw': {
      'pt': 'Não Programadas',
      'en': '',
    },
    'xs43umb1': {
      'pt': 'AU',
      'en': '',
    },
    '00yubm6i': {
      'pt': 'Não Programadas',
      'en': '',
    },
    '951377re': {
      'pt': 'AG',
      'en': '',
    },
    'zvcf3cyx': {
      'pt': 'Não Programadas',
      'en': '',
    },
    '7lwlury8': {
      'pt': 'EX',
      'en': '',
    },
    'cyd5609j': {
      'pt': 'Não Programadas',
      'en': '',
    },
    'yuevx90v': {
      'pt': 'SU',
      'en': '',
    },
    'hjccmjhn': {
      'pt': 'Não Programadas',
      'en': '',
    },
    'ld1c4ktv': {
      'pt': 'CA',
      'en': '',
    },
    '23kx69vi': {
      'pt': 'Não Programadas',
      'en': '',
    },
    'fho3iszp': {
      'pt': 'CO',
      'en': '',
    },
    'pjjirjpb': {
      'pt': 'Não Programadas',
      'en': '',
    },
  },
  // mdOPMenuOptions
  {
    'd4q45vm6': {
      'pt': 'Menu',
      'en': '',
    },
    '64dd3jqa': {
      'pt': 'GERAR OS',
      'en': '',
    },
    'tgzv6amk': {
      'pt': 'CANCELAR SS',
      'en': '',
    },
  },
  // cpOPButton
  {
    'ei34t5a0': {
      'pt': 'SS',
      'en': '',
    },
    'wzdkynbt': {
      'pt': 'SS',
      'en': '',
    },
  },
  // cpOCardShow
  {
    'ctflmw20': {
      'pt': 'statusDate',
      'en': '',
    },
    'wnkt9kih': {
      'pt': 'Solicitante',
      'en': '',
    },
    'wyyhmdym': {
      'pt': 'Responsável',
      'en': '',
    },
    'lif9qjms': {
      'pt': 'AUTORIZAR',
      'en': '',
    },
    '3lr9dr23': {
      'pt': 'INICIAR ATENDIMENTO',
      'en': '',
    },
  },
  // mdOAuthorization
  {
    'zbahyjuo': {
      'pt': 'Autorização',
      'en': '',
    },
    '779cihiy': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
  },
  // cpOButton
  {
    'ftcude0t': {
      'pt': 'OS',
      'en': '',
    },
    'sqoba2sv': {
      'pt': 'OS',
      'en': '',
    },
  },
  // cpOShow
  {
    'b7hrg5uh': {
      'pt': 'SS',
      'en': '',
    },
    'u1bqgf2s': {
      'pt': 'AUTORIZAR',
      'en': '',
    },
  },
  // mdDBAdminFiltersServices
  {
    'u212ta98': {
      'pt': 'Filtros',
      'en': '',
    },
    'ypsze5ps': {
      'pt': 'Limpar',
      'en': '',
    },
    'ui4h2y35': {
      'pt': 'Aplicar',
      'en': '',
    },
  },
  // cpDdSystemsParentMultiAll
  {
    'o3omnzcd': {
      'pt': 'Sistemas',
      'en': '',
    },
    'k6odgpa2': {
      'pt': 'Sistemas',
      'en': '',
    },
  },
  // cpDdSystemsSubsMultiAll
  {
    '31eb5v5k': {
      'pt': 'Sub Sistemas',
      'en': '',
    },
    '77mahmv4': {
      'pt': 'Sub Sistemas',
      'en': '',
    },
  },
  // cpDropdownFiltersUnitsTypesParent
  {
    '6yiist6o': {
      'pt': 'Tipo Unidades',
      'en': '',
    },
    'p6o1n758': {
      'pt': 'Tipos Unidades',
      'en': '',
    },
  },
  // cpDropdownFiltersUnitsTypes
  {
    'uamba2x9': {
      'pt': 'Sub Tipo Unidades',
      'en': '',
    },
    'aejgjqq6': {
      'pt': 'Sub Tipos Unidades',
      'en': '',
    },
  },
  // cpDropdownFiltersUnits
  {
    '7iki3ujr': {
      'pt': 'Unidades',
      'en': '',
    },
    'arjx1bze': {
      'pt': 'Unidades',
      'en': '',
    },
  },
  // cpDropdownFiltersOObjects
  {
    'k282966s': {
      'pt': 'Finalidades',
      'en': '',
    },
    'j3jrmosh': {
      'pt': 'Finalidades',
      'en': '',
    },
  },
  // cpDdOTypesMultiAll
  {
    '3h8sj2h9': {
      'pt': 'Tipos OS\'s',
      'en': '',
    },
    'wf9q91nk': {
      'pt': 'Tipos OS\'s',
      'en': '',
    },
  },
  // cpDdOTypesSubsMultiAll
  {
    'mgy5m83a': {
      'pt': 'Sub Tipos OS\'s',
      'en': '',
    },
    'zoz9aho0': {
      'pt': 'Sub Tipos OS\'s',
      'en': '',
    },
  },
  // cpDropdownFiltersContractsDepartment
  {
    '70ppn49r': {
      'pt': 'Contratos',
      'en': '',
    },
    '4xzskm6r': {
      'pt': 'Contratos',
      'en': '',
    },
  },
  // cpDropdownFiltersTeamsDepartment
  {
    '83rcyjsp': {
      'pt': 'Equipes',
      'en': '',
    },
    '4s6lwdqw': {
      'pt': 'Equipes',
      'en': '',
    },
  },
  // cpDropdownFiltersOPlansDepartment
  {
    '5kprbnz0': {
      'pt': 'Planos',
      'en': '',
    },
    '3m5yhbxd': {
      'pt': 'Planos',
      'en': '',
    },
  },
  // cpDropdownFiltersContractsDepartmentProviders
  {
    'vdskp5wb': {
      'pt': 'Contratos',
      'en': '',
    },
    'j9og71cr': {
      'pt': 'Contratos',
      'en': '',
    },
  },
  // mdUserNotification
  {
    'wh7gedy5': {
      'pt': 'Notificação',
      'en': '',
    },
  },
  // Modal11CreateNote
  {
    'tvl93s4m': {
      'pt': 'Leave a note',
      'en': '',
    },
    'h7yhoj50': {
      'pt': 'Please let us know what is going on below.',
      'en': '',
    },
    'loecqg36': {
      'pt': 'Leave note here...',
      'en': '',
    },
    'tl35jddw': {
      'pt': 'Leave Note',
      'en': '',
    },
  },
  // cpOVProcessing
  {
    '77tm266l': {
      'pt': ' ',
      'en': '',
    },
  },
  // mdOVClose
  {
    '4iqwbd23': {
      'pt': 'Encerrar',
      'en': '',
    },
    'w74b2ppj': {
      'pt': 'Se OS Suspensa, qual nível progresso (%) ?',
      'en': '',
    },
    'jvb33g9d': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
  },
  // cpDropdownOCloseStatuses
  {
    'licllezq': {
      'pt': 'Suspensa',
      'en': '',
    },
    'ht92b985': {
      'pt': 'Concluída',
      'en': '',
    },
  },
  // cpOVCard
  {
    '40umran1': {
      'pt': 'ENCERRAR',
      'en': '',
    },
  },
  // mdDBAdminTeamUsers
  {
    'kmm6kle1': {
      'pt': 'Equipe',
      'en': '',
    },
  },
  // cpUsersListItem
  {
    'o4wlwru8': {
      'pt': 'Admin',
      'en': '',
    },
    'ntjqjmys': {
      'pt': 'Líder',
      'en': '',
    },
  },
  // cpDropdownDepartmentsCompany
  {
    'ja6w9jaj': {
      'pt': 'Departamento',
      'en': '',
    },
    'seelarfv': {
      'pt': 'Departamento',
      'en': '',
    },
  },
  // mdSettingsContractsCreate
  {
    '0lkt88b1': {
      'pt': 'Novo Contrato',
      'en': '',
    },
    '945ylahd': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    'n9if0oqf': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'tyr4iiga': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'd0jfflla': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'd39fatz5': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdOVVehicleCU
  {
    'zktdab6i': {
      'pt': 'Transporte',
      'en': '',
    },
    '5mahjexv': {
      'pt': 'EXCLUIR',
      'en': '',
    },
    'goek8p7f': {
      'pt': 'ALTERAR',
      'en': '',
    },
    'yfr376d2': {
      'pt': 'INCLUIR',
      'en': '',
    },
  },
  // cpInputInteger
  {
    '9wbp81nl': {
      'pt': '',
      'en': '',
    },
  },
  // cpOVAssetListItem1
  {
    'ay8vy3pf': {
      'pt': 'ANTES',
      'en': '',
    },
    'vviivofu': {
      'pt': 'INTERVENÇÕES',
      'en': '',
    },
    'qck888bv': {
      'pt': 'DEPOIS',
      'en': '',
    },
    'i88c9xtp': {
      'pt': 'MATERIAIS',
      'en': '',
    },
    'f8n0vjqa': {
      'pt': 'REJEITADA:',
      'en': '',
    },
    'rdqfmvzc': {
      'pt': 'Nova situação ?',
      'en': '',
    },
    'e5e2il4k': {
      'pt': 'Reportada',
      'en': '',
    },
    'meglm7vr': {
      'pt': 'Rejeitar',
      'en': '',
    },
    'ty4if43m': {
      'pt': 'Revisada',
      'en': '',
    },
    '68wcbp8k': {
      'pt': 'Arquivar',
      'en': '',
    },
  },
  // cpOVSelectedAssetCartShopListItem
  {
    'tkucld5j': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'b72u2wpl': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdOVAssetToDisapprove
  {
    'z1ymz8m1': {
      'pt': 'Rejeição',
      'en': '',
    },
    'g05vu8ut': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    'gew4u13z': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '0ggv55uk': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdOVToApprove
  {
    'ad9c1o82': {
      'pt': 'ARQUIVAR',
      'en': '',
    },
    '9i75iokt': {
      'pt': 'Setor',
      'en': '',
    },
    '3j8r814l': {
      'pt': 'Tipo Serviço',
      'en': '',
    },
    'z1q4cdw5': {
      'pt': 'Sub Tipo Serviço',
      'en': '',
    },
    '8qnzshhn': {
      'pt': 'Prioridade',
      'en': '',
    },
    'ljgxnqpn': {
      'pt': 'Situação OS',
      'en': '',
    },
    'hciazrv0': {
      'pt': 'Motivo Suspensão',
      'en': '',
    },
    'jcwcd6ng': {
      'pt': 'Causa do atendimento',
      'en': '',
    },
    'azlm74ys': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
  },
  // cpOVProcessingCard
  {
    'yt75smjk': {
      'pt': 'Rascunho',
      'en': '',
    },
    'dz7ubx12': {
      'pt': 'Reportados',
      'en': '',
    },
    'zrktzwjq': {
      'pt': 'Revisados',
      'en': '',
    },
    '9xdiqdh8': {
      'pt': 'Rejeitados',
      'en': '',
    },
    'rk7wo04w': {
      'pt': 'Arquivados',
      'en': '',
    },
  },
  // mdOVAssetsMenuOptions
  {
    '4sv9lwyf': {
      'pt': 'Ativo',
      'en': '',
    },
    'ki6mgx89': {
      'pt': 'SUBSTITUIR',
      'en': '',
    },
    'vzekzchy': {
      'pt': 'EXCLUIR',
      'en': '',
    },
  },
  // cpAssetDatasheets
  {
    '5ugb2hp2': {
      'pt': 'Dados Técnicos',
      'en': '',
    },
    'ut0kis43': {
      'pt': 'Potência',
      'en': '',
    },
    'nkl8x8i5': {
      'pt': 'Tensão',
      'en': '',
    },
    '1r6lk3o0': {
      'pt': 'Corrente elétrica',
      'en': '',
    },
    '8g553e1i': {
      'pt': 'Fator serviço',
      'en': '',
    },
    'tc9iramm': {
      'pt': 'Rotação',
      'en': '',
    },
    '3kqh2oon': {
      'pt': 'Peso',
      'en': '',
    },
    'lihjvx43': {
      'pt': 'Dados Técnicos',
      'en': '',
    },
    '3d67kyqy': {
      'pt': 'CV / V / A',
      'en': '',
    },
    'xlmxregx': {
      'pt': 'PS',
      'en': '',
    },
    'kcypi5kc': {
      'pt': 'PO',
      'en': '',
    },
    'zsr7kkz5': {
      'pt': 'PI',
      'en': '',
    },
    'jmda4z4i': {
      'pt': 'Rotor',
      'en': '',
    },
    'ieq87kxl': {
      'pt': 'Rotação',
      'en': '',
    },
    'z4rr0iu6': {
      'pt': 'Peso',
      'en': '',
    },
    'cwp7kbvl': {
      'pt': 'Dados Técnicos',
      'en': '',
    },
    'zew5mlr1': {
      'pt': 'PS',
      'en': '',
    },
    '6euyukhy': {
      'pt': 'PO',
      'en': '',
    },
    'sf5imh53': {
      'pt': 'PI',
      'en': '',
    },
    '51jh2tp2': {
      'pt': 'Rotor',
      'en': '',
    },
    'z2ugc6c7': {
      'pt': 'Rotação',
      'en': '',
    },
    '5866q8jv': {
      'pt': 'Acoplamento',
      'en': '',
    },
    'pkzth6ap': {
      'pt': 'Peso',
      'en': '',
    },
    'qhuek3gh': {
      'pt': 'Dados Técnicos',
      'en': '',
    },
    'fipo3xei': {
      'pt': 'Potência',
      'en': '',
    },
    'xvjx3kgw': {
      'pt': 'Tensão',
      'en': '',
    },
    '3s443963': {
      'pt': 'Corrente Elétrica',
      'en': '',
    },
    'ebqpgouo': {
      'pt': 'Fator Serviço',
      'en': '',
    },
    '27fqj6nv': {
      'pt': 'Peso',
      'en': '',
    },
    'pn4etdi9': {
      'pt': 'NÃO DISPONÍVEL',
      'en': '',
    },
  },
  // cpOVAssetMaterialShopListItem
  {
    'fdggwg3w': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'mjh8tik0': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // cpOVContractServiceShopListItem
  {
    '6vev0vr6': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'ghhvccvx': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // cpAssetMaterials
  {
    'zhqrlq9i': {
      'pt': 'Original',
      'en': '',
    },
  },
  // mdTMCreate
  {
    'fhiirhws': {
      'pt': 'Biblioteca Técnica',
      'en': '',
    },
    'xg5p1ln3': {
      'pt': 'INCLUIR',
      'en': '',
    },
    'g7ypl1no': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'l1sizyuo': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // cpAssetTMListItem
  {
    'voo55grw': {
      'pt': 'Biblioteca Técnica',
      'en': '',
    },
  },
  // cpAssetMaterialsListItem
  {
    'wnu0ich5': {
      'pt': 'Componentes',
      'en': '',
    },
  },
  // cpOVSelectedAssetCart
  {
    'bwg6w403': {
      'pt': 'Carrinho',
      'en': '',
    },
    'r2jgyfh8': {
      'pt': 'Inclusão Material',
      'en': '',
    },
    '8niov5bx': {
      'pt': 'Código e/ou descrição',
      'en': '',
    },
    'yb9a288x': {
      'pt': '',
      'en': '',
    },
  },
  // cpAssetViews
  {
    'r3aztfhf': {
      'pt': 'Componentes',
      'en': '',
    },
    'f6uj9cgc': {
      'pt': 'Movimentações',
      'en': '',
    },
    '6d4k754b': {
      'pt': 'Message...',
      'en': '',
    },
    'mpwzz2y0': {
      'pt': 'Intervenções',
      'en': '',
    },
    '69jmmxw5': {
      'pt': 'Substituir',
      'en': '',
    },
    's3u0gqtv': {
      'pt': 'Substituir',
      'en': '',
    },
    'qso2fgtn': {
      'pt': 'Código Ativo correto',
      'en': '',
    },
    'rtobpeiq': {
      'pt': '',
      'en': '',
    },
    'd0xq390d': {
      'pt': '',
      'en': '',
    },
  },
  // cpAssetMoves
  {
    'k2q0b0e2': {
      'pt': 'Movimentações',
      'en': '',
    },
  },
  // cpAssetMovesListItem
  {
    'yc4h5u55': {
      'pt': 'ORIGEM',
      'en': '',
    },
    'ku4h9cv9': {
      'pt': 'DESTINO',
      'en': '',
    },
  },
  // cpOVSelectedAssetCartListItem
  {
    'dzdxnz5x': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'c2w0ltxv': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdSettingsActivityCU
  {
    'bskpwziu': {
      'pt': 'Atividade',
      'en': '',
    },
    '6z4qnufd': {
      'pt': 'ALTERAR',
      'en': '',
    },
    '854jh7a4': {
      'pt': 'INCLUIR',
      'en': '',
    },
    'l17qlxlm': {
      'pt': 'Obrigatório',
      'en': '',
    },
    'rzybht7r': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '2slg0sqp': {
      'pt': 'Obrigatório',
      'en': '',
    },
    'lmwe0j10': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'z6jia7d8': {
      'pt': 'Obrigatório',
      'en': '',
    },
    'm1c047m3': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdDBAdminFiltersFinancial
  {
    'c5k359or': {
      'pt': 'Filtros',
      'en': '',
    },
    'rsfhs87z': {
      'pt': 'Limpar Filtros',
      'en': '',
    },
    '9kynh97q': {
      'pt': 'Aplicar',
      'en': '',
    },
  },
  // cpDBAdminFinancialOVListItem
  {
    'ssoa3hbk': {
      'pt': 'Placas',
      'en': '',
    },
    'w4xoh00o': {
      'pt': 'Distância',
      'en': '',
    },
    'z94sygqo': {
      'pt': 'Vlr Unit',
      'en': '',
    },
    '79ge59st': {
      'pt': 'A/D',
      'en': '',
    },
    'mop4j8de': {
      'pt': 'Vlr Item',
      'en': '',
    },
    '54b9gcpc': {
      'pt': 'Serviços',
      'en': '',
    },
    'mrx0oc01': {
      'pt': 'Qte',
      'en': '',
    },
    'e3cqoge2': {
      'pt': 'Vlr Unit',
      'en': '',
    },
    '9jabp8ob': {
      'pt': 'A/D',
      'en': '',
    },
    'mn268pmg': {
      'pt': 'Vlr Item',
      'en': '',
    },
  },
  // cpOCardBack
  {
    'dy71evoh': {
      'pt': 'Solicitante',
      'en': '',
    },
    'rtg51nc0': {
      'pt': 'Responsável',
      'en': '',
    },
    '85pgmcgx': {
      'pt': 'Contrato',
      'en': '',
    },
    't9w7mxjs': {
      'pt': 'Plano',
      'en': '',
    },
  },
  // mdOChangeTeam
  {
    'co220bjn': {
      'pt': 'Encaminhar',
      'en': '',
    },
    'l19dderm': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
  },
  // cpAssetMaterialAddListItem
  {
    'v8suw23y': {
      'pt': 'Original',
      'en': '',
    },
    'x551e7yk': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '3k5wxtfz': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdOToSchedule
  {
    '85nq0v12': {
      'pt': 'Agendar',
      'en': '',
    },
    '17pspp7i': {
      'pt': 'Selecione uma Data/Hora',
      'en': '',
    },
    'qxu6r5zd': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
  },
  // Table04Invoices
  {
    '4yi0x5n2': {
      'pt': 'Card Header',
      'en': '',
    },
    'z5a9gfyc': {
      'pt': '12',
      'en': '',
    },
    'ri42a5vs': {
      'pt': 'Create tables and ui elements that work below.',
      'en': '',
    },
    '1fjunfeo': {
      'pt': 'Search users...',
      'en': '',
    },
    'g78jhbas': {
      'pt': 'Customer Info',
      'en': '',
    },
    'j6dgr2eh': {
      'pt': 'Paid On',
      'en': '',
    },
    '4da5ss0d': {
      'pt': 'Invoice #',
      'en': '',
    },
    '7y799e7a': {
      'pt': 'Status',
      'en': '',
    },
    'i9xq4zv1': {
      'pt': 'Amount',
      'en': '',
    },
    '1vtlwkdb': {
      'pt': 'Actions',
      'en': '',
    },
    's2zw75ki': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'p3p7j6u4': {
      'pt': 'Jan. 30th, 2023',
      'en': '',
    },
    'lmxulewm': {
      'pt': '10 days ago',
      'en': '',
    },
    'xr7wgkpv': {
      'pt': '#42925424',
      'en': '',
    },
    'o887xdml': {
      'pt': 'Paid',
      'en': '',
    },
    'i7xevud3': {
      'pt': '\$2,100.00',
      'en': '',
    },
    'md84ykf8': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'oz636h84': {
      'pt': 'Jan. 30th, 2023',
      'en': '',
    },
    'u8292yzo': {
      'pt': '10 days ago',
      'en': '',
    },
    'iykedy7o': {
      'pt': '#42925424',
      'en': '',
    },
    '6dwk9ai9': {
      'pt': 'Paid',
      'en': '',
    },
    'jrj3slks': {
      'pt': '\$2,100.00',
      'en': '',
    },
    '40nunemp': {
      'pt': 'Randy Peterson',
      'en': '',
    },
    'b9nscwfh': {
      'pt': 'Jan. 30th, 2023',
      'en': '',
    },
    '1eo5nfub': {
      'pt': '10 days ago',
      'en': '',
    },
    'wwdt3wgf': {
      'pt': '#42925424',
      'en': '',
    },
    'q9r32vlo': {
      'pt': 'Paid',
      'en': '',
    },
    'xu9h6cq9': {
      'pt': '\$2,100.00',
      'en': '',
    },
  },
  // mdCalendar
  {
    '832jv6wq': {
      'pt': 'Selected Date and Time:',
      'en': '',
    },
    'ob6gwg4d': {
      'pt': 'Confirm Appointment',
      'en': '',
    },
  },
  // cpOVValues
  {
    'sez62png': {
      'pt': 'Custos',
      'en': '',
    },
    'yvgjui0a': {
      'pt': 'Serviços',
      'en': '',
    },
    'x53fuqel': {
      'pt': 'Materiais',
      'en': '',
    },
    'vpyoxybb': {
      'pt': 'Transporte',
      'en': '',
    },
    'dvf5q08i': {
      'pt': 'Total',
      'en': '',
    },
  },
  // mdSearchingResults
  {
    'c1d09hdd': {
      'pt': 'Buscando registros...',
      'en': '',
    },
    'czr2ciot': {
      'pt':
          'Por favor, aguarde enquanto procuramos as informações solicitadas.',
      'en': '',
    },
  },
  // mdOMenuOptions
  {
    '2abbwoz2': {
      'pt': 'ENCAMINHAR ',
      'en': '',
    },
    'h4xrhfld': {
      'pt': 'AGENDAR',
      'en': '',
    },
    'ypbrvuho': {
      'pt': 'CANCELAR',
      'en': '',
    },
  },
  // mdOChangeTeamNew
  {
    '32ked2zk': {
      'pt': 'Encaminhar',
      'en': '',
    },
    '2p0vxvh2': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
  },
  // cpOButtonDisabled
  {
    'x45hfoxf': {
      'pt': 'OS',
      'en': '',
    },
  },
  // cpOPCardBack
  {
    '9jwwro29': {
      'pt': 'Solicitante',
      'en': '',
    },
  },
  // mdUserMobile
  {
    '65jhd2xp': {
      'pt': 'Celular',
      'en': '',
    },
    '7mxx5v7m': {
      'pt': '',
      'en': '',
    },
    'vjo8tsj5': {
      'pt': '',
      'en': '',
    },
    'kzw2h7me': {
      'pt': '',
      'en': '',
    },
    'o550awuo': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    '3u7mdyjd': {
      'pt': 'Obrigatório',
      'en': '',
    },
    'yfnzggv7': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdUnitsSearchFilters
  {
    '70dtmwti': {
      'pt': 'Filtros',
      'en': '',
    },
    'rjlzpwv7': {
      'pt': 'Código e/ou descrição',
      'en': '',
    },
    'vkxjmeif': {
      'pt': '',
      'en': '',
    },
    'vgo3i92q': {
      'pt': 'Limpar ',
      'en': '',
    },
    'neowqgy2': {
      'pt': 'Aplicar',
      'en': '',
    },
    'h24pwjmu': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'kf6b5acn': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdRptExtensionsOptions
  {
    '4i505pu6': {
      'pt': 'Formato',
      'en': '',
    },
  },
  // mdUserEmailUpdate
  {
    'ubi20vcr': {
      'pt': 'E-mail',
      'en': '',
    },
    'nh8refmd': {
      'pt': '',
      'en': '',
    },
    'apzwizxo': {
      'pt': 'ALTERAR',
      'en': '',
    },
    'onj6x4un': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    '6tm9zx1c': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdOToCancel
  {
    'nyblo7c4': {
      'pt': 'Cancelamento',
      'en': '',
    },
    'xlu55jn0': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
  },
  // cpAssetActivities
  {
    'aa0l0ped': {
      'pt': 'Intervenções',
      'en': '',
    },
    'oq4f11lu': {
      'pt': 'Pesquisar',
      'en': '',
    },
  },
  // cpAssetActivityListItem
  {
    '2112nwzz': {
      'pt': 'ANTES',
      'en': '',
    },
    'pjvrxcbj': {
      'pt': 'INTERVENÇÕES',
      'en': '',
    },
    'wzcltn97': {
      'pt': 'DEPOIS',
      'en': '',
    },
    'tbxnkpfy': {
      'pt': 'MATERIAIS',
      'en': '',
    },
  },
  // cpOVEListItem
  {
    '5o4sqey1': {
      'pt': '4 Members',
      'en': '',
    },
    '498hmmoi': {
      'pt': 'ENCERRAR',
      'en': '',
    },
  },
  // cpDBAdminOVEListItem
  {
    'brmmiu4z': {
      'pt': 'Hello World',
      'en': '',
    },
  },
  // cpOVECard
  {
    'mr4k8g05': {
      'pt': 'ENCERRAR',
      'en': '',
    },
  },
  // mdOveMenuProcessing
  {
    'tel2wybl': {
      'pt': 'Serviço Extra',
      'en': '',
    },
    'urcb8o38': {
      'pt': '',
      'en': '',
    },
    '9xbdrxia': {
      'pt': '',
      'en': '',
    },
    'isjr93bj': {
      'pt': 'Início previsto',
      'en': '',
    },
    'iv26feua': {
      'pt': 'Final previsto',
      'en': '',
    },
    'iqh9vgdb': {
      'pt': 'Informe os motivos',
      'en': '',
    },
    'rpqeaf7y': {
      'pt': '',
      'en': '',
    },
    'zrvxt36x': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'io19jrki': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '3e5zsip6': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'tmnp6uh6': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'dvzau0wr': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'mrdmxfwv': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'kvnvb4k9': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'e72zsnlh': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'gslzeu2z': {
      'pt': 'Informe os motivos is required',
      'en': '',
    },
    'a6a1h6w4': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'x5zf3y6y': {
      'pt': 'MANTER RASCUNHO',
      'en': '',
    },
    'kjw8q0td': {
      'pt': 'REPORTAR',
      'en': '',
    },
    'kdee5d42': {
      'pt': 'REVISAR',
      'en': '',
    },
    'xwiof8z3': {
      'pt': 'REJEITAR',
      'en': '',
    },
    '8eb305u4': {
      'pt': 'APROVAR',
      'en': '',
    },
    'wzi8jl8l': {
      'pt': 'EXCLUIR',
      'en': '',
    },
    'jq3ppjrf': {
      'pt': 'ARQUIVAR',
      'en': '',
    },
  },
  // mdOVECreate
  {
    'xh2mslq7': {
      'pt': 'Serviço Extra',
      'en': '',
    },
    'vfm44qrb': {
      'pt': 'Nr OS',
      'en': '',
    },
    'g6opem7p': {
      'pt': 'Serviços a realizar',
      'en': '',
    },
    '5uks20a7': {
      'pt': 'Prioridade',
      'en': 'Priority',
    },
    'we9yrk8u': {
      'pt': 'Inicio previsto',
      'en': '',
    },
    'ksucmqct': {
      'pt': 'Final previsto',
      'en': '',
    },
    'u40h4hma': {
      'pt': 'INCLUIR',
      'en': '',
    },
    'f5pmdqex': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'wkb3atw5': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'wfrrfr3h': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    't0uptcgo': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'nke1vqtz': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'sh4ifzrc': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'jgo4zlfg': {
      'pt': 'Obrigatório.',
      'en': '',
    },
    'jl6b5fwu': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // mdDbAdminFiltersOve
  {
    '8amri7gg': {
      'pt': 'Filtros',
      'en': '',
    },
    '3c4xwslx': {
      'pt': 'Limpar',
      'en': '',
    },
    'tat62mmq': {
      'pt': 'Aplicar',
      'en': '',
    },
  },
  // cpOveProcessingUsers
  {
    'no6d7h8d': {
      'pt': 'Processamento',
      'en': '',
    },
  },
  // cpDdOTypesSubsMultiAvailable
  {
    'j2or964g': {
      'pt': 'Sub Tipos OS\'s',
      'en': '',
    },
    '1qu51p6c': {
      'pt': 'Sub Tipos OS\'s',
      'en': '',
    },
  },
  // cpDdOTypesAvailableMulti
  {
    'ktsqx16h': {
      'pt': 'Tipos OS\'s',
      'en': '',
    },
    'lbvf43rx': {
      'pt': 'Tipos OS\'s',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'qjc3z9c9': {
      'pt': '',
      'en': '',
    },
    '2iu02efq': {
      'pt': '[display_name]',
      'en': '',
    },
    'qlplpnh3': {
      'pt': 'Confirmar Senha',
      'en': '',
    },
    'o26yn5r5': {
      'pt': 'CONFIRMAR',
      'en': '',
    },
    'ny8xyuxn': {
      'pt': 'Sua Empresa',
      'en': '',
    },
    'zfl2hww9': {
      'pt': 'Equipe',
      'en': '',
    },
    'x6yaxf80': {
      'pt': 'DADOS',
      'en': '',
    },
    'qo1jnr4d': {
      'pt': 'Full Name',
      'en': '',
    },
    '9ao0idyo': {
      'pt': '[display_name]',
      'en': '',
    },
    '2z00mefk': {
      'pt': 'Full Name',
      'en': '',
    },
    's3pipkob': {
      'pt': '[display_name]',
      'en': '',
    },
    '226rk6rs': {
      'pt': 'Full Name',
      'en': '',
    },
    'r7l5mb9l': {
      'pt': '[display_name]',
      'en': '',
    },
    'plowbark': {
      'pt': 'Full Name',
      'en': '',
    },
    'wuytxh60': {
      'pt': '[display_name]',
      'en': '',
    },
    'mud2bhqw': {
      'pt': '50%',
      'en': '',
    },
    'fkx6pk0h': {
      'pt': 'DADOS',
      'en': '',
    },
    'c9ozx3lc': {
      'pt': 'SUCESSO',
      'en': '',
    },
    'ojuihitd': {
      'pt': '',
      'en': '',
    },
    '839fz8it': {
      'pt': 'REVISAR',
      'en': '',
    },
    'uxw1wc50': {
      'pt': 'Necessário permissão a sua Localizacao.',
      'en': '',
    },
    'maljavaf': {
      'pt': 'Necessário permissão a sua Camera.',
      'en': '',
    },
    'uc3zd1ns': {
      'pt': 'Necessário permissão a sua Galeria.',
      'en': '',
    },
    'd7fhtmd8': {
      'pt': 'Necessário permissão a câmera',
      'en': '',
    },
    'v18mgvhg': {
      'pt': 'Necessário permissão a sua localização',
      'en': '',
    },
    'sajdo9vo': {
      'pt': 'Necessário permissão as sua notificações',
      'en': '',
    },
    't5zk5eph': {
      'pt': 'Necessário permissão a sua galeria',
      'en': '',
    },
    'lpjvjn04': {
      'pt': 'Necessária permissão a internet.',
      'en': '',
    },
    'i6gexiwt': {
      'pt': 'Necessária permissão de localização.',
      'en': '',
    },
    'w9t30k84': {
      'pt': 'Necessária permissão de localização.',
      'en': '',
    },
    '5w9zrf01': {
      'pt': 'Necessária permissão instalação de apps.',
      'en': '',
    },
    '9m6qvfdi': {
      'pt': 'Necessário permissão do seu microfone.',
      'en': '',
    },
    'tuxzpr49': {
      'pt': '',
      'en': '',
    },
    'cam30w4t': {
      'pt': '',
      'en': '',
    },
    'ep4p4oby': {
      'pt': '',
      'en': '',
    },
    '4ql1zbos': {
      'pt': '',
      'en': '',
    },
    'bhjz21u0': {
      'pt': '',
      'en': '',
    },
    'f6qvls35': {
      'pt': '',
      'en': '',
    },
    'cspcded9': {
      'pt': '',
      'en': '',
    },
    '1ojamf19': {
      'pt': '',
      'en': '',
    },
    '0vrnkkca': {
      'pt': '',
      'en': '',
    },
    '9y2nxpi3': {
      'pt': '',
      'en': '',
    },
    's4z3kihv': {
      'pt': '',
      'en': '',
    },
    'j00m9iy9': {
      'pt': '',
      'en': '',
    },
    '5iyqrn5o': {
      'pt': '',
      'en': '',
    },
    'nd64zgrv': {
      'pt': '',
      'en': '',
    },
    'xhq5oepj': {
      'pt': '',
      'en': '',
    },
    '89il4wft': {
      'pt': '',
      'en': '',
    },
    'p9s9jsty': {
      'pt': '',
      'en': '',
    },
    '36l3w4qr': {
      'pt': '',
      'en': '',
    },
    '8q0h9ha2': {
      'pt': '',
      'en': '',
    },
    'tii5pvys': {
      'pt': '',
      'en': '',
    },
    '8kpqttoo': {
      'pt': '',
      'en': '',
    },
    'd2zzvmrf': {
      'pt': '',
      'en': '',
    },
    'bzwm1icd': {
      'pt': '',
      'en': '',
    },
    'dbmz7gio': {
      'pt': '',
      'en': '',
    },
    'd7dfavxm': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
