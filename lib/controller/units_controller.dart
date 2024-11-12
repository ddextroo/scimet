import 'package:scimet/model/modules.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/book.dart';
import '../model/translation.dart';
import '../model/units.dart';

class UnitsController {

  Future<bool> getModuleCompleted(String moduleName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("${moduleName}_done") ?? false;
  }
  Future<void> setModuleCompleted(String moduleName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("${moduleName}_done", true);
  }
  List<Units> getUnits() {
    return [
      Units(
        title: "Systems in Plants and Animals",
        modules: 2,
        modulesList: [
          Modules(moduleName: "Root and Shoot System"),
          Modules(moduleName: "Major Organs of the Human System"),
        ],
        bookContent: [
          Book(
            content: "system_plants_mod1.pdf",
            moduleName: "Root and Shoot System",
            translations: {
              'desert': {
                'Cebuano': Translation(
                  word: 'Desyerto',
                  definition: 'Isang lugar na napakatuyo at bihira',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Disyerto',
                  definition: 'Usa ka lugar nga uga kaayo ug kulang ang ulan.',
                  imageExample: '',
                ),
              },
              'dry environment': {
                'Cebuano': Translation(
                  word: 'Ugang Palibot',
                  definition:
                      'Usa ka lugar nga kulang kaayo ang tubig ug kasagaran init',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tuyong Kapaligiran',
                  definition:
                      'Isang lugar na may napakakaunting tubig at madalas na mainit.',
                  imageExample: '',
                ),
              },
              'living things': {
                'Cebuano': Translation(
                  word: 'Buhi nga mga butang',
                  definition:
                      'Bisan unsang organismo o porma sa kinabuhi nga nag pakita nga buhi kini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga bagay na may buhay',
                  definition:
                      'Anumang organismo o anyo ng buhay na nagtataglay o nagpapakita ng mga katangian ng buhay o pagiging buhay.',
                  imageExample: '',
                ),
              },
              'living organisms': {
                'Cebuano': Translation(
                  word: 'Buhi nga mga butang',
                  definition:
                      'Bisan unsang organismo o porma sa kinabuhi nga nag pakita nga buhi kini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga bagay na may buhay',
                  definition:
                      'Anumang organismo o anyo ng buhay na nagtataglay o nagpapakita ng mga katangian ng buhay o pagiging buhay.',
                  imageExample: '',
                ),
              },
              'loose soil': {
                'Cebuano': Translation(
                  word: 'Luag nga Yuta',
                  definition:
                      'Yuta nga sayon hukayon ug masudlan sa tubig ug hangin, nga importante sa pagtub',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Maluwag na Lupa',
                  definition:
                      'Lupa na madaling huhukayin at pinapasukan ng tubig at hangin, na mahalaga para sa paglaki ng halaman.',
                  imageExample: '',
                ),
              },
              'photosynthesis': {
                'Cebuano': Translation(
                  word: 'Photosynthesis',
                  definition:
                      'Ang proseso diin gamiton sa mga tanom ang kahayag sa adlaw aron maghimo ug pagkaon gikan sa tubig ug carbon dioxide.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Photosynthesis',
                  definition:
                      'Ang proseso kung saan ginagamit ng mga halaman ang liwanag ng araw upang makagawa ng pagkain mula sa tubig at carbon dioxide.',
                  imageExample: '',
                ),
              },
              'phloem': {
                'Cebuano': Translation(
                  word: 'Phloem',
                  definition:
                      'Mga tubo sa sulod sa tanom nga nagdala sa pagkaon gikan sa mga dahon padulong sa uban nga bahin sa tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Phloem',
                  definition:
                      'Mga tubo sa loob ng halaman na nagdadala ng pagkain mula sa mga dahon patungo sa ibang bahagi ng halaman.',
                  imageExample: '',
                ),
              },
              'stomata': {
                'Cebuano': Translation(
                  word: 'Stomata',
                  definition:
                      'Gagmay nga mga lungag sa dahon sa tanom nga nagkontrol sa pagsulod ug pagpagawas sa gas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Stomata',
                  definition:
                      'Maliit na mga butas sa dahon ng halaman na nagkokontrol ng pagpasok at paglabas ng gas.',
                  imageExample: '',
                ),
              },
              'sunlight': {
                'Cebuano': Translation(
                  word: 'Sidlak sa Adlaw',
                  definition:
                      'Ang kahayag nga gikan sa adlaw nga importante para sa photosynthesis sa mga tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sikat ng Araw',
                  definition:
                      'Ang liwanag na nagmumula sa araw na mahalaga para sa photosynthesis ng mga halaman.',
                  imageExample: '',
                ),
              },
              'tissues': {
                'Cebuano': Translation(
                  word: 'Mga Tisyu',
                  definition:
                      'Mga grupo sa mga selula sa sulod sa tanom nga adunay parehas nga buluhaton.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga Tisyu',
                  definition:
                      'Mga grupo ng mga selula sa loob ng halaman na may parehong tungkulin.',
                  imageExample: '',
                ),
              },
              'uproot': {
                'Cebuano': Translation(
                  word: 'Ibot',
                  definition:
                      'Ang paglihok sa pagkuha sa tanom gikan sa yuta uban sa mga gamot.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mabunot',
                  definition:
                      'Ang pagkilos ng pag-alis ng halaman mula sa lupa kasama ang mga ugat.',
                  imageExample: '',
                ),
              },
              'uprooted': {
                'Cebuano': Translation(
                  word: 'Ibot',
                  definition:
                      'Ang paglihok sa pagkuha sa tanom gikan sa yuta uban sa mga gamot.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mabunot',
                  definition:
                      'Ang pagkilos ng pag-alis ng halaman mula sa lupa kasama ang mga ugat.',
                  imageExample: '',
                ),
              },
              'root': {
                'Cebuano': Translation(
                  word: 'Ibot',
                  definition:
                      'Ang paglihok sa pagkuha sa tanom gikan sa yuta uban sa mga gamot.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mabunot',
                  definition:
                      'Ang pagkilos ng pag-alis ng halaman mula sa lupa kasama ang mga ugat.',
                  imageExample: '',
                ),
              },
              'roots': {
                'Cebuano': Translation(
                  word: 'Ibot',
                  definition:
                      'Ang paglihok sa pagkuha sa tanom gikan sa yuta uban sa mga gamot.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mabunot',
                  definition:
                      'Ang pagkilos ng pag-alis ng halaman mula sa lupa kasama ang mga ugat.',
                  imageExample: '',
                ),
              },
              'xylem': {
                'Cebuano': Translation(
                  word: 'Xylem',
                  definition:
                      'Mga tubo sa sulod sa tanom nga nagdala sa tubig ug mineral gikan sa mga gamot paingon sa lain-laing bahin sa tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Xylem',
                  definition:
                      'Mga tubo sa loob ng halaman na nagdadala ng tubig at mineral mula sa mga ugat patungo sa iba’t ibang bahagi ng halaman.',
                  imageExample: '',
                ),
              },
              'gas exchange': {
                'Cebuano': Translation(
                  word: 'Pag-ilis sa Gas',
                  definition:
                      'Ang proseso diin mag-ilis ug oxygen ug carbon dioxide ang mga tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Palitan ng Gas',
                  definition:
                      'Ang proseso kung saan nagpapalitan ng oxygen at carbon dioxide ang mga halaman.',
                  imageExample: '',
                ),
              },
              'pollinators': {
                'Cebuano': Translation(
                  word: 'Pollinators',
                  definition:
                      'Mga hayop o insekto nga motabang sa pagbalhin sa polen gikan sa usa ka bulak ngadto sa lain aron makabuhat ug mga bunga ug liso.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pollinators',
                  definition:
                      'Mga hayop o insekto na tumutulong sa paglipat ng polen mula sa isang bulaklak patungo sa iba upang makabuo ng mga prutas at buto.',
                  imageExample: '',
                ),
              },
              'fruit-bearing': {
                'Cebuano': Translation(
                  word: 'Namungang Puno',
                  definition:
                      'Mga puno nga namunga ug mga prutas nga mahimo kan-on.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Namumungang Puno',
                  definition:
                      'Mga puno na nagbubunga ng mga prutas na maaaring kainin.',
                  imageExample: '',
                ),
              },
              'shelter': {
                'Cebuano': Translation(
                  word: 'Silungan',
                  definition:
                      'Usa ka lugar nga naghatag proteksyon gikan sa daotang panahon o katalagman.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Silungan',
                  definition:
                      'Isang lugar na nagbibigay proteksyon mula sa masamang panahon o panganib.',
                  imageExample: '',
                ),
              },
            },
          ),
          Book(
            content: "system_plants_mod2.pdf",
            moduleName: "Major Organs of the Human System",
            translations: {
              'skull': {
                'Cebuano': Translation(
                  word: 'Kalabera',
                  definition: 'Bahin sa kalansay nga nagpanalipod sa utok.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bungo',
                  definition: 'Bahagi ng kalansay na nagpoprotekta sa utak.',
                  imageExample: '',
                ),
              },
              'joint': {
                'Cebuano': Translation(
                  word: 'Kasukasuan',
                  definition:
                      'Ang lugar diin nagtagbo ang duha o labaw pa ka mga bukog, nga nagtugot sa paglihok.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kasukasuan',
                  definition:
                      'Ang lugar kung saan nagtatagpo ang dalawa o higit pang buto, na nagpapahintulot ng paggalaw.',
                  imageExample: '',
                ),
              },
              'tendons': {
                'Cebuano': Translation(
                  word: 'Ugat',
                  definition:
                      'Ang mga hilo nga nagdugtong sa mga kaunoran sa mga bukog.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Litid',
                  definition:
                      'Ang mga hibla na nagdurugtong sa mga kalamnan sa mga buto.',
                  imageExample: '',
                ),
              },
              'muscle': {
                'Cebuano': Translation(
                  word: 'Kaunoran',
                  definition:
                      'Mga parte sa lawas nga motabang sa paglihok ug suporta.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kalamnan',
                  definition:
                      'Mga parte ng katawan na tumutulong sa paggalaw at suporta.',
                  imageExample: '',
                ),
              },
              'pulse rate': {
                'Cebuano': Translation(
                  word: 'Kusog sa Pulso',
                  definition:
                      'Ang gidaghanon sa pagtibok sa kasingkasing sulod sa usa ka minuto.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bilis ng Pulso',
                  definition:
                      'Ang bilang ng tibok ng puso sa loob ng isang minuto.',
                  imageExample: '',
                ),
              },
              'abdominal': {
                'Cebuano': Translation(
                  word: 'Tiyan',
                  definition:
                      'Ang tiyan mao ang bahin sa lawas sa ubos sa dughan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tiyan',
                  definition:
                      'Ang tiyan ay bahagi ng katawan sa ibabang bahagi ng dibdib.',
                  imageExample: '',
                ),
              },
              'air sacs': {
                'Cebuano': Translation(
                  word: 'Air Sac',
                  definition:
                      'Air Sac mao ang gagmay nga yunit sa sulod sa baga diin mahitabo ang pag-ilis sa oxygen ug carbon dioxide.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Air Sac',
                  definition:
                      'Air Sac ay mga maliliit na yunit sa loob ng baga kung saan nagaganap ang palitan ng oxygen at carbon dioxide.',
                  imageExample: '',
                ),
              },
              'anus': {
                'Cebuano': Translation(
                  word: 'Lubot',
                  definition:
                      'Lubot - mao ang lungag sa tumoy sa tinai diin mogawas ang hugaw sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Puwit',
                  definition:
                      'Ang puwit ay ang butas sa dulo ng bituka kung saan lumalabas ang dumi ng katawan.',
                  imageExample: '',
                ),
              },
              'backbones': {
                'Cebuano': Translation(
                  word: 'Bukog sa likod',
                  definition:
                      'Mao ang mga bukog nga naglangkob sa unod-unod nga naghatag suporta sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Buto sa likod',
                  definition:
                      'Ang mga butong bumubuo sa gulugod na nagbibigay suporta sa katawan.',
                  imageExample: '',
                ),
              },
              'blood': {
                'Cebuano': Translation(
                  word: 'Dugo',
                  definition:
                      'Mao ang likido nga nagdagan sa mga ugat ug nagdala sa oxygen ug nutrisyon ngadto sa lain-laing bahin sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Dugo',
                  definition:
                      "Ang likido na dumadaloy sa mga ugat at nagdadala ng oxygen at nutrisyon sa iba't ibang bahagi ng katawan.",
                  imageExample: '',
                ),
              },
              'blood cells': {
                'Cebuano': Translation(
                  word: 'Selula sa dugo',
                  definition:
                      'Mao ang gagmay nga yunit sa dugo nga adunay lain-laing mga buluhaton sama sa pagdala sa oxygen, pakig-away sa impeksyon, ug pagtabang sa pag-umol sa dugo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Selula ng dugo',
                  definition:
                      "Mga maliliit na yunit sa dugo na may iba't ibang tungkulin tulad ng pagdadala ng oxygen, labanan ang impeksyon, at pagtulong sa pamumuo ng dugo.",
                  imageExample: '',
                ),
              },
              'blood stream': {
                'Cebuano': Translation(
                  word: 'Daloy sa dugo',
                  definition:
                      'Mao ang pagdagan sa dugo sa sulod sa mga ugat sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Daloy ng dugo',
                  definition:
                      'Ang pagdaloy ng dugo sa loob ng mga ugat sa katawan.',
                  imageExample: '',
                ),
              },
              'bone': {
                'Cebuano': Translation(
                  word: 'Bukog',
                  definition:
                      'Mao ang lig-on nga bahin sa lawas nga naglangkob sa kalansay ug naghatag suporta ug proteksyon sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Buto',
                  definition:
                      'Buto ay matitigas na bahagi ng katawan na bumubuo sa kalansay at nagbibigay suporta at proteksyon sa katawan.',
                  imageExample: '',
                ),
              },
              'bone marrow': {
                'Cebuano': Translation(
                  word: 'Uyok',
                  definition:
                      'Ang uyok mao ang malumo nga bahin sa sulod sa bukog diin gihimo ang mga selula sa dugo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Utak ng buto',
                  definition:
                      'Ang utak ng buto ay ang malambot na bahagi sa loob ng buto kung saan ginagawa ang mga selula ng dugo.',
                  imageExample: '',
                ),
              },
              'calcium': {
                'Cebuano': Translation(
                  word: 'Kalsiyum',
                  definition:
                      'Usa ka mineral nga importante alang sa kusog sa bukog ug ngipon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kaltsyum',
                  definition:
                      'Isang mineral na mahalaga para sa kalakasan ng buto at ngipin.',
                  imageExample: '',
                ),
              },
              'carbon dioxide': {
                'Cebuano': Translation(
                  word: 'Carbon Dioxide',
                  definition:
                      'Usa ka gas nga gipagawas sa lawas ingon nga byproduct sa pagginhawa.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Carbon Dioxide',
                  definition:
                      'Isang gas na inilalabas ng katawan bilang byproduct ng paghinga.',
                  imageExample: '',
                ),
              },
              'cardiac muscles': {
                'Cebuano': Translation(
                  word: 'Kaunoran sa Kasingkasing',
                  definition:
                      'Espesyal nga klase sa kaunoran nga naglangkob sa kasingkasing.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kalamnan ng Puso',
                  definition: 'Espesyal na uri ng kalamnan na bumubuo sa puso.',
                  imageExample: '',
                ),
              },
              'chew': {
                'Cebuano': Translation(
                  word: 'Usapon',
                  definition:
                      'Ang paglihok sa pagdugmok sa pagkaon gamit ang ngipon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Ngumuya',
                  definition:
                      'Ang pagkilos ng pagdurog ng pagkain gamit ang ngipin.',
                  imageExample: '',
                ),
              },
              'chyme': {
                'Cebuano': Translation(
                  word: 'Chyme',
                  definition: 'Ang likido sa pagkaon human madugmok sa tiyan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Chyme',
                  definition: 'Ang likido ng pagkain matapos durugin sa tiyan.',
                  imageExample: '',
                ),
              },
              'digest': {
                'Cebuano': Translation(
                  word: 'Tunawon',
                  definition:
                      'Ang proseso sa pagtunaw sa pagkaon aron magamit sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tunawin',
                  definition:
                      'Ang proseso ng pagtunaw ng pagkain upang magamit ng katawan.',
                  imageExample: '',
                ),
              },
              'digestive system': {
                'Cebuano': Translation(
                  word: 'Sistema sa Pagtunaw',
                  definition:
                      'Ang sistema nga naglakip sa tanan nga mga organo nga nagtabang sa pagtunaw sa pagkaon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sistema ng Pagtunaw',
                  definition:
                      'Ang sistemang kinabibilangan ng lahat ng mga organ na tumutulong sa pagtunaw ng pagkain.',
                  imageExample: '',
                ),
              },
              'esophagus': {
                'Cebuano': Translation(
                  word: 'Esophagus',
                  definition:
                      'Ang tubo nga nagdala sa pagkaon gikan sa baba ngadto sa tiyan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Esophagus',
                  definition:
                      'Ang tubo na nagdadala ng pagkain mula sa bibig patungo sa tiyan.',
                  imageExample: '',
                ),
              },
              'exhale': {
                'Cebuano': Translation(
                  word: 'Pagpagawas',
                  definition:
                      'Ang proseso sa pagpagawas sa hangin gikan sa baga.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pagbuga',
                  definition: 'Ang proseso ng paglabas ng hangin mula sa baga.',
                  imageExample: '',
                ),
              },
              'femur': {
                'Cebuano': Translation(
                  word: 'Femur',
                  definition:
                      'Ang pinakamadako nga bukog sa lawas, nagdugtong sa balakang ngadto sa tuhod.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Femur',
                  definition:
                      'Ang pinakamalaking buto sa katawan, na nag-uugnay sa balakang sa tuhod.',
                  imageExample: '',
                ),
              },
              'gallbladder': {
                'Cebuano': Translation(
                  word: 'Gallbladder',
                  definition:
                      'Ang organo nga nagtipig sa apdo nga gigamit sa pag-digest sa tambok.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Gallbladder',
                  definition:
                      'Ang organ na nag-iimbak ng apdo na ginagamit sa pagtunaw ng taba.',
                  imageExample: '',
                ),
              },
              'gastric junction': {
                'Cebuano': Translation(
                  word: 'Gastric Junction',
                  definition: 'Ang lugar diin nagtagbo ang esophagus ug tiyan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Gastric Junction',
                  definition:
                      'Ang lugar kung saan nagtatagpo ang esophagus at tiyan.',
                  imageExample: '',
                ),
              },
              'gastrointestinal': {
                'Cebuano': Translation(
                  word: 'Gastrointestinal',
                  definition:
                      'Naglakip sa tanan nga mga bahin sa sistema sa pagtunaw.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Gastrointestinal',
                  definition:
                      'Kabilang ang lahat ng mga bahagi ng sistema ng pagtunaw.',
                  imageExample: '',
                ),
              },
              'heart': {
                'Cebuano': Translation(
                  word: 'Kasingkasing',
                  definition: 'Ang organo nga nagpump sa dugo sa tibuok lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Puso',
                  definition:
                      'Ang organ na nagpapaikot ng dugo sa buong katawan.',
                  imageExample: '',
                ),
              },
              'hip': {
                'Cebuano': Translation(
                  word: 'Hita',
                  definition:
                      'Ang bahin sa lawas nga nagdugtong sa mga paa sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Hita',
                  definition:
                      'Ang bahagi ng katawan na nag-uugnay sa mga binti sa katawan.',
                  imageExample: '',
                ),
              },
              'hormones': {
                'Cebuano': Translation(
                  word: 'Hormones',
                  definition:
                      'Mga kemikal nga nagkontrol sa daghang mga proseso sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Hormones',
                  definition:
                      'Mga kemikal na kumokontrol sa maraming proseso sa katawan.',
                  imageExample: '',
                ),
              },
              'immune system': {
                'Cebuano': Translation(
                  word: 'Sistema sa Immuno',
                  definition:
                      'Ang sistema nga nagtabang sa lawas sa pagbatok sa mga sakit.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sistema ng Immune',
                  definition:
                      'Ang sistemang tumutulong sa katawan na labanan ang mga sakit.',
                  imageExample: '',
                ),
              },
              'inhalation': {
                'Cebuano': Translation(
                  word: 'Pag-inhale',
                  definition: 'Ang proseso sa pagdawat sa hangin sa baga.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Paglanghap',
                  definition: 'Ang proseso ng pagpasok ng hangin sa baga.',
                  imageExample: '',
                ),
              },
              'intestine': {
                'Cebuano': Translation(
                  word: 'Tinai',
                  definition:
                      'Ang bahin sa sistema sa pagtunaw nga nagproseso sa pagkaon human ma-digest.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bituka',
                  definition:
                      'Ang bahagi ng sistema ng pagtunaw na nagpoproseso ng pagkain pagkatapos ma-digest.',
                  imageExample: '',
                ),
              },
              'kidney': {
                'Cebuano': Translation(
                  word: 'Bato',
                  definition:
                      'Ang organo nga nagtabang sa pag-filter sa dugo ug paghimo sa ihi.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bato',
                  definition:
                      'Ang organ na tumutulong sa pag-filter ng dugo at paggawa ng ihi.',
                  imageExample: '',
                ),
              },
              'ligament': {
                'Cebuano': Translation(
                  word: 'Ligament',
                  definition:
                      'Mga hilo nga nagdugtong sa mga bukog sa mga kasukasuan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Ligament',
                  definition:
                      'Mga hibla na nagdurugtong sa mga buto sa mga kasukasuan.',
                  imageExample: '',
                ),
              },
              'liver': {
                'Cebuano': Translation(
                  word: 'Atay',
                  definition:
                      'Ang organo nga nagproseso sa mga nutrisyon ug nagtabang sa detoxification.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Atay',
                  definition:
                      'Ang organ na nagpoproseso ng mga nutrisyon at tumutulong sa detoxification.',
                  imageExample: '',
                ),
              },
              'lungs': {
                'Cebuano': Translation(
                  word: 'Baga',
                  definition:
                      'Ang mga organo nga nagresponsable sa pagkuha sa oxygen ug pagpagawas sa carbon dioxide.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Baga',
                  definition:
                      'Ang mga organ na responsable sa pagkuha ng oxygen at paglabas ng carbon dioxide.',
                  imageExample: '',
                ),
              },
              'metabolism': {
                'Cebuano': Translation(
                  word: 'Metabolismo',
                  definition:
                      'Ang proseso sa pagbag-o sa pagkaon ngadto sa enerhiya sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Metabolismo',
                  definition:
                      'Ang proseso ng pagbabago ng pagkain sa enerhiya ng katawan.',
                  imageExample: '',
                ),
              },
              'nerve': {
                'Cebuano': Translation(
                  word: 'Nerve',
                  definition:
                      'Mga fiber nga nagdala sa mga signal gikan sa utok ngadto sa ubang bahin sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Nerve',
                  definition:
                      'Mga hibla na nagdadala ng mga signal mula sa utak patungo sa ibang bahagi ng katawan.',
                  imageExample: '',
                ),
              },
              'nerves': {
                'Cebuano': Translation(
                  word: 'Nerves',
                  definition:
                      'Mga fiber nga nagdala sa mga signal gikan sa utok ngadto sa ubang bahin sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Nerve',
                  definition:
                      'Mga hibla na nagdadala ng mga signal mula sa utak patungo sa ibang bahagi ng katawan.',
                  imageExample: '',
                ),
              },
              'organ': {
                'Cebuano': Translation(
                  word: 'Organ',
                  definition:
                      'Mga bahin sa lawas nga adunay piho nga function.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Organ',
                  definition: 'Mga bahagi ng katawan na may tiyak na function.',
                  imageExample: '',
                ),
              },
              'pancreas': {
                'Cebuano': Translation(
                  word: 'Pancreas',
                  definition:
                      'Ang organo nga nagprodyus sa insulin ug uban pang mga enzyme.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Siyudad',
                  definition:
                      'Ang organ na nagprodyus ng insulin at iba pang mga enzyme.',
                  imageExample: '',
                ),
              },
              'protein': {
                'Cebuano': Translation(
                  word: 'Protein',
                  definition:
                      'Mga molecule nga importante alang sa pagtukod ug pagmentinar sa mga selula.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Protina',
                  definition:
                      'Mga molecule na mahalaga para sa pagbuo at pagpapanatili ng mga selula.',
                  imageExample: '',
                ),
              },
              'respiratory system': {
                'Cebuano': Translation(
                  word: 'Sistema sa Respiratory',
                  definition:
                      'Ang sistema nga nagkuha ug nagpagawas sa hangin.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sistema ng Respiratory',
                  definition: 'Ang sistemang kumukuha at naglalabas ng hangin.',
                  imageExample: '',
                ),
              },
              'skeleton': {
                'Cebuano': Translation(
                  word: 'Skeleton',
                  definition:
                      'Ang estruktura nga naghatag ug suporta ug porma sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bangkay',
                  definition:
                      'Ang estruktura na nagbibigay suporta at anyo sa katawan.',
                  imageExample: '',
                ),
              },
              'spleen': {
                'Cebuano': Translation(
                  word: 'Spleen',
                  definition:
                      'Ang organo nga nagtabang sa pag-filter sa dugo ug nag-apud-apud sa mga immune cells.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Spleen',
                  definition:
                      'Ang organ na tumutulong sa pag-filter ng dugo at nag-aalaga ng mga immune cells.',
                  imageExample: '',
                ),
              },
              'stomach': {
                'Cebuano': Translation(
                  word: 'Tiyan',
                  definition:
                      'Ang organo nga nagdawat sa pagkaon ug nagtabang sa pag-digest niini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tiyan',
                  definition:
                      'Ang organ na tumatanggap ng pagkain at tumutulong sa pagtunaw nito.',
                  imageExample: '',
                ),
              },
              'tissue': {
                'Cebuano': Translation(
                  word: 'Tissue',
                  definition:
                      'Mga grupo sa mga selula nga adunay parehas nga function.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tissue',
                  definition:
                      'Mga grupo ng mga selula na may parehong function.',
                  imageExample: '',
                ),
              },
              'trachea': {
                'Cebuano': Translation(
                  word: 'Trachea',
                  definition:
                      'Ang tubo nga nagdala sa hangin gikan sa larynx ngadto sa baga.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Trachea',
                  definition:
                      'Ang tubo na nagdadala ng hangin mula sa larynx patungo sa baga.',
                  imageExample: '',
                ),
              },
              'urinary system': {
                'Cebuano': Translation(
                  word: 'Sistema sa Ihi',
                  definition:
                      'Ang sistema nga nagkontrol sa produksyon ug pagpagawas sa ihi.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sistema ng Ihi',
                  definition:
                      'Ang sistemang kumokontrol sa produksyon at paglabas ng ihi.',
                  imageExample: '',
                ),
              },
              'vein': {
                'Cebuano': Translation(
                  word: 'Bilk',
                  definition:
                      'Ang mga ugat nga nagdala sa dugo paingon sa kasingkasing.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bilk',
                  definition:
                      'Ang mga ugat na nagdadala ng dugo pabalik sa puso.',
                  imageExample: '',
                ),
              },
              'ventricle': {
                'Cebuano': Translation(
                  word: 'Ventricle',
                  definition:
                      'Ang mga kwarto sa kasingkasing nga nagpump sa dugo ngadto sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Ventricle',
                  definition:
                      'Ang mga silid ng puso na nagpapaikot ng dugo sa katawan.',
                  imageExample: '',
                ),
              },
            },
          ),
        ],
      ),
      Units(
        title: "Plants and Animals and their Habitats",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Plants and Animals and their Habitats Module 1"),
        ],
        bookContent: [
          Book(
            content: "plants_animals_mod1.pdf",
            moduleName: "Plants and Animals and their Habitats Module 1",
            translations: {
              "habitat": {
                "Cebuano": Translation(
                    word: "Puy-anan",
                    definition: "Lugar diin nagpuyo ang usa ka organismo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Tirahan",
                    definition: "Lugar kung saan nakatira ang isang organismo.",
                    imageExample: '')
              },
              "survive": {
                "Cebuano": Translation(
                    word: "Mabuhi",
                    definition:
                        "Ang abilidad sa usa ka organismo nga magpadayon bisan pa sa kalisod.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mabuhay",
                    definition:
                        "Kakayahan ng isang organismo na magpatuloy sa kabila ng mga hamon.",
                    imageExample: '')
              },
              "environmental conditions": {
                "Cebuano": Translation(
                    word: "Kahimtang sa palibot",
                    definition:
                        "Mga aspeto sa palibot nga makaapekto sa pagpuyo sa mga organismo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kondisyon ng kapaligiran",
                    definition:
                        "Mga aspeto ng kapaligiran na nakakaapekto sa pamumuhay ng mga organismo.",
                    imageExample: '')
              },
              "organism": {
                "Cebuano": Translation(
                    word: "Organismo",
                    definition:
                        "Usa ka buhing nilalang, sama sa tanom, hayop, o tawo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Organismo",
                    definition:
                        "Isang buhay na nilalang, tulad ng halaman, hayop, o tao.",
                    imageExample: '')
              },
              "mate": {
                "Cebuano": Translation(
                    word: "Kauban sa pagpamuhi",
                    definition:
                        "Usa ka pares nga magtinabangay sa pagpamuhi aron makabuhi og bag-ong kinabuhi.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kapareha",
                    definition:
                        "Isang kapareha na tumutulong sa pagpaparami upang makalikha ng bagong buhay.",
                    imageExample: '')
              },
              "reproduce": {
                "Cebuano": Translation(
                    word: "Pagpamuhi",
                    definition:
                        "Ang proseso sa pagpadaghan sa mga organismo sa ilang klase.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Magparami",
                    definition:
                        "Proseso ng pagpaparami ng mga organismo sa kanilang uri.",
                    imageExample: '')
              },
              "provide": {
                "Cebuano": Translation(
                    word: "Mohatag",
                    definition:
                        "Pagtugyan sa mga kinahanglanon sa usa ka organismo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Magbigay",
                    definition:
                        "Pagbibigay ng mga pangangailangan ng isang organismo.",
                    imageExample: '')
              },
              "components": {
                "Cebuano": Translation(
                    word: "Mga sangkap",
                    definition: "Mga parte o bahin sa usa ka butang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga bahagi",
                    definition: "Mga bahagi o parte ng isang bagay.",
                    imageExample: '')
              },
              "suitable": {
                "Cebuano": Translation(
                    word: "Angay",
                    definition:
                        "Haom o sakto alang sa usa ka sitwasyon o panginahanglan.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Angkop",
                    definition:
                        "Tamang-tama para sa isang sitwasyon o pangangailangan.",
                    imageExample: '')
              },
              "broadly": {
                "Cebuano": Translation(
                    word: "Kinadaganan",
                    definition: "Sa halapad nga paagi o pagkasabot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Malawak",
                    definition: "Sa malawak na paraan o sakop.",
                    imageExample: '')
              },
              "broadly categorized": {
                "Cebuano": Translation(
                    word: "Kinadaganan",
                    definition: "Sa halapad nga paagi o pagkasabot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Malawak",
                    definition: "Sa malawak na paraan o sakop.",
                    imageExample: '')
              },
              "categorized": {
                "Cebuano": Translation(
                    word: "Giklasipikar",
                    definition:
                        "Gihimo sa lain-laing grupo base sa ilang kapareho.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kinategorya",
                    definition:
                        "Isinaayos sa iba't ibang grupo batay sa pagkakapareho.",
                    imageExample: '')
              },
              "range": {
                "Cebuano": Translation(
                    word: "Sakup",
                    definition:
                        "Ang gilapdon sa kalapad o sakop sa usa ka butang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Saklaw",
                    definition: "Ang lawak o sakop ng isang bagay.",
                    imageExample: '')
              },
              "adaptations": {
                "Cebuano": Translation(
                    word: "Mga pag-uyon",
                    definition:
                        "Mga kausaban sa organismo aron makaangay sa ilang palibot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga pag-aangkop",
                    definition:
                        "Mga pagbabago sa organismo upang makibagay sa kanilang kapaligiran.",
                    imageExample: '')
              },
              "particular": {
                "Cebuano": Translation(
                    word: "Piho",
                    definition:
                        "Usa ka piho nga butang o kahimtang nga adunay klaro nga detalye o pamatasan.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Partikular",
                    definition:
                        "Isang tiyak na bagay o sitwasyon na may malinaw na detalye o katangian.",
                    imageExample: '')
              },
              "perform": {
                "Cebuano": Translation(
                    word: "Buhaton",
                    definition:
                        "Ang paglihok o pagbuhat sa usa ka gimbuhaton o kalihokan.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Isagawa",
                    definition:
                        "Ang pagganap o pagsasagawa ng isang gawain o aktibidad.",
                    imageExample: '')
              },
              "airborne": {
                "Cebuano": Translation(
                    word: "Gisuyop sa hangin",
                    definition:
                        "Ang mga butang o organismo nga nagpabilin sa hangin o gipakalat pinaagi sa hangin.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Nasa himpapawid",
                    definition:
                        "Mga bagay o organismo na lumulutang sa hangin o kumakalat sa pamamagitan nito.",
                    imageExample: '')
              },
              "exist": {
                "Cebuano": Translation(
                    word: "Naggikinabuhi",
                    definition:
                        "Ang pagkahimong buhi o ang presensya sa usa ka butang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Umiiral",
                    definition:
                        "Ang pagiging buhay o presensya ng isang bagay.",
                    imageExample: '')
              },
              "species": {
                "Cebuano": Translation(
                    word: "Espesye",
                    definition:
                        "Usa ka grupo sa mga organismo nga adunay parehas nga kinaiya ug katuyoan.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Uri",
                    definition:
                        "Isang grupo ng mga organismo na may magkakatulad na katangian at layunin.",
                    imageExample: '')
              },
              "natural environment": {
                "Cebuano": Translation(
                    word: "Natural nga palibot",
                    definition:
                        "Ang palibot nga walay tao nga nagbag-o, ug diin ang mga buhing butang magpuyo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Likas na kapaligiran",
                    definition:
                        "Kapaligirang hindi binago ng tao, kung saan naninirahan ang mga buhay na nilalang.",
                    imageExample: '')
              },
              "natural environments": {
                "Cebuano": Translation(
                    word: "Natural nga palibot",
                    definition:
                        "Ang palibot nga walay tao nga nagbag-o, ug diin ang mga buhing butang magpuyo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Likas na kapaligiran",
                    definition:
                        "Kapaligirang hindi binago ng tao, kung saan naninirahan ang mga buhay na nilalang.",
                    imageExample: '')
              },
              "suited": {
                "Cebuano": Translation(
                    word: "Angay",
                    definition:
                        "Haom o angay para sa usa ka partikular nga kahimtang o kinahanglanon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Akma",
                    definition:
                        "Tamang-tama para sa isang partikular na sitwasyon o pangangailangan.",
                    imageExample: '')
              },
              "thrive": {
                "Cebuano": Translation(
                    word: "Molambo",
                    definition:
                        "Ang malampusong pagtubo o pag-uswag sa usa ka organismo sa iyang palibot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Umusbong",
                    definition:
                        "Ang matagumpay na paglaki o pag-unlad ng isang organismo sa kanyang kapaligiran.",
                    imageExample: '')
              },
              "adapted": {
                "Cebuano": Translation(
                    word: "Nagpahiangay",
                    definition:
                        "Nakapahiangay o nakamatud-an sa bag-ong kahimtang o palibot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Nag-aangkop",
                    definition:
                        "Nakakapag-adjust o nagiging angkop sa bagong sitwasyon o kapaligiran.",
                    imageExample: '')
              },
              "unique": {
                "Cebuano": Translation(
                    word: "Talagsaon",
                    definition:
                        "Usa ka butang nga lahi sa uban, talagsaon, o dili maparehas.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Natatangi",
                    definition:
                        "Isang bagay na kakaiba, natatangi, o walang katulad.",
                    imageExample: '')
              },
              "dense forests": {
                "Cebuano": Translation(
                    word: "Siksik",
                    definition:
                        "Bug-at ug puno kaayo sa mga butang, puno ug duol ang mga kahoy o tanom.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Siksik",
                    definition:
                        "Punô ng mga bagay, masinsin o maraming kahoy o halaman sa isang lugar.",
                    imageExample: '')
              },
              "forest": {
                "Cebuano": Translation(
                    word: "Kalasangan",
                    definition:
                        "Usa ka dako nga dapit nga puno sa mga kahoy ug tanom.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kagubatan",
                    definition:
                        "Isang malaking lugar na maraming puno at halaman.",
                    imageExample: '')
              },
              "forests": {
                "Cebuano": Translation(
                    word: "Kalasangan",
                    definition:
                        "Usa ka dako nga dapit nga puno sa mga kahoy ug tanom.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kagubatan",
                    definition:
                        "Isang malaking lugar na maraming puno at halaman.",
                    imageExample: '')
              },
              "woodlands": {
                "Cebuano": Translation(
                    word: "Kahoyanan",
                    definition:
                        "Usa ka lugar nga adunay daghang kahoy nga gitubo, pero dili kasingdako ug kalasangan.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Gubat",
                    definition:
                        "Isang lugar na puno ng mga puno ngunit hindi kasing laki ng kagubatan.",
                    imageExample: '')
              },
              "roams": {
                "Cebuano": Translation(
                    word: "Naglaag-laag",
                    definition:
                        "Pagkawala-wala sa usa ka lugar nga walay tinuyo nga direksyon o padulngan.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Pagala-gala",
                    definition:
                        "Paglalakad o pagkilos nang walang tiyak na patutunguhan.",
                    imageExample: '')
              },
              "grasslands": {
                "Cebuano": Translation(
                    word: "Lunhaw nga kaumahan",
                    definition:
                        "Lugara nga wala’y daghang kahoy pero puno ug balili o mga tanom.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Damuhan",
                    definition:
                        "Lugaring may malawak na espasyo na puno ng damo at kaunting mga puno.",
                    imageExample: '')
              },
              "rainforest": {
                "Cebuano": Translation(
                    word: "Kalasangang tropikal",
                    definition:
                        "Usa ka tipo sa kalasangan nga permi mabasa ug daghan ug ulan, daghan usab ug tanom.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Tropikal na kagubatan",
                    definition:
                        "Isang uri ng kagubatan na madalas umulan at maraming halaman.",
                    imageExample: '')
              },
              "rainforests": {
                "Cebuano": Translation(
                    word: "Kalasangang tropikal",
                    definition:
                        "Usa ka tipo sa kalasangan nga permi mabasa ug daghan ug ulan, daghan usab ug tanom.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Tropikal na kagubatan",
                    definition:
                        "Isang uri ng kagubatan na madalas umulan at maraming halaman.",
                    imageExample: '')
              },
              "dwells": {
                "Cebuano": Translation(
                    word: "Nagpuyo",
                    definition: "Pagpabilin o pag-istar sa usa ka lugar.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Naninirahan",
                    definition:
                        "Pag-stay o pag-pamamalagi sa isang lugar bilang tahanan.",
                    imageExample: '')
              },
              "freshwater": {
                "Cebuano": Translation(
                    word: "Tab-ang nga tubig",
                    definition:
                        "Tubig nga walay daghang asin, gikan sa sapa, suba, o lanaw.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Tabang na tubig",
                    definition:
                        "Tubig na hindi maalat, karaniwang mula sa ilog, sapa, o lawa.",
                    imageExample: '')
              },
              "rivers": {
                "Cebuano": Translation(
                    word: "Suba",
                    definition:
                        "Usa ka natural nga agianan sa tubig nga padulong sa dagat o lanaw.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Ilog",
                    definition:
                        "Isang natural na daluyan ng tubig na umaagos papuntang dagat o lawa.",
                    imageExample: '')
              },
              "lakes": {
                "Cebuano": Translation(
                    word: "Lanaw",
                    definition:
                        "Usa ka dako nga tinubdan sa tubig tab-ang nga kinapul nga gilibutan sa yuta.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Lawa",
                    definition:
                        "Isang malaking katubigan na napapaligiran ng lupa at may tabang na tubig.",
                    imageExample: '')
              },
              "burrows": {
                "Cebuano": Translation(
                    word: "Lungib",
                    definition:
                        "Usa ka gamay nga lungag nga gihimo nga puy-anan sa hayop ilalom sa yuta.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Lungga",
                    definition:
                        "Isang maliit na hukay o lungga sa ilalim ng lupa na tahanan ng hayop.",
                    imageExample: '')
              },
              "shelter": {
                "Cebuano": Translation(
                    word: "Kanlungan",
                    definition:
                        "Usa ka lugar nga protektado ug safe para sa pagpuyo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Silungan",
                    definition:
                        "Isang lugar na nagbibigay proteksyon mula sa mga elementong nakapaligid.",
                    imageExample: '')
              },
              "mangroves": {
                "Cebuano": Translation(
                    word: "Bakawan",
                    definition:
                        "Mga tanom nga motubo sa tubig-dagat nga dapit, labi na sa mga estero ug baybayon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Bakawan",
                    definition:
                        "Mga puno o halaman na tumutubo sa baybaying tubig-alat, karaniwan sa mga estero.",
                    imageExample: '')
              },
              "canopies": {
                "Cebuano": Translation(
                    word: "Salingsing sa mga kahoy",
                    definition:
                        "Mga dahon ug sanga sa kahoy nga naghatag ug anino sa ilalom niini.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kisame ng mga dahon",
                    definition:
                        "Ang mga sanga at dahon ng puno na nagbibigay ng lilim sa ilalim.",
                    imageExample: '')
              },
              "aerial": {
                "Cebuano": Translation(
                    word: "Panghawan",
                    definition: "Mga butang nga naglihok o makita sa hangin.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Panghimpapawid",
                    definition:
                        "Mga bagay na nauugnay sa hangin o lumilipad sa himpapawid.",
                    imageExample: '')
              },
              "lowland": {
                "Cebuano": Translation(
                    word: "Kapatagan",
                    definition:
                        "Lugar nga naay ubos nga altitude, kasagaran lapad ug patag.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kapatagan",
                    definition:
                        "Lugar na mababa ang lokasyon at patag, kadalasang malapit sa tubig.",
                    imageExample: '')
              },
              "mountainous": {
                "Cebuano": Translation(
                    word: "Bukirong dapit",
                    definition:
                        "Lugar nga puno sa mga bukid o hataas nga kabungtoran.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mabundok",
                    definition:
                        "Lugar na maraming bundok o mataas na bahagi ng lupa.",
                    imageExample: '')
              },
              "inhabits": {
                "Cebuano": Translation(
                    word: "Nagpuyo",
                    definition:
                        "Pagpabilin o pag-istar sa usa ka lugar ingon nga puy-anan.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Naninirahan",
                    definition:
                        "Pag-occupy o pagtira sa isang lugar bilang tahanan.",
                    imageExample: '')
              },
              "coastal waters": {
                "Cebuano": Translation(
                    word: "Baybayon nga tubig",
                    definition:
                        "Tubig nga naa duol sa baybayon o daplin sa dagat.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Baybaying tubig",
                    definition:
                        "Tubig na matatagpuan malapit sa pampang o baybayin ng dagat.",
                    imageExample: '')
              },
              "seagrass beds": {
                "Cebuano": Translation(
                    word: "Mga banay nga dagat nga balili",
                    definition:
                        "Lugara sa ilawom sa tubig diin motubo ang mga tanom sama sa balili.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga damuhan sa ilalim ng dagat",
                    definition:
                        "Mga halaman na tumutubo sa ilalim ng tubig sa mababaw na bahagi ng dagat.",
                    imageExample: '')
              },
              "thriving": {
                "Cebuano": Translation(
                    word: "Naglambo",
                    definition:
                        "Pag-uswag o paglambu sa usa ka lugar o sitwasyon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Umunlad",
                    definition:
                        "Pagsulong o paglago ng mga nilalang o kalagayan.",
                    imageExample: '')
              },
              "shallow": {
                "Cebuano": Translation(
                    word: "Pababaw",
                    definition:
                        "Tubig nga dili lawom o lugar nga gamay ra ang giladmon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mababaw",
                    definition: "Bahagi ng tubig o lugar na hindi malalim.",
                    imageExample: '')
              },
              "marshes": {
                "Cebuano": Translation(
                    word: "Lut-ongan",
                    definition:
                        "Lugara nga basahon ug tanuman ug sagbot, permi basa.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Latian",
                    definition:
                        "Lupaing mabasa-basa at may mga halaman, kadalasang basang-lupa.",
                    imageExample: '')
              },
              "estuaries": {
                "Cebuano": Translation(
                    word: "Estero",
                    definition:
                        "Lugara diin nagtagbo ang tubig tab-ang ug tubig-dagat.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Estuwaryo",
                    definition:
                        "Lugar kung saan nagtatagpo ang tubig-tabang at tubig-alat mula sa ilog at dagat.",
                    imageExample: '')
              },
              "frequently": {
                "Cebuano": Translation(
                    word: "Kanunay",
                    definition: "Pagkakaitabo nga kanunay o pirme.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Madalas",
                    definition: "Nangyayari nang maraming beses o paulit-ulit.",
                    imageExample: '')
              },
              "streams": {
                "Cebuano": Translation(
                    word: "Sapa",
                    definition:
                        "Gagmay nga agianan sa tubig gikan sa yuta nga mosulod sa dagat o suba.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Sapa",
                    definition:
                        "Maliit na daluyan ng tubig mula sa lupa, papunta sa mas malaking anyong tubig.",
                    imageExample: '')
              },
              "shorelines": {
                "Cebuano": Translation(
                    word: "Daplin sa baybayon",
                    definition:
                        "Ang dapit nga daplin sa tubig, kasagaran nga diin magsugod ang dagat o suba.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Dalampasigan",
                    definition:
                        "Ang bahagi ng lupa na katabi ng tubig, karaniwang sa tabing-dagat o lawa.",
                    imageExample: '')
              },
              "soars": {
                "Cebuano": Translation(
                    word: "Molupad sa taas",
                    definition: "Paglupad sa taas ug dili moubos.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Lumilipad nang mataas",
                    definition:
                        "Pag-angat o paglipad nang mataas sa himpapawid.",
                    imageExample: '')
              },
              "tropical": {
                "Cebuano": Translation(
                    word: "Tropikal",
                    definition:
                        "Dapit nga init ug mabugnaw ug kasagaran ubos sa ekwador.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Tropikal",
                    definition:
                        "Lugar na may mainit at mahalumigmig na klima, kadalasang sa rehiyon ng ekwador.",
                    imageExample: '')
              },
              "forage": {
                "Cebuano": Translation(
                    word: "Mangita og pagkaon",
                    definition:
                        "Pagpangita ug pagkuha sa pagkaon gikan sa palibot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Maghanap ng pagkain",
                    definition:
                        "Paghanap at pagkuha ng pagkain mula sa kapaligiran.",
                    imageExample: '')
              },
              "soars high": {
                "Cebuano": Translation(
                    word: "Molupad pagtaas",
                    definition: "Paglupad sa taas kaayo ug dili moubos.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Lumilipad nang mataas",
                    definition: "Paglipad nang napakataas sa himpapawid.",
                    imageExample: '')
              },
              "diversity": {
                "Cebuano": Translation(
                    word: "Kalain-lain",
                    definition:
                        "Pagkauban sa lain-lain nga klase o matang sa mga butang o nilalang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Pagkakaiba-iba",
                    definition:
                        "Pagsasama-sama ng iba’t ibang uri o klase ng mga bagay o nilalang.",
                    imageExample: '')
              },
              "flourish": {
                "Cebuano": Translation(
                    word: "Molambo",
                    definition:
                        "Pagdako o paglambo sa maayo nga kahimtang, kadaghanan sa panahon sa mga tanom o negosyo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Umunlad",
                    definition:
                        "Pagyabong o paglago sa magandang kondisyon, karaniwang ginagamit sa halaman o negosyo.",
                    imageExample: '')
              },
              "resilience": {
                "Cebuano": Translation(
                    word: "Kusganon nga pagbangon",
                    definition:
                        "Abilidad sa pagbangon human sa kalisdanan o kapait.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kakayahang makabangon",
                    definition:
                        "Kakayahang makabawi o bumangon pagkatapos ng pagsubok o kahirapan.",
                    imageExample: '')
              },
              "durable": {
                "Cebuano": Translation(
                    word: "Lig-on",
                    definition:
                        "Abilidad nga magpabilin nga kusgan ug dili dayon maguba.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Matibay",
                    definition:
                        "Kakayahan na manatiling matibay at hindi agad masira.",
                    imageExample: '')
              },
              "cultivated": {
                "Cebuano": Translation(
                    word: "Gitamnan",
                    definition:
                        "Usa ka butang o lugar nga gipadako o gitamnan sa tanom alang sa pagpalambo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Tinanim",
                    definition:
                        "Isang bagay o lugar na itinanim at pinalago para sa produksyon o ani.",
                    imageExample: '')
              },
              "moist": {
                "Cebuano": Translation(
                    word: "Basahon",
                    definition:
                        "Gamay nga basa nga kahimtang nga dili bug-at, kasagaran sa yuta o mga butang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mamasa-masa",
                    definition:
                        "Bahagyang basa na kondisyon, karaniwan sa lupa o mga bagay.",
                    imageExample: '')
              },
              "drought-resistant": {
                "Cebuano": Translation(
                    word: "Lig-on sa hulaw",
                    definition:
                        "Kakayahan nga makasurvive bisan pa adunay taas nga panahon sa hulaw o walay ulan.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Matibay sa tagtuyot",
                    definition:
                        "Kakayahang makapagpatuloy o mabuhay kahit sa mahabang tagtuyot o kakulangan sa tubig.",
                    imageExample: '')
              },
              "abundantly": {
                "Cebuano": Translation(
                    word: "Daghan kaayo",
                    definition: "Pagkadaghan sa kantidad sa usa ka butang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Saganang-sagana",
                    definition: "Lubos na dami o kasaganaan ng isang bagay.",
                    imageExample: '')
              },
              "handicraft": {
                "Cebuano": Translation(
                    word: "Mga buhat nga kinamot",
                    definition:
                        "Mga produkto nga ginama gamit ang kamot ug artistikong abilidad.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Gawang-kamay",
                    definition:
                        "Mga produktong ginawa gamit ang kamay at malikhaing kakayahan.",
                    imageExample: '')
              },
              "stagnant": {
                "Cebuano": Translation(
                    word: "Walay lihok",
                    definition:
                        "Dili molihok o molambo, kasagaran nga gigamit sa tubig o negosyo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Hindi gumagalaw",
                    definition:
                        "Walang galaw o hindi umuunlad, kadalasang ginagamit sa tubig o negosyo.",
                    imageExample: '')
              },
              "invasive": {
                "Cebuano": Translation(
                    word: "Mapatuyang",
                    definition:
                        "Pagkahiusa sa usa ka lugar o sistema nga makadaot sa mga natural nga butang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mapanghimasok",
                    definition:
                        "Pagsakop sa isang lugar o sistema na nakakasama sa mga natural na elemento.",
                    imageExample: '')
              },
              "anchored": {
                "Cebuano": Translation(
                    word: "Gisang-at",
                    definition: "Gitaod o gipahimutang nga dili na malihok.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Nakakabit",
                    definition:
                        "Matatag na nakakabit o naitakda nang hindi madaling maalis.",
                    imageExample: '')
              },
              "edible": {
                "Cebuano": Translation(
                    word: "Makaon",
                    definition: "Angayan o luwas nga pagkaon sa tawo o hayop.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Makakain",
                    definition:
                        "Puwedeng kainin at ligtas para sa tao o hayop.",
                    imageExample: '')
              },
              "filtration": {
                "Cebuano": Translation(
                    word: "Paglimpyo pinaagi sa pagsala",
                    definition:
                        "Proseso sa paglimpyo sa likido pinaagi sa pagsala sa mga hugaw.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Pagsala",
                    definition:
                        "Proseso ng paglilinis ng likido sa pamamagitan ng pagtanggal ng dumi.",
                    imageExample: '')
              },
              "epiphytes": {
                "Cebuano": Translation(
                    word: "Epipita",
                    definition:
                        "Mga tanom nga nagatubo sa ibabaw sa ubang tanom, apan dili parasyto.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Epipita",
                    definition:
                        "Mga halaman na tumutubo sa ibabaw ng ibang halaman ngunit hindi parasitiko.",
                    imageExample: '')
              },
              "relying": {
                "Cebuano": Translation(
                    word: "Nagsalig",
                    definition:
                        "Pagkakita sa uban nga butang o tawo alang sa tabang o suporta.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Nakasalalay",
                    definition:
                        "Pagtitiwala o pag-asa sa ibang tao o bagay para sa suporta o tulong.",
                    imageExample: '')
              },
              "humidity": {
                "Cebuano": Translation(
                    word: "Alisngaw",
                    definition: "Lebel sa pagka-basa sa hangin o palibot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Halumigmig",
                    definition:
                        "Dami ng singaw ng tubig sa hangin o kapaligiran.",
                    imageExample: '')
              },
              "absorb": {
                "Cebuano": Translation(
                    word: "Motuhop",
                    definition:
                        "Pagsuyop sa tubig o likido sa usa ka butang o tanom.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Sumipsip",
                    definition:
                        "Kakayahang sumipsip ng likido o iba pang substansiya sa loob ng isang bagay.",
                    imageExample: '')
              },
              "moisture": {
                "Cebuano": Translation(
                    word: "Kabasa",
                    definition:
                        "Gamyang tubig o kahinayng pagka-basa nga naa sa usa ka butang o palibot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kahalumigmigan",
                    definition:
                        "Dami ng tubig o bahagyang basang kondisyon sa isang bagay o paligid.",
                    imageExample: '')
              },
              "distinctive": {
                "Cebuano": Translation(
                    word: "Talagsaon",
                    definition:
                        "Usa ka butang nga may lain-laing kalidad nga klaro o madayag sa uban.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Natatangi",
                    definition:
                        "Isang bagay na may kakaibang katangian na madaling makilala mula sa iba.",
                    imageExample: '')
              },
              "nutrients": {
                "Cebuano": Translation(
                    word: "Mga sustansya",
                    definition:
                        "Mga substansya nga gikinahanglan sa mga tanom ug hayop alang sa paglambu ug enerhiya.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga sustansiya",
                    definition:
                        "Mga sangkap na kailangan ng halaman at hayop upang lumago at magbigay ng enerhiya.",
                    imageExample: '')
              },
              "land based": {
                "Cebuano": Translation(
                    word: "Naa sa yuta",
                    definition:
                        "Mga proseso o butang nga nagagikan o nakabase sa yuta.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Nakabatay sa lupa",
                    definition:
                        "Mga proseso o bagay na nagmumula o nakakabit sa lupa.",
                    imageExample: '')
              },
              "characteristics": {
                "Cebuano": Translation(
                    word: "Mga kinaiya",
                    definition:
                        "Mga kalidad o kinaiya nga naghulagway sa usa ka organismo o butang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga katangian",
                    definition:
                        "Mga katangian na naglalarawan sa isang organismo o bagay.",
                    imageExample: '')
              },
              "specific": {
                "Cebuano": Translation(
                    word: "Espesipiko",
                    definition:
                        "Tinuyo nga detalye o klarong pagtuo nga gipunting sa usa ka butang o organisasyon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Espesipiko",
                    definition:
                        "Tiyak na detalye o malinaw na pagtuon sa isang bagay o organismo.",
                    imageExample: '')
              },
              "shrubs": {
                "Cebuano": Translation(
                    word: "Mga sapinit",
                    definition:
                        "Gamay nga mga tanom nga kahoy, kasagaran dili motubo kaayo ug taas.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga palumpong",
                    definition:
                        "Mga mababang halaman na makahoy, karaniwang hindi tumataas nang husto.",
                    imageExample: '')
              },
              "biodiversity": {
                "Cebuano": Translation(
                    word: "Kalain-lain sa kinabuhi",
                    definition:
                        "Ang nagkalain-laing klase sa mga tanom, hayop, ug uban pang mga organismo sa usa ka lugar.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Pagkakaiba-iba ng buhay",
                    definition:
                        "Ang iba’t ibang uri ng halaman, hayop, at iba pang organismo sa isang lugar.",
                    imageExample: '')
              },
              "dominant": {
                "Cebuano": Translation(
                    word: "Pangibabaw",
                    definition:
                        "Usa ka espesye o organismo nga adunay kusog nga impluwensya sa usa ka ekosistema.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Namumuno",
                    definition:
                        "Isang species o organismo na may pinakamalaking impluwensya sa isang ekosistema.",
                    imageExample: '')
              },
              "challenging": {
                "Cebuano": Translation(
                    word: "Hagit",
                    definition:
                        "Lisod nga kondisyon nga nanginahanglan ug adaptasyon o solusyon sa mga organismo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mahirap",
                    definition:
                        "Mga mahirap na kondisyon na nangangailangan ng adaptasyon o solusyon mula sa mga organismo.",
                    imageExample: '')
              },
              "high elevation": {
                "Cebuano": Translation(
                    word: "Taas nga altitud",
                    definition:
                        "Lugar nga anaa sa taas kaayo nga lebel gikan sa dagat, kasagaran ubos ang temperatura.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mataas na altitud",
                    definition:
                        "Lugar na matatagpuan sa napakataas na lebel mula sa dagat, karaniwang mababa ang temperatura.",
                    imageExample: '')
              },
              "permanently": {
                "Cebuano": Translation(
                    word: "Permanente",
                    definition:
                        "Usa ka kondisyon nga dili mausab sa dugayng panahon, dili temporaryo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Permanenteng",
                    definition:
                        "Isang kondisyon na hindi magbabago sa mahabang panahon, hindi pansamantala.",
                    imageExample: '')
              },
              "seasonally": {
                "Cebuano": Translation(
                    word: "Panahonan",
                    definition:
                        "Usa ka proseso o paglihok nga mahitabo lamang sa piho nga panahon o yugto sa tuig.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Pana-panahon",
                    definition:
                        "Isang proseso o pagkilos na nangyayari lamang sa partikular na panahon o bahagi ng taon.",
                    imageExample: '')
              },
              "supports": {
                "Cebuano": Translation(
                    word: "Nagsuporta",
                    definition:
                        "Naghatag ug tabang o panginahanglan aron makasustener ang kinabuhi o proseso.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Sumusuporta",
                    definition:
                        "Nagbibigay ng tulong o kinakailangan upang mapanatili ang buhay o proseso.",
                    imageExample: '')
              },
              "environment": {
                "Cebuano": Translation(
                    word: "Palibot",
                    definition:
                        "Ang pisikal, biyolohikal, ug kemikal nga mga kondisyon nga gipalibutan sa usa ka organismo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kapaligiran",
                    definition:
                        "Ang pisikal, biyolohikal, at kemikal na kondisyon na nakapaligid sa isang organismo.",
                    imageExample: '')
              },
              "condition": {
                "Cebuano": Translation(
                    word: "Kahimtang",
                    definition:
                        "Ang piho nga sitwasyon o kahimtang nga nakaapekto sa usa ka proseso o organismo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kundisyon",
                    definition:
                        "Ang partikular na sitwasyon o kalagayan na nakakaapekto sa isang proseso o organismo.",
                    imageExample: '')
              },
              "water temperature": {
                "Cebuano": Translation(
                    word: "Temperatura sa tubig",
                    definition:
                        "Ang lebel sa kainiton o kabugnaw sa tubig nga makaapekto sa mga organismo nga nagpuyo niini.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Temperatura ng tubig",
                    definition:
                        "Ang antas ng init o lamig ng tubig na nakakaapekto sa mga organismo na naninirahan dito.",
                    imageExample: '')
              },
              "depth": {
                "Cebuano": Translation(
                    word: "Giladmon",
                    definition:
                        "Sukod sa giladmon sa usa ka tubig o lugar nga nagrepresentar kung unsa kini kalawom.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Lalim",
                    definition:
                        "Sukat ng lalim ng isang tubig o lugar na nagpapakita kung gaano ito kalalim.",
                    imageExample: '')
              },
              "salinity": {
                "Cebuano": Translation(
                    word: "Asin nga lebel",
                    definition:
                        "Ang konsentrasyon sa asin nga anaa sa tubig, kasagaran gigamit sa dagat o estuaryo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Alat",
                    definition:
                        "Ang konsentrasyon ng asin sa tubig, karaniwang ginagamit sa dagat o estuwaryo.",
                    imageExample: '')
              },
              "concentration": {
                "Cebuano": Translation(
                    word: "Konsentrasyon",
                    definition:
                        "Ang kantidad sa usa ka substansiya sa sulod sa usa ka likido o gas sa piho nga kantidad.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Konsentrasyon",
                    definition:
                        "Ang dami ng isang substansiya sa loob ng isang likido o gas sa partikular na dami.",
                    imageExample: '')
              },
              "vary": {
                "Cebuano": Translation(
                    word: "Nagkalain-lain",
                    definition:
                        "Ang proseso sa pag-ilis o pag-usab depende sa kondisyon o pwersa nga makaapekto.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Nag-iiba",
                    definition:
                        "Ang proseso ng pagbabago o pag-iba depende sa kondisyon o pwersa na nakakaapekto.",
                    imageExample: '')
              },
              "salt tolerant": {
                "Cebuano": Translation(
                    word: "Maka-agwanta sa asin",
                    definition:
                        "Kakayahan sa mga organismo nga magpabilin nga buhi bisan sa taas nga lebel sa asin.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Matibay sa alat",
                    definition:
                        "Kakayahan ng mga organismo na mabuhay kahit sa mataas na konsentrasyon ng asin.",
                    imageExample: '')
              },
              "intertidal zone": {
                "Cebuano": Translation(
                    word: "Intertidal nga dapit",
                    definition:
                        "Lugar nga naa taliwala sa taas ug ubos nga tide, diin ang tubig molabay ug moubos.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Bahaging intertidal",
                    definition:
                        "Lugar na nasa pagitan ng mataas at mababang alon, kung saan ang tubig ay umaabot at bumababa.",
                    imageExample: '')
              },
              "calcium carbonate": {
                "Cebuano": Translation(
                    word: "Kalsyum karbonato",
                    definition:
                        "Usa ka kemikal nga compound nga makit-an sa mga kabukogan sa mga korales ug kabuhi sa dagat.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kaltsyum karbonato",
                    definition:
                        "Isang kemikal na tambalan na matatagpuan sa mga koral at mga kabibe ng mga organismo sa dagat.",
                    imageExample: '')
              },
              "secreted": {
                "Cebuano": Translation(
                    word: "Gipagawas",
                    definition:
                        "Ang proseso diin ang usa ka organismo nagpagawas ug kemikal gikan sa iyang lawas.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Inilabas",
                    definition:
                        "Ang proseso kung saan ang isang organismo ay naglalabas ng kemikal mula sa kanyang katawan.",
                    imageExample: '')
              },
              "bioindicators": {
                "Cebuano": Translation(
                    word: "Bioindikador",
                    definition:
                        "Mga organismo nga gigamit aron sukaton ang kahimtang sa ekosistema o palibot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Bioindicators",
                    definition:
                        "Mga organismo na ginagamit upang sukatin ang kondisyon ng ekosistema o kapaligiran.",
                    imageExample: '')
              },
              "universal": {
                "Cebuano": Translation(
                    word: "Kinatibuk-an",
                    definition:
                        "Ang butang nga nakapadayon sa tanang mga aspeto o kondisyon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Pangkalahatan",
                    definition:
                        "Ang bagay na patuloy sa lahat ng aspeto o kondisyon.",
                    imageExample: '')
              },
              "beyond": {
                "Cebuano": Translation(
                    word: "Labaw pa",
                    definition:
                        "Usa ka butang o kahimtang nga molapas sa piho nga gihatag nga limitasyon o sukod.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Higit pa",
                    definition:
                        "Isang bagay o kondisyon na lumalampas sa ibinigay na limitasyon o sukat.",
                    imageExample: '')
              },
              "critical": {
                "Cebuano": Translation(
                    word: "Kritikal",
                    definition:
                        "Usa ka importante nga punto nga makaapekto sa kabuhian o proseso sa usa ka sistema.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kritikal",
                    definition:
                        "Isang mahalagang punto na maaaring makaapekto sa kaligtasan o proseso ng isang sistema.",
                    imageExample: '')
              },
              "variety": {
                "Cebuano": Translation(
                    word: "Kalain-lain",
                    definition:
                        "Usa ka hugpong sa lain-lain nga mga klase o matang sa mga butang o organismo.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Iba’t ibang uri",
                    definition:
                        "Isang hanay ng iba’t ibang klase o uri ng mga bagay o organismo.",
                    imageExample: '')
              },
              "primarily": {
                "Cebuano": Translation(
                    word: "Pangunahon",
                    definition:
                        "Ang nag-unang rason o paggamit nga importante sa usa ka proseso o kahimtang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Pangunahing",
                    definition:
                        "Ang pangunahing dahilan o gamit na mahalaga sa isang proseso o kalagayan.",
                    imageExample: '')
              },
              "specialized": {
                "Cebuano": Translation(
                    word: "Espesyal",
                    definition:
                        "Usa ka organismo nga adunay piho nga abilidad o adaptasyon alang sa usa ka buluhaton.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Dalubhasa",
                    definition:
                        "Isang organismo na may partikular na kakayahan o adaptasyon para sa isang gawain.",
                    imageExample: '')
              },
              "keen senses": {
                "Cebuano": Translation(
                    word: "Hait nga mga pangbati",
                    definition:
                        "Mga abilidad nga mas taas o mas responsive kaysa sa normal nga lebel.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Matatalas na pandama",
                    definition:
                        "Mga kakayahan na mas mataas o mas tumutugon kaysa sa normal na antas.",
                    imageExample: '')
              },
              "canopy": {
                "Cebuano": Translation(
                    word: "Kanopyo",
                    definition:
                        "Ang ibabaw nga bahin sa mga punoan nga naghatag ug silong ug suporta sa tanom ug hayop.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Kanopyo",
                    definition:
                        "Ang ibabaw na bahagi ng mga puno na nagbibigay ng lilim at suporta sa mga halaman at hayop.",
                    imageExample: '')
              },
              "elevated": {
                "Cebuano": Translation(
                    word: "Gitaas",
                    definition:
                        "Nahimutang sa taas nga posisyon gikan sa yuta o sa uban pang butang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Nakaangat",
                    definition:
                        "Matatagpuan sa mataas na posisyon mula sa lupa o sa iba pang bagay.",
                    imageExample: '')
              },
              "air currents": {
                "Cebuano": Translation(
                    word: "Agos sa hangin",
                    definition:
                        "Ang gikusgon sa paglihok sa hangin sa usa ka direksyon nga makaapekto sa klima ug pagbiyahe.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Daloy ng hangin",
                    definition:
                        "Ang bilis ng paggalaw ng hangin sa isang direksyon na maaaring makaapekto sa klima at paglalakbay.",
                    imageExample: '')
              },
              "traditionally considered": {
                "Cebuano": Translation(
                    word: "Tradisyonal nga giisip",
                    definition:
                        "Usa ka ideya o pagtan-aw nga gigamit sa dugayng panahon sa kasaysayan o kultura.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Tradisyonal na itinuturing",
                    definition:
                        "Isang ideya o pananaw na ginagamit sa mahabang panahon ayon sa kasaysayan o kultura.",
                    imageExample: '')
              },
              "desert": {
                "Cebuano": Translation(
                    word: "Disyerto",
                    definition:
                        "Usa ka lugar nga walay daghang ulan ug mas lisod ang pagpuyo alang sa mga tanom ug mananap.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Disyerto",
                    definition:
                        "Isang lugar na halos walang ulan at mahirap ang pamumuhay para sa mga halaman at hayop.",
                    imageExample: '')
              },
              "lakes and ponds": {
                "Cebuano": Translation(
                    word: "Mga linaw ug mga pond",
                    definition:
                        "Mga lawom nga dapit sa tab-ang nga tubig nga napalibutan sa yuta, diin ang mga linaw mas dako kay sa mga pond.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga lawa at mga pond",
                    definition:
                        "Mga anyo ng tabang na tubig na napapalibutan ng lupa, kung saan ang lawa ay mas malaki kaysa sa mga pond.",
                    imageExample: '')
              },
              "rivers and streams": {
                "Cebuano": Translation(
                    word: "Mga suba ug sapa",
                    definition:
                        "Mga nagdagayday nga tubig nga moadto padulong sa mga linaw, dagat, o uban pang suba.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga ilog at batis",
                    definition:
                        "Mga dumadaloy na katawan ng tubig na patuloy na umaagos patungo sa mga lawa, dagat, o iba pang mga ilog.",
                    imageExample: '')
              },
              "caves": {
                "Cebuano": Translation(
                    word: "Mga langob",
                    definition:
                        "Natural nga lungag sa ilawom sa yuta nga igo para musulod ang mga tawo o mananap.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga kuweba",
                    definition:
                        "Isang natural na butas sa ilalim ng lupa na sapat na para pasukin ng mga tao o hayop.",
                    imageExample: '')
              },
              "mountain cliffs": {
                "Cebuano": Translation(
                    word: "Mga pangpang sa bukid",
                    definition:
                        "Matay-og ug batoon nga nawong sa mga bukid o ubang dagkong porma sa yuta.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga bangin ng bundok",
                    definition:
                        "Matatarik at mabatong bahagi ng bundok o ibang malalaking anyong lupa.",
                    imageExample: '')
              }
            },
          ),
        ],
      ),
      Units(
        title: "Life Cycles of Animals",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Stages in the Life Cycle of Animals"),
        ],
        bookContent: [
          Book(
            content: "life_cycle_mod1.pdf",
            moduleName: "Stages in the Life Cycle of Animals",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Organismo',
                  definition: 'Usa ka komon nga buhing mananap o tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Organismo',
                  definition: 'Isang karaniwang buhay na hayop o halaman.',
                  imageExample: '',
                ),
              },
              'living things': {
                'Cebuano': Translation(
                  word: 'Buhi nga mga butang',
                  definition:
                      'Bisan unsang organismo o porma sa kinabuhi nga nagpagkita nga buhi kini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga bagay na may buhay',
                  definition:
                      'Anumang organismo o anyo ng buhay na nagtataglay o nagpapakita ng mga katangian ng buhay o pagiging buhay.',
                  imageExample: '',
                ),
              },
              'life cycle': {
                'Cebuano': Translation(
                  word: 'Siklo sa kinabuhi',
                  definition:
                      'Ang serye sa mga kausaban sa kinabuhi sa usa ka organismo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Siklo ng buhay',
                  definition:
                      'Ang serye ng mga pagbabago sa buhay ng isang organismo.',
                  imageExample: '',
                ),
              },
              'metamorphosis': {
                'Cebuano': Translation(
                  word: 'Metamorposis',
                  definition:
                      'Mao ang biyolohikal nga proseso diin ang usa ka organismo moagi ug sunodsunod nga lahi ug kasagarang mahinuklugong kausaban sa porma o istruktura niini atol sa iyang siklo sa kinabuhi.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Banyuhay',
                  definition:
                      'Ay ang biyolohikal na proseso kung saan ang isang organismo ay sumasailalim sa isang serye ng mga natatanging at madalas na mga dramatikong pagbabago sa anyo o istraktura nito sa panahon ng siklo ng buhay nito.',
                  imageExample: '',
                ),
              },
              'animals': {
                'Cebuano': Translation(
                  word: 'Mananap',
                  definition:
                      'Usa ka buhing butang nga makalihok, makakaon, ug makatubag sa palibot niini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Hayop',
                  definition:
                      'Ay isang buhay na bagay na maaaring gumalaw, kumain, at tumugon sa kapaligiran nito.',
                  imageExample: '',
                ),
              },
              'insects': {
                'Cebuano': Translation(
                  word: 'Insekto',
                  definition:
                      'Usa ka gamay nga mananap nga adunay unom ka mga tiil ug kasagaran usa o duha ka parisan sa mga pako.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Insekto',
                  definition:
                      'Ay isang maliit na hayop na may anim na paa at karaniwang isa o dalawang pares ng mga pakpak.',
                  imageExample: '',
                ),
              },
              'habitat': {
                'Cebuano': Translation(
                  word: 'Puy-anan',
                  definition:
                      'Natural nga palibot diin ang tanom, mananap, o uban pang organismo nagpuyo ug mitubo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tirahan',
                  definition:
                      'Likas na kapaligiran kung saan nabubuhay at lumalaki ang isang halaman, hayop, o iba pang organismo.',
                  imageExample: '',
                ),
              },
              'egg': {
                'Cebuano': Translation(
                  word: 'Itlog',
                  definition:
                      'Mao ang usa ka oval o lingin nga butang nga gipagawas sa usa ka baye nga langgam, reptilya, isda, o invertebrate, kasagaran adunay usa ka nagtubo nga embryo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Itlog',
                  definition:
                      'Ay isang hugis-itlog o bilog na bagay na inilatag ng isang babaeng ibon, reptilya, isda, o invertebrate, kadalasang naglalaman ng nabubuong embryo.',
                  imageExample: '',
                ),
              },
              'larva': {
                'Cebuano': Translation(
                  word: 'Larva',
                  definition:
                      'Usa ka yugto sa pagtubo sa pipila ka mga insekto, diin sila walay pako ug susama sa ulod human mapusa gikan sa ilang mga itlog.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Larba',
                  definition:
                      'Isang yugto ng paglaki para sa ilang mga insekto, kung saan sila ay walang pakpak at kahawig ng isang uod pagkatapos mapisa mula sa kanilang mga itlog.',
                  imageExample: '',
                ),
              },
              'pupa': {
                'Cebuano': Translation(
                  word: 'Pupa',
                  definition:
                      'Kini nagasunod sa yugto sa larva ug kasagaran gipakita sa usa ka hilom nga yugto, diin ang insekto kasagaran nakapaloob sa usa ka protektadong panit.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pupa',
                  definition:
                      'Ang yugtong ito ay sumusunod sa yugto ng larva at karaniwang nailalarawan na kung saan ang insekto ay kadalasang nakapaloob sa isang protektadong balat.',
                  imageExample: '',
                ),
              },
              'caterpillar': {
                'Cebuano': Translation(
                  word: 'Olud',
                  definition:
                      'Mao kini ang yugto sa ulod sa usa ka insekto, ilabina ang mga alibangbang ug mga anunugba.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Oud',
                  definition:
                      'Ito ay ang larval stage ng isang insekto, partikular ng mga paruparo at mot.',
                  imageExample: '',
                ),
              },
              'cocoon': {
                'Cebuano': Translation(
                  word: 'Uloran',
                  definition:
                      'Mao ang ngalan nga gihatag sa balay sa mga ulod nga nahimong alibangbang o anunugba.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Supot-uod',
                  definition:
                      'Ang tawag sa bahay ng uod at higad na nagiging paru-paro o gamugamo.',
                  imageExample: '',
                ),
              },
              'butterfly': {
                'Cebuano': Translation(
                  word: 'Alibangbang',
                  definition:
                      'Usa ka insekto nga mokaon ug nektar nga adunay duha ka parisan nga dagko, kasagarang hayag nga kolor nga mga pako nga gitabonan sa mikroskopikong mga himbis.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Paruparo',
                  definition:
                      'Ay isang insektong kumakain ng nektar na may dalawang pares ng malalaking pakpak na karaniwang may maliwanag na kulay na natatakpan ng mga mikroskopikong kaliskis.',
                  imageExample: '',
                ),
              },
              'grasshopper': {
                'Cebuano': Translation(
                  word: 'Apan-apan',
                  definition:
                      'Usa ka gamay nga insekto nga adunay tag-as nga pangulahiang mga bitiis para sa paglukso, kasagaran makita sa mga sagbot nga dapit.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tipaklong',
                  definition:
                      'Ay isang maliit na insekto na may mahabang hulihan na mga binti para sa paglukso, kadalasang matatagpuan sa mga lugar na madamo.',
                  imageExample: '',
                ),
              },
              'cockroaches': {
                'Cebuano': Translation(
                  word: 'Uk-ok',
                  definition:
                      'Kay usa ka insekto nga mangtas-on nga susama sa bakukang, nga adunay tag-as nga antennae ug mga bitiis ug kasagarang lapad, patag nga lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Ipis',
                  definition:
                      'Ay isang scavenging insect na kahawig ng isang salagubang, na may mahabang antennae at mga binti at karaniwang malawak at patag na katawan.',
                  imageExample: '',
                ),
              },
              'nymph': {
                'Cebuano': Translation(
                  word: 'Nymph',
                  definition:
                      'Usa ka larva sa usa ka insekto nga adunay dili kompleto nga metamorphosis.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Nymph',
                  definition:
                      'Isang larva ng isang insekto na may hindi ganap na metamorphosis.',
                  imageExample: '',
                ),
              },
              'adult': {
                'Cebuano': Translation(
                  word: 'Hamtong',
                  definition: 'Naa na sa sakto nga edad o hingpit na.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Matanda',
                  definition: 'Nasa hustong gulang na o ganap na buo.',
                  imageExample: '',
                ),
              },
              'wings': {
                'Cebuano': Translation(
                  word: 'Pako',
                  definition:
                      'Makit-an sa mga lawas sa daghang mga hayop, labi na ang mga insekto ug mga langgam, nga nagtugot kanila nga makalupad.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pakpak',
                  definition:
                      'Matatagpuan sa katawan ng maraming hayop, partikular na ang mga insekto at ibon, na nagpapahintulot sa kanila na lumipad.',
                  imageExample: '',
                ),
              },
              'skin': {
                'Cebuano': Translation(
                  word: 'Panit',
                  definition: 'Natural nga proteksyon sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Balat',
                  definition: 'Isang natural na proteksiyon sa katawan.',
                  imageExample: '',
                ),
              },
              'egg mass': {
                'Cebuano': Translation(
                  word: 'Egg mass',
                  definition: 'Kay usa ka pungpong o grupo sa mga itlog.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Egg mass',
                  definition: 'Ay isang kumpol o grupo ng mga itlog.',
                  imageExample: '',
                ),
              },
              'tadpole': {
                'Cebuano': Translation(
                  word: 'Pitopito',
                  definition:
                      'Larval stage ng palaka, nga gihulagway pinaagi sa usa ka gamay, hugis-itlog nga lawas, taas nga ikog, ug walay mga bitiis.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Butete',
                  definition:
                      'Larval stage ng palaka o palaka, na nailalarawan sa pamamagitan ng isang maliit, hugis-itlog na katawan, mahabang buntot, at walang mga binti.',
                  imageExample: '',
                ),
              },
              'froglet': {
                'Cebuano': Translation(
                  word: 'Gamay nga baki',
                  definition:
                      'Naugmad ang mga bitiis ug wala nay ikog, apan gamay pa ug wala pa hingpit nga mitubo nga usa ka hamtong nga baki.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Munting Palaka',
                  definition:
                      'Ay may nabuong mga binti at nawala ang kanyang buntot, ngunit ito ay maliit pa rin at hindi pa ganap na lumaki upang maging isang adult na palaka.',
                  imageExample: '',
                ),
              },
              'adult frog': {
                'Cebuano': Translation(
                  word: 'Baki',
                  definition:
                      'Gihulagway pinaagi sa usa ka hamis, basa nga panit, taas nga pangulahiang mga bitiis alang sa paglukso, ug naay abilidad sa pagpuyo sa tubig ug sa yuta.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Palaka',
                  definition:
                      'Ay nailalarawan sa pamamagitan ng isang makinis, basa-basa na balat, mahabang hulihan na mga binti para sa paglukso, at ang kakayahang mabuhay sa tubig at sa lupa.',
                  imageExample: '',
                ),
              },
              'tail': {
                'Cebuano': Translation(
                  word: 'Ikog',
                  definition:
                      'Mao ang taas og malihok-lihok nga bahin sa lawas sa mananap nga gikan sa likod nga tumoy niini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Buntot',
                  definition:
                      'Ay ang pahabang, nababaluktot na bahagi ng katawan ng hayop na umaabot mula sa likurang dulo nito.',
                  imageExample: '',
                ),
              },
              'water': {
                'Cebuano': Translation(
                  word: 'Tubig',
                  definition:
                      'Usa ka tin-aw, walay kolor, ug walay lami nga likido nga gikinahanglan sa tanang matang sa kinabuhi.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tubig',
                  definition:
                      'Ay isang malinaw, walang kulay, at walang lasa na likido na mahalaga para sa lahat ng anyo ng buhay.',
                  imageExample: '',
                ),
              },
              'land': {
                'Cebuano': Translation(
                  word: 'Yuta',
                  definition:
                      'Mao ang solidong bahin sa nawong sa atong kalibutan, nga wala matabonan sa tubig.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Lupa',
                  definition:
                      'Ay ang solidong bahagi ng ibabaw ng ating mundo, na hindi natatakpan ng tubig.',
                  imageExample: '',
                ),
              },
              'embryo': {
                'Cebuano': Translation(
                  word: 'Embryo',
                  definition:
                      'Mao kini ang unang yugto sa paglambo sa piso sulod sa itlog sa manok, sa dili pa kini mapusa.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Embriyo',
                  definition:
                      'Ito ang maagang yugto ng pag-unlad ng sisiw sa loob ng itlog ng manok, bago ito mapisa.',
                  imageExample: '',
                ),
              },
              'yolk': {
                'Cebuano': Translation(
                  word: 'Pughak',
                  definition:
                      'Mao ang dalag nga bahin sa itlog nga puno sa sustansya.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Apyak',
                  definition:
                      'Ay ang dilaw na bahagi ng itlog na mayaman sa nutrients.',
                  imageExample: '',
                ),
              },
              'chick': {
                'Cebuano': Translation(
                  word: 'Piso',
                  definition:
                      'Usa ka bata nga manok nga bag-o lang napusa gikan sa usa ka itlog.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sisiw',
                  definition:
                      'Ay isang bata o sanggol na manok na napisa lamang mula sa isang itlog.',
                  imageExample: '',
                ),
              },
              'beak': {
                'Cebuano': Translation(
                  word: 'Sungo',
                  definition:
                      'Mao ang gahi, talinis nga baba sa mga mananap nga gigamit sa pagkaon, pag-ayo, ug pagmaniobra sa mga butang.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tuka',
                  definition:
                      'Ay ang matigas at matulis na bibig ng mga hayop gaya ng ibon, na ginagamit para sa pagkain, pag-aayos, at pagmamanipula ng mga bagay.',
                  imageExample: '',
                ),
              },
              'feathers': {
                'Cebuano': Translation(
                  word: 'Balhibo',
                  definition:
                      'Mao ang nipis, patag nga mga istruktura nga motubo gikan sa panit sa mga langgam.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Balahibo',
                  definition:
                      'Ay ang manipis at patag na mga istraktura na tumutubo mula sa balat ng mga ibon.',
                  imageExample: '',
                ),
              },
              'rooster': {
                'Cebuano': Translation(
                  word: 'Sunoy',
                  definition: 'Usa ka hamtong nga laki nga manok.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tandang',
                  definition: 'Ay isang pang-adultong lalaking manok.',
                  imageExample: '',
                ),
              },
              'hen': {
                'Cebuano': Translation(
                  word: 'Himungaan',
                  definition: 'Usa ka hamtong nga baye nga manok.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Inahin',
                  definition: 'Ay isang pang-adultong babaeng manok.',
                  imageExample: '',
                ),
              },
              'birth': {
                'Cebuano': Translation(
                  word: 'Pagpanganak',
                  definition:
                      'Kini mao ang panahon nga ang usa ka bata matawo ug magsugod sa kinabuhi sa gawas sa sabakan sa inahan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kapanganakan',
                  definition:
                      'Ito ay kapag ang isang sanggol ay ipinanganak at nagsimula ng buhay sa labas ng sinapupunan ng ina.',
                  imageExample: '',
                ),
              },
              'infancy': {
                'Cebuano': Translation(
                  word: 'Pagkabata',
                  definition:
                      'Gikan sa pagkahimugso hangtod sa mga 2 ka tuig ang edad. Ang mga bata dali nga motubo, makakat-on sa pag-crawl, paglakaw, ug pagsugod sa pagsulti.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pagkasanggol',
                  definition:
                      'Mula sa kapanganakan hanggang sa humigit-kumulang 2 taong gulang. Mabilis na lumalaki ang mga sanggol, natututong gumapang, lumakad, at nagsimulang magsalita.',
                  imageExample: '',
                ),
              },
              'childhood': {
                'Cebuano': Translation(
                  word: 'Pagkabata',
                  definition:
                      'Gikan sa mga 2 hangtod 12 anyos. Ang mga bata nagtubo, nagkat-on og daghang bag-ong kahanas sama sa pagbasa ug pagsulat, ug nahimong mas independente.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pagkabata',
                  definition:
                      'Mula mga 2 hanggang 12 taong gulang. Ang mga bata ay lumalaki, natututo ng maraming bagong kasanayan tulad ng pagbabasa at pagsusulat, at nagiging mas malaya.',
                  imageExample: '',
                ),
              },
              'adolescence': {
                'Cebuano': Translation(
                  word: 'Pagkatin-edyer',
                  definition:
                      'Gikan sa mga 13 hangtod 18 ka tuig ang edad. Niini nga yugto, ang lawas moagi sa pagkabatan-on, ug ang emosyonal ug mental nga pagkahamtong molambo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pagbibinata',
                  definition:
                      'Mula sa paligid ng 13 hanggang 18 taong gulang. Sa yugtong ito, ang katawan ay dumaan sa pagdadalaga, at ang emosyonal at mental na kapanahunan ay bubuo.',
                  imageExample: '',
                ),
              },
              'adulthood': {
                'Cebuano': Translation(
                  word: 'Pagkahamtong',
                  definition:
                      'Human sa pagkatin-edyer, ang tawo mahimong hingpit nga hamtong, makahimo sa pagpuyo nga independente, pagtrabaho, ug posible nga magsugod sa usa ka pamilya.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Adulthood',
                  definition:
                      'Ang tao ay nagiging ganap na lumaki, may kakayahang mamuhay nang nakapag-iisa, nagtatrabaho, at posibleng magsimula ng isang pamilya.',
                  imageExample: '',
                ),
              },
            },
          ),
        ],
      ),
      Units(
        title: "Animals and the Food They Eat",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Animals and the Food They Eat Module 1"),
        ],
        bookContent: [
          Book(
            content: "animals_food_mod1.pdf",
            moduleName: "Animals and the Food They Eat Module 1",
            translations: {
              'distance': {
                'Cebuano': Translation(
                  word: 'Distansya',
                  definition: 'Ang gap o layo tali sa duha ka butang.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Distansya',
                  definition: 'Ang agwat o layo sa pagitan ng dalawang bagay.',
                  imageExample: '',
                ),
              },
              'digest': {
                'Cebuano': Translation(
                  word: 'Digesto',
                  definition:
                      'Ang proseso sa pagputol sa pagkaon aron mahimong mas sayon nga masuyop sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tunawin',
                  definition:
                      'Ang proseso ng pagputol ng pagkain upang mas madaling masipsip ng katawan.',
                  imageExample: '',
                ),
              },
              'munching': {
                'Cebuano': Translation(
                  word: 'Pag-usap',
                  definition:
                      'Ang pag-usik o pagdaug sa pagkaon nga adunay tunog.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Nguy-ngoy',
                  definition: 'Ang pagkain ng pagkain habang may tunog.',
                  imageExample: '',
                ),
              },
              'snuffling': {
                'Cebuano': Translation(
                  word: 'Pag-simhot',
                  definition:
                      'Ang tunog sa paghinga o pag-sniff, kasagaran nga mahitabo sa mga hayop.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Nagsusungaw',
                  definition:
                      'Tunog na ginawa sa paghinga o pag-sniff, karaniwang sa mga hayop.',
                  imageExample: '',
                ),
              },
              'hunt': {
                'Cebuano': Translation(
                  word: 'Pangayam',
                  definition: 'Ang proseso sa pagdakop o pagkuha sa mga hayop.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pangingisda/Pangangaso',
                  definition: 'Ang proseso ng pagkuha o pagdakip ng mga hayop.',
                  imageExample: '',
                ),
              },
              'plant-eaters': {
                'Cebuano': Translation(
                  word: 'Mga herbiboro',
                  definition: 'Mga hayop nga nagakaon lamang sa mga tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga halamang pagkain',
                  definition: 'Mga hayop na kumakain lamang ng mga halaman.',
                  imageExample: '',
                ),
              },
              'meat-eaters': {
                'Cebuano': Translation(
                  word: 'Mga karniboro',
                  definition: 'Mga hayop nga nagakaon sa karne.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga karniboro',
                  definition: 'Mga hayop na kumakain ng karne.',
                  imageExample: '',
                ),
              },
              'claws': {
                'Cebuano': Translation(
                  word: 'Mga kuko',
                  definition:
                      'Mga panggikid sa mga hayop nga nagtabang sa paghawid o pagdakop.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga kuko',
                  definition:
                      'Mga pangil ng mga hayop na tumutulong sa paghawak o pagdakip.',
                  imageExample: '',
                ),
              },
              'jaws': {
                'Cebuano': Translation(
                  word: 'Mga pangil',
                  definition: 'Ang bahin sa ulo nga naglalaman sa mga ngipon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga panga',
                  definition: 'Bahagi ng ulo na naglalaman ng mga ngipin.',
                  imageExample: '',
                ),
              },
              'neck': {
                'Cebuano': Translation(
                  word: 'Liog',
                  definition:
                      'Ang bahin sa lawas nga nagdugtong sa ulo ug lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Leeg',
                  definition:
                      'Bahagi ng katawan na nag-uugnay sa ulo at katawan.',
                  imageExample: '',
                ),
              },
              'living things': {
                'Cebuano': Translation(
                  word: 'Buhi nga butang',
                  definition:
                      'Mga butang nga adunay kinabuhi, sama sa mga hayop, tanom, ug microorganism.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga nabubuhay na bagay',
                  definition:
                      'Mga bagay na may buhay, tulad ng mga hayop, halaman, at mikrobyo.',
                  imageExample: '',
                ),
              },
              'survive': {
                'Cebuano': Translation(
                  word: 'Mabuhi',
                  definition:
                      'Ang pagpadayon sa pagkinabuhi sa kabila sa mga pagsuway.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Magsurvive',
                  definition:
                      'Ang patuloy na pamumuhay sa kabila ng mga pagsubok.',
                  imageExample: '',
                ),
              },
              'body structure': {
                'Cebuano': Translation(
                  word: 'Estruktura sa lawas',
                  definition:
                      'Ang pagsumpay-sumpay sa mga bahin sa lawas nga nagtukod sa kinatibuk-ang porma niini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Estruktura ng katawan',
                  definition:
                      'Ang pagkakabuo ng mga bahagi ng katawan na bumubuo sa kabuuan nito.',
                  imageExample: '',
                ),
              },
              'habitat': {
                'Cebuano': Translation(
                  word: 'Puy-anan',
                  definition:
                      'Ang natural nga palibot diin ang usa ka organismo nagpuyo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tirahan',
                  definition:
                      'Ang natural na kapaligiran kung saan nakatira ang isang organismo.',
                  imageExample: '',
                ),
              },
              'survival needs': {
                'Cebuano': Translation(
                  word: 'Panginahanglan sa pagbuhi',
                  definition:
                      'Ang mga butang nga gikinahanglan aron magpadayon sa pagkinabuhi.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pangangailangan para sa kaligtasan',
                  definition: 'Mga bagay na kailangan upang mabuhay.',
                  imageExample: '',
                ),
              },
              'nutrients': {
                'Cebuano': Translation(
                  word: 'Nutrisyon',
                  definition:
                      'Ang mga substansya nga gikinahanglan sa lawas aron mag-function ug magpabilin nga himsog.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Nutrisyon',
                  definition:
                      'Mga sustansiyang kailangan ng katawan upang gumana at manatiling malusog.',
                  imageExample: '',
                ),
              },
              'proteins': {
                'Cebuano': Translation(
                  word: 'Protina',
                  definition:
                      'Mga nutrient nga gikinahanglan sa lawas para sa pagtukod ug pag-ayo sa mga selula.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Protina',
                  definition:
                      'Mga nutrient na kailangan ng katawan para sa pagbuo at pag-aayos ng mga selula.',
                  imageExample: '',
                ),
              },
              'reproduce': {
                'Cebuano': Translation(
                  word: 'Magpadaghan',
                  definition:
                      'Ang proseso sa paghimo og bag-ong mga indibidwal gikan sa mga ginikanan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Magparami',
                  definition:
                      'Ang proseso ng paggawa ng mga bagong indibidwal mula sa mga magulang.',
                  imageExample: '',
                ),
              },
              'herbivores': {
                'Cebuano': Translation(
                  word: 'Mga herbiboro',
                  definition: 'Mga hayop nga nagakaon lamang sa mga tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga halamang pagkain',
                  definition: 'Mga hayop na kumakain lamang ng mga halaman.',
                  imageExample: '',
                ),
              },
              'omnivores': {
                'Cebuano': Translation(
                  word: 'Mga omniboro',
                  definition: 'Mga hayop nga nagakaon sa mga tanom ug karne.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga omniboro',
                  definition:
                      'Mga hayop na kumakain ng parehong halaman at karne.',
                  imageExample: '',
                ),
              },
              'carnivores': {
                'Cebuano': Translation(
                  word: 'Mga karniboro',
                  definition: 'Mga hayop nga nagakaon sa karne.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga karniboro',
                  definition: 'Mga hayop na kumakain ng karne.',
                  imageExample: '',
                ),
              },
              'grinding': {
                'Cebuano': Translation(
                  word: 'Pag-ayo',
                  definition:
                      'Ang proseso sa pagdaug o pagputol sa pagkaon gamit ang mga ngipon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pagdurog',
                  definition:
                      'Ang proseso ng pagdurog o pagputol ng pagkain gamit ang mga ngipin.',
                  imageExample: '',
                ),
              },
              'digestive tracts': {
                'Cebuano': Translation(
                  word: 'Mga bituka',
                  definition:
                      'Ang mga daluyan sa lawas nga nagdala sa pagkaon gikan sa baba hangtod sa tiyan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga bituka',
                  definition:
                      'Ang mga daanan sa katawan na nagdadala ng pagkain mula sa bibig hanggang tiyan.',
                  imageExample: '',
                ),
              },
              'break-down': {
                'Cebuano': Translation(
                  word: 'Pagputol',
                  definition:
                      'Ang proseso sa pagbahin-bahin sa mga butang ngadto sa mas gagmay nga bahin.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pagbabasag',
                  definition:
                      'Ang proseso ng paghahati-hati ng mga bagay sa mas maliliit na bahagi.',
                  imageExample: '',
                ),
              },
              'vegetation': {
                'Cebuano': Translation(
                  word: 'Tanom',
                  definition:
                      'Ang tanan nga mga tanom nga nagatubo sa usa ka dapit.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Vegetasyon',
                  definition:
                      'Lahat ng mga halaman na tumutubo sa isang lugar.',
                  imageExample: '',
                ),
              },
              'prey': {
                'Cebuano': Translation(
                  word: 'Biktima',
                  definition:
                      'Ang hayop nga gipangdakop sa uban nga mga hayop.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Biktima',
                  definition: 'Ang hayop na nahuhuli ng ibang hayop.',
                  imageExample: '',
                ),
              },
              'elephants': {
                'Cebuano': Translation(
                  word: 'Elepante',
                  definition:
                      'Dagkong mga herbiboro nga hayop nga may dagkong mga pangil.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Elepante',
                  definition:
                      'Malalaki at mga herbivorous na hayop na may malalaking pangil.',
                  imageExample: '',
                ),
              },
              'molar': {
                'Cebuano': Translation(
                  word: 'Molars',
                  definition:
                      'Ang mga ngipon nga gigamit sa pag-ayo o pag-usap sa pagkaon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Molar',
                  definition: 'Mga ngipin na ginagamit sa pagdurog ng pagkain.',
                  imageExample: '',
                ),
              },
              'fruit': {
                'Cebuano': Translation(
                  word: 'Prutas',
                  definition: 'Ang bunga sa mga tanom nga sagad gikaon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Prutas',
                  definition:
                      'Ang bunga ng mga halaman na karaniwang kinakain.',
                  imageExample: '',
                ),
              },
              'leaves': {
                'Cebuano': Translation(
                  word: 'Dahon',
                  definition:
                      'Ang bahin sa tanom nga sagad naghatag og oksiheno.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga dahon',
                  definition:
                      'Bahagi ng halaman na karaniwang nagbibigay ng oxygen.',
                  imageExample: '',
                ),
              },
              'bark': {
                'Cebuano': Translation(
                  word: 'Bughaw',
                  definition: 'Ang panit sa kahoy nga nagtabon sa punoan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Balat',
                  definition:
                      'Ang panlabas na bahagi ng puno na tumatakip sa katawan nito.',
                  imageExample: '',
                ),
              },
              'trunks': {
                'Cebuano': Translation(
                  word: 'Puno',
                  definition: 'Ang lawas sa kahoy nga nagdala sa mga sanga.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Puno',
                  definition: 'Ang katawan ng puno na nagdadala ng mga sanga.',
                  imageExample: '',
                ),
              },
              'giraffes': {
                'Cebuano': Translation(
                  word: 'Girafa',
                  definition:
                      'Usa ka taas nga hayop nga may taas nga liog ug nagakaon sa mga dahon sa mga kahoy.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Girafa',
                  definition:
                      'Isang mataas na hayop na may mahabang leeg at kumakain ng mga dahon sa mga puno.',
                  imageExample: '',
                ),
              },
              'branches': {
                'Cebuano': Translation(
                  word: 'Sanga',
                  definition:
                      'Ang mga bahin nga nagatubo gikan sa punoan sa kahoy.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga sanga',
                  definition: 'Mga bahagi na tumutubo mula sa katawan ng puno.',
                  imageExample: '',
                ),
              },
              'cows': {
                'Cebuano': Translation(
                  word: 'Baka',
                  definition: 'Usa ka dako nga hayop nga nagahatag og gatas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Baka',
                  definition: 'Isang malaking hayop na nagbibigay ng gatas.',
                  imageExample: '',
                ),
              },
              'digestive system': {
                'Cebuano': Translation(
                  word: 'Sistema sa pag-digest',
                  definition:
                      'Ang grupo sa mga organo nga nag-apil sa proseso sa pag-digest.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sistemang pantunaw',
                  definition:
                      'Ang grupo ng mga organ na kasangkot sa proseso ng pagtunaw.',
                  imageExample: '',
                ),
              },
              'stomach chambers': {
                'Cebuano': Translation(
                  word: 'Mga sulod sa tiyan',
                  definition:
                      'Ang mga bahin sa tiyan nga nag-apil sa proseso sa pag-digest.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga silid ng tiyan',
                  definition:
                      'Mga bahagi ng tiyan na kasangkot sa proseso ng pagtunaw.',
                  imageExample: '',
                ),
              },
              'cud chewing': {
                'Cebuano': Translation(
                  word: 'Ang Pag-usap ug tarong',
                  definition:
                      'Ang proseso sa pag-nguy-ngoy sa gikaon nga pagkaon nga gipabalik sa baba.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pag-nguy-ngoy ng cud',
                  definition:
                      'Ang proseso ng pag-nguy-ngoy ng pagkain na ibinabalik sa bibig.',
                  imageExample: '',
                ),
              },
              'sharp': {
                'Cebuano': Translation(
                  word: 'Hait',
                  definition: 'Ang pagkamaayo sa pagputol o pag-ayo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Matulis',
                  definition:
                      'Ang katangian ng pagiging mahusay sa pagputol o pagdurog.',
                  imageExample: '',
                ),
              },
              'teeth': {
                'Cebuano': Translation(
                  word: 'Ngipon',
                  definition:
                      'Ang mga bahin sa baba nga gigamit sa pag-ayo sa pagkaon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Ngipin',
                  definition:
                      'Mga bahagi ng bibig na ginagamit sa pagdurog ng pagkain.',
                  imageExample: '',
                ),
              },
              'energy': {
                'Cebuano': Translation(
                  word: 'Enerhiya',
                  definition:
                      'Ang kapasidad sa paghimo og trabaho o kalihokan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Enerhiya',
                  definition: 'Ang kakayahang gumawa ng trabaho o pagkilos.',
                  imageExample: '',
                ),
              },
              'fat': {
                'Cebuano': Translation(
                  word: 'Tambok',
                  definition:
                      'Ang substansya nga nagtigum sa enerhiya sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Taba',
                  definition:
                      'Ang substansya na nag-iimbak ng enerhiya sa katawan.',
                  imageExample: '',
                ),
              },
              'populations': {
                'Cebuano': Translation(
                  word: 'Populasyon',
                  definition:
                      'Ang gidaghanon sa mga indibidwal sa usa ka piho nga dapit.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Populasyon',
                  definition:
                      'Ang bilang ng mga indibidwal sa isang tiyak na lugar.',
                  imageExample: '',
                ),
              },
              'depletion': {
                'Cebuano': Translation(
                  word: 'Pagkawalay',
                  definition: 'Ang pagkunhod o pagkawala sa mga resources.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pagkaubos',
                  definition: 'Ang pagbawas o pagkawala ng mga resources.',
                  imageExample: '',
                ),
              },
              'lion': {
                'Cebuano': Translation(
                  word: 'Leon',
                  definition:
                      'Usa ka dagkong karniboro nga hayop, kasagaran giisip nga hari sa mga hayop.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Leon',
                  definition:
                      'Isang malaking karnivor na hayop, karaniwang itinuturing na hari ng mga hayop.',
                  imageExample: '',
                ),
              },
              'apex predators': {
                'Cebuano': Translation(
                  word: 'Apex nga mga predator',
                  definition: 'Mga hayop nga nahimutang sa taas sa food chain.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Apex na mga mandaragit',
                  definition: 'Mga hayop na nasa tuktok ng food chain.',
                  imageExample: '',
                ),
              },
              'food chain': {
                'Cebuano': Translation(
                  word: 'Kadena sa pagkaon',
                  definition:
                      'Ang pag-ugmad sa mga relasyon sa pagkaon tali sa mga organismo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kadena ng pagkain',
                  definition:
                      'Ang pagbuo ng mga ugnayan sa pagkain sa pagitan ng mga organismo.',
                  imageExample: '',
                ),
              },
              'zebra': {
                'Cebuano': Translation(
                  word: 'Zebra',
                  definition:
                      'Usa ka hayop nga may mga puti ug itom nga guhit.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Zebra',
                  definition: 'Isang hayop na may puti at itim na guhit.',
                  imageExample: '',
                ),
              },
              'antelopes': {
                'Cebuano': Translation(
                  word: 'Antelope',
                  definition: 'Usa ka klase sa mga herbiboro nga hayop.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Antelope',
                  definition: 'Isang uri ng herbivorous na hayop.',
                  imageExample: '',
                ),
              },
              'tigers': {
                'Cebuano': Translation(
                  word: 'Tigre',
                  definition:
                      'Usa ka dagkong karniboro nga hayop nga nagatubo sa mga gubat.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tigre',
                  definition:
                      'Isang malaking karnivor na hayop na nakatira sa mga gubat.',
                  imageExample: '',
                ),
              },
              'hunters': {
                'Cebuano': Translation(
                  word: 'Mangayam',
                  definition: 'Mga tawo o hayop nga nangayam og mga biktima.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mangangaso',
                  definition:
                      'Mga tao o hayop na nangingisda o nanghuhuli ng mga biktima.',
                  imageExample: '',
                ),
              },
              'camouflage': {
                'Cebuano': Translation(
                  word: 'Kamuflaje',
                  definition:
                      'Ang pagtakpan sa kaugalingon aron dili makita sa mga kaaway.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kamuflaje',
                  definition:
                      'Ang pagtatakip sa sarili upang hindi makita ng mga kaaway.',
                  imageExample: '',
                ),
              },
              'adaptable': {
                'Cebuano': Translation(
                  word: 'Madaling maangay',
                  definition:
                      'Ang abilidad sa pag-usab o pag-adjust sa lain-laing mga sitwasyon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Adaptable',
                  definition:
                      'Ang kakayahang magbago o umangkop sa iba\'t ibang sitwasyon.',
                  imageExample: '',
                ),
              },
              'bears': {
                'Cebuano': Translation(
                  word: 'Osong',
                  definition:
                      'Dagkong mga karniboro nga hayop nga kasagaran nagapuyo sa mga gubat.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Oso',
                  definition:
                      'Malalaking karnivor na hayop na karaniwang nakatira sa mga gubat.',
                  imageExample: '',
                ),
              },
              'mixed-diet': {
                'Cebuano': Translation(
                  word: 'Halu-halong pagkaon',
                  definition:
                      'Pagkaon nga naglangkob sa tanang klase sa pagkaon, sama sa tanom ug karne.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Halu-halong pagkain',
                  definition:
                      'Pagkain na binubuo ng iba\'t ibang uri ng pagkain, tulad ng mga halaman at karne.',
                  imageExample: '',
                ),
              },
              'salmon': {
                'Cebuano': Translation(
                  word: 'Salmon',
                  definition: 'Usa ka klase sa isda nga sagad gikaon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salmon',
                  definition: 'Isang uri ng isda na karaniwang kinakain.',
                  imageExample: '',
                ),
              },
              'pigs': {
                'Cebuano': Translation(
                  word: 'Baboy',
                  definition:
                      'Usa ka hayop nga kasagaran gi-breed para sa karne.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Baboy',
                  definition:
                      'Isang hayop na karaniwang pinaaamo para sa karne.',
                  imageExample: '',
                ),
              },
              'insects': {
                'Cebuano': Translation(
                  word: 'Insekto',
                  definition:
                      'Gamay nga mga hayop nga kasagaran adunay mga pakpak.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Insekto',
                  definition:
                      'Maliit na mga hayop na karaniwang may mga pakpak.',
                  imageExample: '',
                ),
              },
              'environment': {
                'Cebuano': Translation(
                  word: 'Palibot',
                  definition:
                      'Ang kinatibuk-ang kahimtang o lugar nga nakapalibot sa usa ka organismo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kapaligiran',
                  definition:
                      'Ang kabuuang kalagayan o lugar na nakapaligid sa isang organismo.',
                  imageExample: '',
                ),
              },
            },
          ),
        ],
      ),
      Units(
        title: "Food Chains",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Food chains"),
        ],
        bookContent: [
          Book(
            content: "food_chain_mod1.pdf",
            moduleName: "Food chains",
            translations: {
              "linear": {
                "Cebuano": Translation(
                    word: "Tul-id nga linya",
                    definition: "Tuwid nga linya.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Linear",
                    definition: "Tuwid na linya.",
                    imageExample: '')
              },
              "autotrophs": {
                "Cebuano": Translation(
                    word: "Autotrophs",
                    definition:
                        "Paghimo og pagkaon pinaagi sa paggamit sa enerhiya sa adlaw.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Autotrophs",
                    definition:
                        "Gumawa ng pagkain sa pamamagitan ng paggamit ng enerhiya ng araw.",
                    imageExample: '')
              },
              "heterotrophs": {
                "Cebuano": Translation(
                    word: "Heterotrophs",
                    definition:
                        "Dili makahimo sa ilang kaugalingon nga pagkaon ug kinahanglan nga magsalig sa mga tanum ug hayop aron mabuhi.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Heterotrophs",
                    definition:
                        "Hindi maaaring gumawa ng kanilang sariling pagkain at dapat umasa sa mga halaman at hayop para sa pagkakaroon.",
                    imageExample: '')
              },
              "ecosystem": {
                "Cebuano": Translation(
                    word: "Ecosystem",
                    definition:
                        "Usa ka komunidad sa mga organismo ug sa ilang pisikal nga palibot nga nag-interact.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Ecosystem",
                    definition:
                        "Isang komunidad ng mga organismo at ang kanilang pisikal na kapaligiran na magkakasamang nakikipag-ugnayan.",
                    imageExample: '')
              },
              "community": {
                "Cebuano": Translation(
                    word: "Komunidad",
                    definition:
                        "Usa ka interakting nga grupo sa lain-laing mga espisye sa usa ka komon nga lokasyon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Komunidad",
                    definition:
                        "Isang nakikipag-ugnayang grupo ng iba't ibang uri ng hayop o halaman sa isang karaniwang lokasyon.",
                    imageExample: '')
              },
              "food chain": {
                "Cebuano": Translation(
                    word: "Food Chain",
                    definition:
                        "Ang proseso sa pagpakaon nga nagsugod sa mga prodyuser ug natapos sa pinakadako nga konsumidor.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Food Chain",
                    definition:
                        "Ang proseso ng pagpapakain na nagsisimula sa mga producer at nagtatapos sa pinakamalaking consumer.",
                    imageExample: '')
              },
              "sun": {
                "Cebuano": Translation(
                    word: "Adlaw",
                    definition:
                        "Panguna nga tinubdan sa enerhiya sa usa ka komunidad.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Araw",
                    definition:
                        "Pangunahing pinagmumulan ng enerhiya sa isang komunidad.",
                    imageExample: '')
              },
              "photosynthesis": {
                "Cebuano": Translation(
                    word: "Photosynthesis",
                    definition:
                        "Ang mga tanom naggamit sa kahayag sa adlaw, carbon dioxide, ug tubig sa pagpatunghag og pagkaon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Photosynthesis",
                    definition:
                        "Ang mga halaman ay gumagamit ng sikat ng araw, carbon dioxide, at tubig upang makagawa ng pagkain.",
                    imageExample: '')
              },
              "producers": {
                "Cebuano": Translation(
                    word: "Prodyuser",
                    definition:
                        "Ang mga tanom makamugna ug makagama sa ilang kaugalingong enerhiya.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Prodyuser",
                    definition:
                        "Ang mga halaman ay maaaring lumikha at gumawa ng kanilang sariling enerhiya.",
                    imageExample: '')
              },
              "consumers": {
                "Cebuano": Translation(
                    word: "Konsumidor",
                    definition:
                        "Ang mga mananap nagsalig sa mga tanom ug ubang mga mananap aron mabuhit tungod kay dili sila makahimo sa ilang kaugalingon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Konsumidor",
                    definition:
                        "Ang mga hayop ay umaasa sa mga halaman at ibang mga hayop para mabuhay dahil hindi sila makakalikha ng kanilang sarili.",
                    imageExample: '')
              },
              "tropic levels": {
                "Cebuano": Translation(
                    word: "Lebel sa Tropiko",
                    definition:
                        "Lain-laing mga posisyon sa pagpakaon sulod sa food chain o web.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Antas ng Tropiko",
                    definition:
                        "Sumangguni sa iba't ibang posisyon ng pagpapakain sa loob ng food chain o web.",
                    imageExample: '')
              },
              "food web": {
                "Cebuano": Translation(
                    word: "Food Web",
                    definition:
                        "Usa ka komplikado nga network sa nagdugtong ug nagsapaw nga mga food chains nga nagpakita sa mga relasyon sa pagpakaon sulod sa usa ka komunidad.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Food Web",
                    definition:
                        "Isang kumplikadong network ng magkakaugnay at magkakapatong na mga food chains na nagpapakita ng mga relasyon sa pagpapakain sa loob ng isang komunidad.",
                    imageExample: '')
              },
              "biomass": {
                "Cebuano": Translation(
                    word: "Biomass",
                    definition:
                        "Gihubitingon ang kinatibuk-ang masa sa mga organismo sa gihatag nga lebel sa trophic.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Biomass",
                    definition:
                        "Tinukoy bilang kabuuang masa ng mga organismo sa isang partikular na antas ng trophic.",
                    imageExample: '')
              },
              "decomposers": {
                "Cebuano": Translation(
                    word: "Decomposers",
                    definition:
                        "Pagpaubos sa mga elemento nga makita sa patay nga mga binuhat ug basura sa tanan nga lebel sa trophic.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Decomposers",
                    definition:
                        "Nagpapababa ng mga elemento na matatagpuan sa mga patay na nilalang at basura sa lahat ng antas ng tropiko.",
                    imageExample: '')
              },
              "detritivores": {
                "Cebuano": Translation(
                    word: "Dentritivores",
                    definition:
                        "Usa ka hayop nga mokaon sa patay nga organikong materyal.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Dentritivores",
                    definition:
                        "Isang hayop na kumakain ng patay na organikong materyal.",
                    imageExample: '')
              },
              "saprotrophs": {
                "Cebuano": Translation(
                    word: "Saprotrophs",
                    definition:
                        "Ang mga organismo nga nagkuha sa ilang pagkaon gikan sa mga patay nga nagkadunot nga mga hayop o tanum.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Saprotrophs",
                    definition:
                        "Ang mga organismo na kumukuha ng kanilang pagkain mula sa mga patay na nabubulok na hayop o halaman.",
                    imageExample: '')
              },
              "living organisms": {
                "Cebuano": Translation(
                    word: "Buhi nga mga Organismo",
                    definition: "Bisan unsa nga adunay kinabuhi.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Mga Buhay na Organismo",
                    definition: "Anumang bagay na may buhay.",
                    imageExample: '')
              },
              "energy": {
                "Cebuano": Translation(
                    word: "Kusog",
                    definition:
                        "Nakabig ngadto sa lain-laing mga porma aron mabuhi, motubo, motubag sa stimuli, ug mosanay.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Enerhiya",
                    definition:
                        "Na-convert sa iba’t ibang anyo upang mabuhay, lumago, tumugon sa stimuli, at magparami.",
                    imageExample: '')
              },
              "grow": {
                "Cebuano": Translation(
                    word: "Motubo",
                    definition:
                        "Aron madugangan pinaagi sa natural nga pag-uswag, sama sa bisan unsang buhi nga organismo o bahin pinaagi sa asimilasyon sa nutrisyon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Lumaki",
                    definition:
                        "Upang madagdagan sa pamamagitan ng natural na pag-unlad, tulad ng anumang buhay na organismo o bahagi sa pamamagitan ng asimilasyon ng nutrisyon.",
                    imageExample: '')
              },
              "breathe": {
                "Cebuano": Translation(
                    word: "Pagginhawa",
                    definition:
                        "Sa pagkuha sa hangin, oksiheno, ug uban pa, ngadto sa mga baga ug ipagawas kini; inhale ug exhale.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Huminga",
                    definition:
                        "Upang kumuha ng hangin, oxygen, atbp., sa mga baga at paalisin ito; huminga at huminga.",
                    imageExample: '')
              },
              "reproduce": {
                "Cebuano": Translation(
                    word: "Pagdaghan",
                    definition:
                        "Aron makahimo usa ka kopya sa usa ka butang, o aron makopya sa usa ka proseso sa produksiyon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Magparami",
                    definition:
                        "Upang makagawa ng isang kopya ng isang bagay, o upang makopya sa isang proseso ng produksyon.",
                    imageExample: '')
              },
              "biosphere": {
                "Cebuano": Translation(
                    word: "Biosphere",
                    definition:
                        "Ang rehiyon sa yuta nga naglangkob sa tanang buhing organismo: tanom, mananap ug bakterya.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Biosphere",
                    definition:
                        "Ang rehiyon ng daigdig na sumasaklaw sa lahat ng nabubuhay na organismo: halaman, hayop at bakterya.",
                    imageExample: '')
              },
              "earth": {
                "Cebuano": Translation(
                    word: "Yuta",
                    definition:
                        "Ang ikatulo nga planeta gikan sa Adlaw, ug ang ikalima nga kinadak-ang planeta. Kini lamang ang dapit nga atong nahibaloan nga gipuy-an sa buhing mga butang.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Lupa",
                    definition:
                        "Ang ikatlong planeta mula sa Araw, at ang ikalimang pinakamalaking planeta. Ito ang tanging lugar na alam nating tinitirhan ng mga buhay na bagay.",
                    imageExample: '')
              },
              "organisms": {
                "Cebuano": Translation(
                    word: "Organismo",
                    definition:
                        "Usa ka indibidwal nga mananap, tanom, o single-celled nga porma sa kinabuhi.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Organismo",
                    definition:
                        "Isang indibidwal na hayop, halaman, o single-celled na anyo ng buhay.",
                    imageExample: '')
              },
              "plants": {
                "Cebuano": Translation(
                    word: "Tanom",
                    definition:
                        "Usa ka buhing butang nga mitubo sa yuta ug adunay tukog, dahon, ug gamot.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Halaman",
                    definition:
                        "Isang buhay na bagay na tumutubo sa lupa at may tangkay, dahon, at ugat.",
                    imageExample: '')
              },
              "carbon dioxide": {
                "Cebuano": Translation(
                    word: "Carbon Dioxide",
                    definition:
                        "Usa ka walay baho, walay kolor nga gas. Kini usa ka hugaw nga produkto nga gihimo sa imong lawas kung kini naggamit sa pagkaon alang sa enerhiya.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Carbon Dioxide",
                    definition:
                        "Isang walang amoy, walang kulay na gas. Ito ay isang basura na ginagawa ng iyong katawan kapag ito ay gumagamit ng pagkain para sa enerhiya.",
                    imageExample: '')
              },
              "water": {
                "Cebuano": Translation(
                    word: "Tubig",
                    definition:
                        "Ang tin-aw nga likido nga walay kolor, lami, o baho, nga nahulog gikan sa mga panganod ingon nga ulan, nga nagporma sa mga sapa, lanaw, ug dagat, ug kana gigamit sa pag-inom, paghugas, ug uban pa.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Tubig",
                    definition:
                        "Ang malinaw na likido na walang kulay, lasa, o amoy, na bumabagsak mula sa mga ulap bilang ulan, na bumubuo ng mga batis, lawa, at dagat, at ginagamit sa pag-inom, paglalaba, atbp.",
                    imageExample: '')
              },
              "absorbs": {
                "Cebuano": Translation(
                    word: "Mosuhop",
                    definition: "Para masuyop kini o kuhaon.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Sumisipsip",
                    definition: "Upang ibabad ito o kunin ito.",
                    imageExample: '')
              },
              "first-order": {
                "Cebuano": Translation(
                    word: "Una nga han-ay o panguna",
                    definition:
                        "Kaon sa mga prodyuser sama sa mga tanum, lumot ug bakterya.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "First-order o pangunahin",
                    definition:
                        "Kumain ng mga prodyuser tulad ng mga halaman, algae at bacteria.",
                    imageExample: '')
              },
              "second-order": {
                "Cebuano": Translation(
                    word: "Second-order o sekondarya",
                    definition:
                        "Ang mga organismo nga mokaon sa panguna nga mga konsumedor mao ang mga tigkaon sa karne.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Pangalawang-order o pangalawa",
                    definition:
                        "Ang mga organismo na kumakain ng pangunahing mamimili ay mga kumakain ng karne.",
                    imageExample: '')
              },
              "third-order": {
                "Cebuano": Translation(
                    word: "Third-order o tertiary",
                    definition:
                        "Kadtong mokaon sa sekondaryang mga konsumidor (dagko nga mga manunukob).",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Third-order o tersiyaryo",
                    definition:
                        "Ang mga kumakain ng pangalawang mamimili (malaking mandaragit).",
                    imageExample: '')
              },
              "fourth-order": {
                "Cebuano": Translation(
                    word: "Fourth-order o quaternary",
                    definition:
                        "Nanguna nga mga manunukob sa sulod sa palibot, ug gikaon nila ang mga tertiary nga mga konsumidor.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Ikaupat nga han-ay o quaternary",
                    definition:
                        "Nangungunang mga mandaragit sa loob ng kapaligiran, at kinakain nila ang mga tertiary consumer.",
                    imageExample: '')
              },
              "mass": {
                "Cebuano": Translation(
                    word: "Gidaghanon",
                    definition:
                        "Ang gidaghanon sa butang o substansiya nga naglangkob sa usa ka butang o lawas.",
                    imageExample: ''),
                "Filipino": Translation(
                    word: "Dami",
                    definition:
                        "Ang dami ng matter o substance na bumubuo sa isang bagay o katawan.",
                    imageExample: '')
              }
            },
          ),
        ],
      ),
    ];
  }

  Future<bool> isModuleCompleted(String moduleName) async {
    final prefs = await SharedPreferences.getInstance();
    final translatedWords = prefs.getStringList(moduleName) ?? [];

    // Get the total words from the module
    final units = getUnits();
    final book = units.expand((unit) => unit.bookContent).firstWhere(
          (book) => book.moduleName == moduleName,
        );

    if (book == null) return false;

    final totalWords = book.translations.keys.toSet();
    final translatedCount =
        translatedWords.toSet().intersection(totalWords).length;

    return translatedCount > translatedCount - 10;
  }

  Future<void> markWordCompleted(String moduleName, String word) async {
    final prefs = await SharedPreferences.getInstance();
    final completedWords =
        prefs.getStringList('$moduleName-completedWords') ?? [];
    if (!completedWords.contains(word)) {
      completedWords.add(word);
      await prefs.setStringList('$moduleName-completedWords', completedWords);
    }
  }
}
