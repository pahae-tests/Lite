import 'dart:math';
import '../models/message.dart';

int _i = 0;
int getRand(int max) => Random().nextInt(max) + 1;

final List<Message> requests = [
  Message(
    id: ++_i,
    name: 'Souad El Kadi',
    img: 'assets/users/3.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Salam', 'Cc', 'cv ?', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حورية الجنة',
    img: 'assets/users/4.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Slm', 'Hyy', 'Cc', 'jawb'],
      ),
      DateGroup(
        when: 'Jun 28',
        msgs: ['Ccccc', 'wach katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Kenza El Amrani',
    img: 'assets/users/5.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Salam', 'Hi', 'cv ?', '%like%', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بنت الأصول',
    img: 'assets/users/6.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Cc', 'Slm', 'wash cv ?', 'jawb chwia'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Hind El Mansouri',
    img: 'assets/users/7.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Hyy', 'Salam', 'Cv ?', '3afak jawbni'],
      ),
      DateGroup(
        when: 'Jun 27',
        msgs: ['Cc', 'wach ma katjawbch 😅'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'نور عيني',
    img: 'assets/users/8.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Slm', 'Cc', 'Hi', 'cv ?', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nisrine El Alaoui',
    img: 'assets/users/9.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Salam', 'Hyy', 'wash a zine', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'أميرة أبيها',
    img: 'assets/users/10.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Cc', 'Slm', 'Cv ?', '3afak jawb'],
      ),
      DateGroup(
        when: 'Jul 01',
        msgs: ['Cccccccc', 'wach mazal ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Meryem El Fassi',
    img: 'assets/users/11.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Salam', 'Cc', 'cv ?', 'jawbni plz'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'ضحكة أمل',
    img: 'assets/users/12.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Hyy', 'Hi', 'Slm', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Imane Bennis',
    img: 'assets/users/13.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Cc', 'Salam', 'Cv ?', '%like%', 'jawb'],
      ),
      DateGroup(
        when: 'Jun 30',
        msgs: ['Hyy', 'wach katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حجابي حجابي',
    img: 'assets/users/14.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Slm', 'Cc', 'wash cv ?', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Aya El Khatib',
    img: 'assets/users/15.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Salam', 'Hyy', 'cv ?', 'jawb chwia'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'وردة بيضاء',
    img: 'assets/users/16.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Cc', 'Hi', 'Slm', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Sanae El Idrissi',
    img: 'assets/users/17.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Hyy', 'Salam', 'Cv ?', 'wach saket 😅'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['Cc', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'ملاك الروح',
    img: 'assets/users/18.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Slm', 'Cc', 'cv ?', 'jawb plz'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Houda El Mernissi',
    img: 'assets/users/19.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Salam', 'Hi', 'Cc', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بنت المغرب',
    img: 'assets/users/20.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Hyy', 'Slm', 'wash cv ?', 'jawb'],
      ),
      DateGroup(
        when: 'Jul 02',
        msgs: ['Ccccc', '3afak jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Rania El Ouazzani',
    img: 'assets/users/21.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Cc', 'Salam', 'cv ?', '%like%', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'الفتاة المحتشمة',
    img: 'assets/users/22.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Slm', 'Hyy', 'Cv ?', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Lamia El Yousfi',
    img: 'assets/users/23.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Salam', 'Cc', 'Hi', 'jawb'],
      ),
      DateGroup(
        when: 'Jun 28',
        msgs: ['Cccccccc', 'wach katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'قمر زماني',
    img: 'assets/users/24.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Hyy', 'Salam', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Chaimae El Fadili',
    img: 'assets/users/25.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Cc', 'Slm', 'Cv ?', '3afak jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حبيبة بابا',
    img: 'assets/users/26.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Salam', 'Hyy', 'wash cv ?', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nawal Benjelloun',
    img: 'assets/users/27.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Slm', 'Cc', 'cv ?', 'jawbni chwia'],
      ),
      DateGroup(
        when: 'Jun 30',
        msgs: ['Hyy', 'wach ma katjawbch 😅'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'ملاك البراءة',
    img: 'assets/users/28.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Salam', 'Hi', 'Cc', 'jawbni plz'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Khadija El Mansouri',
    img: 'assets/users/29.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Hyy', 'Slm', 'Cv ?', '%like%', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بسمة أمل',
    img: 'assets/users/30.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Cc', 'Salam', 'cv ?', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Maha El Alaoui',
    img: 'assets/users/31.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Slm', 'Hyy', 'wash cv ?', 'jawbni'],
      ),
      DateGroup(
        when: 'Jul 01',
        msgs: ['Cc', 'Ccccc'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'أميرة القلوب',
    img: 'assets/users/32.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Salam', 'Cc', 'Cv ?', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Yasmine El Kadi',
    img: 'assets/users/33.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Hyy', 'Hi', 'Slm', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'روح هادئة',
    img: 'assets/users/34.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Salam', 'Cc', 'wash a zine', 'jawbni'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['Cccccccc', 'cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Asmae El Amrani',
    img: 'assets/users/35.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Slm', 'Cc', 'Cv ?', '3afak jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'وردة الياسمين',
    img: 'assets/users/36.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Hyy', 'Salam', 'cv ?', 'jawbni chwia'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Sara El Haddad',
    img: 'assets/users/37.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Cc', 'Slm', 'Hi', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حجاب و عفة',
    img: 'assets/users/38.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Salam', 'Cv ?', 'Cc', '%like%', 'jawb'],
      ),
      DateGroup(
        when: 'Jun 28',
        msgs: ['Hyy', 'wach katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Oumaima El Idrissi',
    img: 'assets/users/39.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Slm', 'Hyy', 'wash cv ?', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'الوردة البيضاء',
    img: 'assets/users/40.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Cc', 'Salam', 'cv ?', 'jawb plz'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Rim El Mansouri',
    img: 'assets/users/41.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Hyy', 'Cc', 'Slm', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'نجمة الليل',
    img: 'assets/users/42.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Salam', 'Hi', 'Cv ?', '3afak jawbni'],
      ),
      DateGroup(
        when: 'Jul 02',
        msgs: ['Cc', 'Ccccc', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nora El Fassi',
    img: 'assets/users/43.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Slm', 'Cc', 'wash cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'أميرة زماني',
    img: 'assets/users/44.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Salam', 'Hyy', 'cv ?', '%like%', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Hajar El Ouazzani',
    img: 'assets/users/45.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 28',
        msgs: ['Cc', 'Slm', 'Hi', 'jawb chwia'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بنت حرة',
    img: 'assets/users/46.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Hyy', 'Salam', 'Cv ?', 'jawbni 3afak'],
      ),
      DateGroup(
        when: 'Jun 30',
        msgs: ['Cc', 'wach ma katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Mouna El Yousfi',
    img: 'assets/users/47.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Slm', 'Cc', 'cv ?', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حلوة الروح',
    img: 'assets/users/48.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Salam', 'Hi', 'Hyy', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Siham El Gharbi',
    img: 'assets/users/49.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Cc', 'Salam', 'Cv ?', '3afak jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'قلب أبيض',
    img: 'assets/users/50.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Hyy', 'Slm', 'wash cv ?', 'jawbni'],
      ),
      DateGroup(
        when: 'Jul 03',
        msgs: ['Cccccccc', 'jawb 😭'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Ikram El Mansouri',
    img: 'assets/users/51.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Salam', 'Cc', 'cv ?', '%like%', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حكاية جميلة',
    img: 'assets/users/52.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Slm', 'Hyy', 'Hi', 'jawbni 3afak'],
      ),
    ],
  ),
];
