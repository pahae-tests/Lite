import 'dart:math';
import '../models/message.dart';

int _i = 0;
int getRand(int max) => Random().nextInt(max) + 1;

final List<Message> spams = [
  Message(
    id: ++_i,
    name: 'Salma El Khatib',
    img: 'assets/users/3.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Cc', 'Hyy', 'cv ?', 'jawbni'],
      ),
      DateGroup(
        when: 'Jun 20',
        msgs: ['Ccccc', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'الجميلة الهادئة',
    img: 'assets/users/4.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Salam', 'Cc', 'jawbni 3afak', '😅'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nawal El Amrani',
    img: 'assets/users/5.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Slm', 'Hyy', 'cv ?', 'jawb'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['Cc', 'wach katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بنت حواء',
    img: 'assets/users/6.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Hyy', 'Salam', 'Cc', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Aya El Mansouri',
    img: 'assets/users/7.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Cc', 'Slm', 'Hi', 'cv ?', 'jawb plz'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'أميرة صغيرة',
    img: 'assets/users/8.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Salam', 'Hyy', 'jawbni', 'Ccccc'],
      ),
      DateGroup(
        when: 'Jun 30',
        msgs: ['Cc', 'cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Meriem El Fassi',
    img: 'assets/users/9.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Slm', 'Cc', 'cv ?', '3afak jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حبيبة أمها',
    img: 'assets/users/10.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Salam', 'Hi', 'Hyy', 'jawbni chwia'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Kawtar El Idrissi',
    img: 'assets/users/11.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Cc', 'Slm', 'Cv ?', '%like%', 'jawb'],
      ),
      DateGroup(
        when: 'Jul 01',
        msgs: ['Cccccccc', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'وردة الصباح',
    img: 'assets/users/12.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Hyy', 'Salam', 'Cc', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Imane El Alaoui',
    img: 'assets/users/13.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Slm', 'Cc', 'Hi', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'قمر المغرب',
    img: 'assets/users/14.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Salam', 'Hyy', 'jawb', 'wach katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Hajar El Ouazzani',
    img: 'assets/users/15.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Cc', 'Slm', 'cv ?', 'jawbni plz'],
      ),
      DateGroup(
        when: 'Jun 28',
        msgs: ['Hyy', 'Cc', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'الوردة الجميلة',
    img: 'assets/users/16.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Salam', 'Cc', 'Cv ?', '3afak jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Rania El Yousfi',
    img: 'assets/users/17.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Hyy', 'Slm', 'Hi', 'jawbni'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['Ccccc', 'cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حبيبتي الغالية',
    img: 'assets/users/18.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Cc', 'Salam', 'jawb', '😅'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Siham El Gharbi',
    img: 'assets/users/19.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Slm', 'Hyy', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'عاشقة الهدوء',
    img: 'assets/users/20.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Salam', 'Cc', 'Hyy', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nisrine El Kadi',
    img: 'assets/users/21.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Cc', 'Slm', 'Cv ?', 'jawb plz'],
      ),
      DateGroup(
        when: 'Jul 02',
        msgs: ['Cccccccc', 'wach mazal ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'ملاك أبيها',
    img: 'assets/users/22.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Hyy', 'Salam', 'Cc', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Lina El Mansouri',
    img: 'assets/users/23.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Slm', 'Hi', 'cv ?', '3afak jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'الروح الطيبة',
    img: 'assets/users/24.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 28',
        msgs: ['Salam', 'Cc', 'jawbni', '%like%'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Oumaima El Khayat',
    img: 'assets/users/25.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Hyy', 'Slm', 'Cc', 'cv ?', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بنت الريف',
    img: 'assets/users/26.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Salam', 'Hi', 'jawbni 3afak'],
      ),
      DateGroup(
        when: 'Jun 30',
        msgs: ['Cc', 'Ccccc'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Maha El Amrani',
    img: 'assets/users/27.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Cc', 'Slm', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'أميرة زماني',
    img: 'assets/users/28.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Hyy', 'Salam', 'Cv ?', 'jawb plz'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Yasmine El Fassi',
    img: 'assets/users/29.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Slm', 'Cc', 'Hi', 'jawbni chwia'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بنت الناس',
    img: 'assets/users/30.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Salam', 'Hyy', 'cv ?', 'jawbni'],
      ),
      DateGroup(
        when: 'Jul 03',
        msgs: ['Cc', 'wach katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Hind El Idrissi',
    img: 'assets/users/31.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Cc', 'Slm', 'Cv ?', '3afak jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'ضحكة طفلة',
    img: 'assets/users/32.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Hyy', 'Salam', 'Cc', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Khadija El Fadili',
    img: 'assets/users/33.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Slm', 'Hi', 'cv ?', 'jawb'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['Ccccc', 'jawbni plz'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حجابي سر سعادتي',
    img: 'assets/users/34.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Salam', 'Cc', 'Hyy', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Sara El Ouazzani',
    img: 'assets/users/35.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Cc', 'Slm', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'قلب أبيض',
    img: 'assets/users/36.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Hyy', 'Salam', 'Cv ?', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Rim El Alaoui',
    img: 'assets/users/37.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Slm', 'Cc', 'Hi', 'jawbni plz'],
      ),
      DateGroup(
        when: 'Jun 28',
        msgs: ['Cccccccc', 'cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حكاية وردة',
    img: 'assets/users/38.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Salam', 'Hyy', 'Cc', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Asmae El Mansouri',
    img: 'assets/users/39.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Cc', 'Slm', 'Cv ?', '3afak jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'أميرة أبيها',
    img: 'assets/users/40.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Hyy', 'Salam', 'jawb', 'wach katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Houda El Fassi',
    img: 'assets/users/41.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Slm', 'Cc', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'زهرة الحياة',
    img: 'assets/users/42.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Salam', 'Hi', 'Hyy', 'jawbni 3afak'],
      ),
      DateGroup(
        when: 'Jul 01',
        msgs: ['Cc', 'Ccccc'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nora El Amrani',
    img: 'assets/users/43.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Cc', 'Slm', 'Cv ?', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'الفراشة الصغيرة',
    img: 'assets/users/44.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Hyy', 'Salam', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Loubna El Kadi',
    img: 'assets/users/45.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Slm', 'Cc', 'Hi', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'روح جميلة',
    img: 'assets/users/46.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 28',
        msgs: ['Salam', 'Hyy', 'Cv ?', 'jawb plz'],
      ),
      DateGroup(
        when: 'Jul 04',
        msgs: ['Ccccc', 'Cc'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Malak El Yousfi',
    img: 'assets/users/47.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Cc', 'Salam', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'نور القمر',
    img: 'assets/users/48.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Hyy', 'Slm', 'Cv ?', '3afak jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Fatima Zahra El Alaoui',
    img: 'assets/users/49.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Salam', 'Cc', 'Hi', 'jawbni'],
      ),
      DateGroup(
        when: 'Jun 30',
        msgs: ['Cccccccc', 'wach ma katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'عاشقة القمر',
    img: 'assets/users/50.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Slm', 'Hyy', 'cv ?', 'jawbni chwia'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Samira El Idrissi',
    img: 'assets/users/51.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Cc', 'Salam', 'Cv ?', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حبيبتي أمي',
    img: 'assets/users/52.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Hyy', 'Cc', 'Slm', 'jawbni 3afak'],
      ),
    ],
  ),
];