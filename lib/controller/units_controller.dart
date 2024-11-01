import 'package:scimet/model/modules.dart';

import '../model/book.dart';
import '../model/translation.dart';
import '../model/units.dart';

class UnitsController {
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
                  definition: 'Usa ka lugar nga kulang kaayo ang tubig ug kasagaran init',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tuyong Kapaligiran',
                  definition: 'Isang lugar na may napakakaunting tubig at madalas na mainit.',
                  imageExample: '',
                ),
              },
              'living things': {
                'Cebuano': Translation(
                  word: 'Buhi nga mga butang',
                  definition: 'Bisan unsang organismo o porma sa kinabuhi nga nag pakita nga buhi kini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga bagay na may buhay',
                  definition: 'Anumang organismo o anyo ng buhay na nagtataglay o nagpapakita ng mga katangian ng buhay o pagiging buhay.',
                  imageExample: '',
                ),
              },
              'living organisms': {
                'Cebuano': Translation(
                  word: 'Buhi nga mga butang',
                  definition: 'Bisan unsang organismo o porma sa kinabuhi nga nag pakita nga buhi kini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga bagay na may buhay',
                  definition: 'Anumang organismo o anyo ng buhay na nagtataglay o nagpapakita ng mga katangian ng buhay o pagiging buhay.',
                  imageExample: '',
                ),
              },
              'loose soil': {
                'Cebuano': Translation(
                  word: 'Luag nga Yuta',
                  definition: 'Yuta nga sayon hukayon ug masudlan sa tubig ug hangin, nga importante sa pagtub',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Maluwag na Lupa',
                  definition: 'Lupa na madaling huhukayin at pinapasukan ng tubig at hangin, na mahalaga para sa paglaki ng halaman.',
                  imageExample: '',
                ),
              },
              'photosynthesis': {
                'Cebuano': Translation(
                  word: 'Photosynthesis',
                  definition: 'Ang proseso diin gamiton sa mga tanom ang kahayag sa adlaw aron maghimo ug pagkaon gikan sa tubig ug carbon dioxide.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Photosynthesis',
                  definition: 'Ang proseso kung saan ginagamit ng mga halaman ang liwanag ng araw upang makagawa ng pagkain mula sa tubig at carbon dioxide.',
                  imageExample: '',
                ),
              },
              'phloem': {
                'Cebuano': Translation(
                  word: 'Phloem',
                  definition: 'Mga tubo sa sulod sa tanom nga nagdala sa pagkaon gikan sa mga dahon padulong sa uban nga bahin sa tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Phloem',
                  definition: 'Mga tubo sa loob ng halaman na nagdadala ng pagkain mula sa mga dahon patungo sa ibang bahagi ng halaman.',
                  imageExample: '',
                ),
              },

              'stomata': {
                'Cebuano': Translation(
                  word: 'Stomata',
                  definition: 'Gagmay nga mga lungag sa dahon sa tanom nga nagkontrol sa pagsulod ug pagpagawas sa gas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Stomata',
                  definition: 'Maliit na mga butas sa dahon ng halaman na nagkokontrol ng pagpasok at paglabas ng gas.',
                  imageExample: '',
                ),
              },

              'sunlight': {
                'Cebuano': Translation(
                  word: 'Sidlak sa Adlaw',
                  definition: 'Ang kahayag nga gikan sa adlaw nga importante para sa photosynthesis sa mga tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sikat ng Araw',
                  definition: 'Ang liwanag na nagmumula sa araw na mahalaga para sa photosynthesis ng mga halaman.',
                  imageExample: '',
                ),
              },

              'tissues': {
                'Cebuano': Translation(
                  word: 'Mga Tisyu',
                  definition: 'Mga grupo sa mga selula sa sulod sa tanom nga adunay parehas nga buluhaton.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mga Tisyu',
                  definition: 'Mga grupo ng mga selula sa loob ng halaman na may parehong tungkulin.',
                  imageExample: '',
                ),
              },

              'uproot': {
                'Cebuano': Translation(
                  word: 'Ibot',
                  definition: 'Ang paglihok sa pagkuha sa tanom gikan sa yuta uban sa mga gamot.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mabunot',
                  definition: 'Ang pagkilos ng pag-alis ng halaman mula sa lupa kasama ang mga ugat.',
                  imageExample: '',
                ),
              },
              'uprooted': {
                'Cebuano': Translation(
                  word: 'Ibot',
                  definition: 'Ang paglihok sa pagkuha sa tanom gikan sa yuta uban sa mga gamot.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mabunot',
                  definition: 'Ang pagkilos ng pag-alis ng halaman mula sa lupa kasama ang mga ugat.',
                  imageExample: '',
                ),
              },
              'root': {
                'Cebuano': Translation(
                  word: 'Ibot',
                  definition: 'Ang paglihok sa pagkuha sa tanom gikan sa yuta uban sa mga gamot.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mabunot',
                  definition: 'Ang pagkilos ng pag-alis ng halaman mula sa lupa kasama ang mga ugat.',
                  imageExample: '',
                ),
              },
              'roots': {
                'Cebuano': Translation(
                  word: 'Ibot',
                  definition: 'Ang paglihok sa pagkuha sa tanom gikan sa yuta uban sa mga gamot.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Mabunot',
                  definition: 'Ang pagkilos ng pag-alis ng halaman mula sa lupa kasama ang mga ugat.',
                  imageExample: '',
                ),
              },

              'xylem': {
                'Cebuano': Translation(
                  word: 'Xylem',
                  definition: 'Mga tubo sa sulod sa tanom nga nagdala sa tubig ug mineral gikan sa mga gamot paingon sa lain-laing bahin sa tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Xylem',
                  definition: 'Mga tubo sa loob ng halaman na nagdadala ng tubig at mineral mula sa mga ugat patungo sa iba’t ibang bahagi ng halaman.',
                  imageExample: '',
                ),
              },

              'gas exchange': {
                'Cebuano': Translation(
                  word: 'Pag-ilis sa Gas',
                  definition: 'Ang proseso diin mag-ilis ug oxygen ug carbon dioxide ang mga tanom.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Palitan ng Gas',
                  definition: 'Ang proseso kung saan nagpapalitan ng oxygen at carbon dioxide ang mga halaman.',
                  imageExample: '',
                ),
              },

              'pollinators': {
                'Cebuano': Translation(
                  word: 'Pollinators',
                  definition: 'Mga hayop o insekto nga motabang sa pagbalhin sa polen gikan sa usa ka bulak ngadto sa lain aron makabuhat ug mga bunga ug liso.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Pollinators',
                  definition: 'Mga hayop o insekto na tumutulong sa paglipat ng polen mula sa isang bulaklak patungo sa iba upang makabuo ng mga prutas at buto.',
                  imageExample: '',
                ),
              },

              'fruit-bearing': {
                'Cebuano': Translation(
                  word: 'Namungang Puno',
                  definition: 'Mga puno nga namunga ug mga prutas nga mahimo kan-on.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Namumungang Puno',
                  definition: 'Mga puno na nagbubunga ng mga prutas na maaaring kainin.',
                  imageExample: '',
                ),
              },

              'shelter': {
                'Cebuano': Translation(
                  word: 'Silungan',
                  definition: 'Usa ka lugar nga naghatag proteksyon gikan sa daotang panahon o katalagman.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Silungan',
                  definition: 'Isang lugar na nagbibigay proteksyon mula sa masamang panahon o panganib.',
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
                  definition: 'Ang lugar diin nagtagbo ang duha o labaw pa ka mga bukog, nga nagtugot sa paglihok.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kasukasuan',
                  definition: 'Ang lugar kung saan nagtatagpo ang dalawa o higit pang buto, na nagpapahintulot ng paggalaw.',
                  imageExample: '',
                ),
              },
              'tendons': {
                'Cebuano': Translation(
                  word: 'Ugat',
                  definition: 'Ang mga hilo nga nagdugtong sa mga kaunoran sa mga bukog.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Litid',
                  definition: 'Ang mga hibla na nagdurugtong sa mga kalamnan sa mga buto.',
                  imageExample: '',
                ),
              },
              'muscle': {
                'Cebuano': Translation(
                  word: 'Kaunoran',
                  definition: 'Mga parte sa lawas nga motabang sa paglihok ug suporta.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kalamnan',
                  definition: 'Mga parte ng katawan na tumutulong sa paggalaw at suporta.',
                  imageExample: '',
                ),
              },
              'pulse rate': {
                'Cebuano': Translation(
                  word: 'Kusog sa Pulso',
                  definition: 'Ang gidaghanon sa pagtibok sa kasingkasing sulod sa usa ka minuto.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bilis ng Pulso',
                  definition: 'Ang bilang ng tibok ng puso sa loob ng isang minuto.',
                  imageExample: '',
                ),
              },
              'abdominal': {
                'Cebuano': Translation(
                  word: 'Tiyan',
                  definition: 'Ang tiyan mao ang bahin sa lawas sa ubos sa dughan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tiyan',
                  definition: 'Ang tiyan ay bahagi ng katawan sa ibabang bahagi ng dibdib.',
                  imageExample: '',
                ),
              },
              'air sacs': {
                'Cebuano': Translation(
                  word: 'Air Sac',
                  definition: 'Air Sac mao ang gagmay nga yunit sa sulod sa baga diin mahitabo ang pag-ilis sa oxygen ug carbon dioxide.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Air Sac',
                  definition: 'Air Sac ay mga maliliit na yunit sa loob ng baga kung saan nagaganap ang palitan ng oxygen at carbon dioxide.',
                  imageExample: '',
                ),
              },
              'anus': {
                'Cebuano': Translation(
                  word: 'Lubot',
                  definition: 'Lubot - mao ang lungag sa tumoy sa tinai diin mogawas ang hugaw sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Puwit',
                  definition: 'Ang puwit ay ang butas sa dulo ng bituka kung saan lumalabas ang dumi ng katawan.',
                  imageExample: '',
                ),
              },
              'backbones': {
                'Cebuano': Translation(
                  word: 'Bukog sa likod',
                  definition: 'Mao ang mga bukog nga naglangkob sa unod-unod nga naghatag suporta sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Buto sa likod',
                  definition: 'Ang mga butong bumubuo sa gulugod na nagbibigay suporta sa katawan.',
                  imageExample: '',
                ),
              },
              'blood': {
                'Cebuano': Translation(
                  word: 'Dugo',
                  definition: 'Mao ang likido nga nagdagan sa mga ugat ug nagdala sa oxygen ug nutrisyon ngadto sa lain-laing bahin sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Dugo',
                  definition: "Ang likido na dumadaloy sa mga ugat at nagdadala ng oxygen at nutrisyon sa iba't ibang bahagi ng katawan.",
                imageExample: '',
                ),
              },
              'blood cells': {
                'Cebuano': Translation(
                  word: 'Selula sa dugo',
                  definition: 'Mao ang gagmay nga yunit sa dugo nga adunay lain-laing mga buluhaton sama sa pagdala sa oxygen, pakig-away sa impeksyon, ug pagtabang sa pag-umol sa dugo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Selula ng dugo',
                  definition: "Mga maliliit na yunit sa dugo na may iba't ibang tungkulin tulad ng pagdadala ng oxygen, labanan ang impeksyon, at pagtulong sa pamumuo ng dugo.",
                imageExample: '',
                ),
              },
              'blood stream': {
                'Cebuano': Translation(
                  word: 'Daloy sa dugo',
                  definition: 'Mao ang pagdagan sa dugo sa sulod sa mga ugat sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Daloy ng dugo',
                  definition: 'Ang pagdaloy ng dugo sa loob ng mga ugat sa katawan.',
                  imageExample: '',
                ),
              },
              'bone': {
                'Cebuano': Translation(
                  word: 'Bukog',
                  definition: 'Mao ang lig-on nga bahin sa lawas nga naglangkob sa kalansay ug naghatag suporta ug proteksyon sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Buto',
                  definition: 'Buto ay matitigas na bahagi ng katawan na bumubuo sa kalansay at nagbibigay suporta at proteksyon sa katawan.',
                  imageExample: '',
                ),
              },
              'bone marrow': {
                'Cebuano': Translation(
                  word: 'Uyok',
                  definition: 'Ang uyok mao ang malumo nga bahin sa sulod sa bukog diin gihimo ang mga selula sa dugo.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Utak ng buto',
                  definition: 'Ang utak ng buto ay ang malambot na bahagi sa loob ng buto kung saan ginagawa ang mga selula ng dugo.',
                  imageExample: '',
                ),
              },
              'calcium': {
                'Cebuano': Translation(
                  word: 'Kalsiyum',
                  definition: 'Usa ka mineral nga importante alang sa kusog sa bukog ug ngipon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Kaltsyum',
                  definition: 'Isang mineral na mahalaga para sa kalakasan ng buto at ngipin.',
                  imageExample: '',
                ),
              },
              'carbon dioxide': {
                'Cebuano': Translation(
                  word: 'Carbon Dioxide',
                  definition: 'Usa ka gas nga gipagawas sa lawas ingon nga byproduct sa pagginhawa.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Carbon Dioxide',
                  definition: 'Isang gas na inilalabas ng katawan bilang byproduct ng paghinga.',
                  imageExample: '',
                ),
              },
              'cardiac muscles': {
                'Cebuano': Translation(
                  word: 'Kaunoran sa Kasingkasing',
                  definition: 'Espesyal nga klase sa kaunoran nga naglangkob sa kasingkasing.',
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
                  definition: 'Ang paglihok sa pagdugmok sa pagkaon gamit ang ngipon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Ngumuya',
                  definition: 'Ang pagkilos ng pagdurog ng pagkain gamit ang ngipin.',
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
                  definition: 'Ang proseso sa pagtunaw sa pagkaon aron magamit sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tunawin',
                  definition: 'Ang proseso ng pagtunaw ng pagkain upang magamit ng katawan.',
                  imageExample: '',
                ),
              },
              'digestive system': {
                'Cebuano': Translation(
                  word: 'Sistema sa Pagtunaw',
                  definition: 'Ang sistema nga naglakip sa tanan nga mga organo nga nagtabang sa pagtunaw sa pagkaon.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sistema ng Pagtunaw',
                  definition: 'Ang sistemang kinabibilangan ng lahat ng mga organ na tumutulong sa pagtunaw ng pagkain.',
                  imageExample: '',
                ),
              },
              'esophagus': {
                'Cebuano': Translation(
                  word: 'Esophagus',
                  definition: 'Ang tubo nga nagdala sa pagkaon gikan sa baba ngadto sa tiyan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Esophagus',
                  definition: 'Ang tubo na nagdadala ng pagkain mula sa bibig patungo sa tiyan.',
                  imageExample: '',
                ),
              },
              'exhale': {
                'Cebuano': Translation(
                  word: 'Pagpagawas',
                  definition: 'Ang proseso sa pagpagawas sa hangin gikan sa baga.',
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
                  definition: 'Ang pinakamadako nga bukog sa lawas, nagdugtong sa balakang ngadto sa tuhod.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Femur',
                  definition: 'Ang pinakamalaking buto sa katawan, na nag-uugnay sa balakang sa tuhod.',
                  imageExample: '',
                ),
              },
              'gallbladder': {
                'Cebuano': Translation(
                  word: 'Gallbladder',
                  definition: 'Ang organo nga nagtipig sa apdo nga gigamit sa pag-digest sa tambok.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Gallbladder',
                  definition: 'Ang organ na nag-iimbak ng apdo na ginagamit sa pagtunaw ng taba.',
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
                  definition: 'Ang lugar kung saan nagtatagpo ang esophagus at tiyan.',
                  imageExample: '',
                ),
              },
              'gastrointestinal': {
                'Cebuano': Translation(
                  word: 'Gastrointestinal',
                  definition: 'Naglakip sa tanan nga mga bahin sa sistema sa pagtunaw.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Gastrointestinal',
                  definition: 'Kabilang ang lahat ng mga bahagi ng sistema ng pagtunaw.',
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
                  definition: 'Ang organ na nagpapaikot ng dugo sa buong katawan.',
                  imageExample: '',
                ),
              },
              'hip': {
                'Cebuano': Translation(
                  word: 'Hita',
                  definition: 'Ang bahin sa lawas nga nagdugtong sa mga paa sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Hita',
                  definition: 'Ang bahagi ng katawan na nag-uugnay sa mga binti sa katawan.',
                  imageExample: '',
                ),
              },
              'hormones': {
                'Cebuano': Translation(
                  word: 'Hormones',
                  definition: 'Mga kemikal nga nagkontrol sa daghang mga proseso sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Hormones',
                  definition: 'Mga kemikal na kumokontrol sa maraming proseso sa katawan.',
                  imageExample: '',
                ),
              },
              'immune system': {
                'Cebuano': Translation(
                  word: 'Sistema sa Immuno',
                  definition: 'Ang sistema nga nagtabang sa lawas sa pagbatok sa mga sakit.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sistema ng Immune',
                  definition: 'Ang sistemang tumutulong sa katawan na labanan ang mga sakit.',
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
                  definition: 'Ang bahin sa sistema sa pagtunaw nga nagproseso sa pagkaon human ma-digest.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bituka',
                  definition: 'Ang bahagi ng sistema ng pagtunaw na nagpoproseso ng pagkain pagkatapos ma-digest.',
                  imageExample: '',
                ),
              },
              'kidney': {
                'Cebuano': Translation(
                  word: 'Bato',
                  definition: 'Ang organo nga nagtabang sa pag-filter sa dugo ug paghimo sa ihi.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bato',
                  definition: 'Ang organ na tumutulong sa pag-filter ng dugo at paggawa ng ihi.',
                  imageExample: '',
                ),
              },
              'ligament': {
                'Cebuano': Translation(
                  word: 'Ligament',
                  definition: 'Mga hilo nga nagdugtong sa mga bukog sa mga kasukasuan.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Ligament',
                  definition: 'Mga hibla na nagdurugtong sa mga buto sa mga kasukasuan.',
                  imageExample: '',
                ),
              },
              'liver': {
                'Cebuano': Translation(
                  word: 'Atay',
                  definition: 'Ang organo nga nagproseso sa mga nutrisyon ug nagtabang sa detoxification.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Atay',
                  definition: 'Ang organ na nagpoproseso ng mga nutrisyon at tumutulong sa detoxification.',
                  imageExample: '',
                ),
              },
              'lungs': {
                'Cebuano': Translation(
                  word: 'Baga',
                  definition: 'Ang mga organo nga nagresponsable sa pagkuha sa oxygen ug pagpagawas sa carbon dioxide.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Baga',
                  definition: 'Ang mga organ na responsable sa pagkuha ng oxygen at paglabas ng carbon dioxide.',
                  imageExample: '',
                ),
              },
              'metabolism': {
                'Cebuano': Translation(
                  word: 'Metabolismo',
                  definition: 'Ang proseso sa pagbag-o sa pagkaon ngadto sa enerhiya sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Metabolismo',
                  definition: 'Ang proseso ng pagbabago ng pagkain sa enerhiya ng katawan.',
                  imageExample: '',
                ),
              },
              'nerve': {
                'Cebuano': Translation(
                  word: 'Nerve',
                  definition: 'Mga fiber nga nagdala sa mga signal gikan sa utok ngadto sa ubang bahin sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Nerve',
                  definition: 'Mga hibla na nagdadala ng mga signal mula sa utak patungo sa ibang bahagi ng katawan.',
                  imageExample: '',
                ),
              },
              'nerves': {
                'Cebuano': Translation(
                  word: 'Nerves',
                  definition: 'Mga fiber nga nagdala sa mga signal gikan sa utok ngadto sa ubang bahin sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Nerve',
                  definition: 'Mga hibla na nagdadala ng mga signal mula sa utak patungo sa ibang bahagi ng katawan.',
                  imageExample: '',
                ),
              },
              'organ': {
                'Cebuano': Translation(
                  word: 'Organ',
                  definition: 'Mga bahin sa lawas nga adunay piho nga function.',
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
                  definition: 'Ang organo nga nagprodyus sa insulin ug uban pang mga enzyme.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Siyudad',
                  definition: 'Ang organ na nagprodyus ng insulin at iba pang mga enzyme.',
                  imageExample: '',
                ),
              },
              'protein': {
                'Cebuano': Translation(
                  word: 'Protein',
                  definition: 'Mga molecule nga importante alang sa pagtukod ug pagmentinar sa mga selula.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Protina',
                  definition: 'Mga molecule na mahalaga para sa pagbuo at pagpapanatili ng mga selula.',
                  imageExample: '',
                ),
              },
              'respiratory system': {
                'Cebuano': Translation(
                  word: 'Sistema sa Respiratory',
                  definition: 'Ang sistema nga nagkuha ug nagpagawas sa hangin.',
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
                  definition: 'Ang estruktura nga naghatag ug suporta ug porma sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bangkay',
                  definition: 'Ang estruktura na nagbibigay suporta at anyo sa katawan.',
                  imageExample: '',
                ),
              },
              'spleen': {
                'Cebuano': Translation(
                  word: 'Spleen',
                  definition: 'Ang organo nga nagtabang sa pag-filter sa dugo ug nag-apud-apud sa mga immune cells.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Spleen',
                  definition: 'Ang organ na tumutulong sa pag-filter ng dugo at nag-aalaga ng mga immune cells.',
                  imageExample: '',
                ),
              },
              'stomach': {
                'Cebuano': Translation(
                  word: 'Tiyan',
                  definition: 'Ang organo nga nagdawat sa pagkaon ug nagtabang sa pag-digest niini.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tiyan',
                  definition: 'Ang organ na tumatanggap ng pagkain at tumutulong sa pagtunaw nito.',
                  imageExample: '',
                ),
              },
              'tissue': {
                'Cebuano': Translation(
                  word: 'Tissue',
                  definition: 'Mga grupo sa mga selula nga adunay parehas nga function.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Tissue',
                  definition: 'Mga grupo ng mga selula na may parehong function.',
                  imageExample: '',
                ),
              },
              'trachea': {
                'Cebuano': Translation(
                  word: 'Trachea',
                  definition: 'Ang tubo nga nagdala sa hangin gikan sa larynx ngadto sa baga.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Trachea',
                  definition: 'Ang tubo na nagdadala ng hangin mula sa larynx patungo sa baga.',
                  imageExample: '',
                ),
              },
              'urinary system': {
                'Cebuano': Translation(
                  word: 'Sistema sa Ihi',
                  definition: 'Ang sistema nga nagkontrol sa produksyon ug pagpagawas sa ihi.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Sistema ng Ihi',
                  definition: 'Ang sistemang kumokontrol sa produksyon at paglabas ng ihi.',
                  imageExample: '',
                ),
              },
              'vein': {
                'Cebuano': Translation(
                  word: 'Bilk',
                  definition: 'Ang mga ugat nga nagdala sa dugo paingon sa kasingkasing.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Bilk',
                  definition: 'Ang mga ugat na nagdadala ng dugo pabalik sa puso.',
                  imageExample: '',
                ),
              },
              'ventricle': {
                'Cebuano': Translation(
                  word: 'Ventricle',
                  definition: 'Ang mga kwarto sa kasingkasing nga nagpump sa dugo ngadto sa lawas.',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Ventricle',
                  definition: 'Ang mga silid ng puso na nagpapaikot ng dugo sa katawan.',
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
          Modules(moduleName: "Module 1"),
        ],
        bookContent: [
          Book(
            content: "plants_animals_mod1.pdf",
            moduleName: "Module 1",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
                'imageExample': '',
              },
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
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
                'imageExample': 'sssssssssssssssssssss',
              },
            },
          ),
        ],
      ),
      Units(
        title: "Animals and the Food They Eat",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Module 1"),
        ],
        bookContent: [
          Book(
            content: "animals_food_mod1.pdf",
            moduleName: "Module 1",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
                'imageExample': '',
              },
            },
          ),
        ],
      ),
      Units(
        title: "Food Chains",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Module 1"),
        ],
        bookContent: [
          Book(
            content: "food_chain_mod1.pdf",
            moduleName: "Module 1",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
                'imageExample': '',
              },
            },
          ),
        ],
      ),
    ];
  }
}
