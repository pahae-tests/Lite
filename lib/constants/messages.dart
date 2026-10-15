import 'dart:math';
import '../models/message.dart';

int _i = 0;
int getRand(int max) => Random().nextInt(max) + 1;

List<Message> getMsgs([int start = 0]) {
  List<Message> msgs1 = msgs.sublist(start, msgs.length);
  List<Message> msgs2 = msgs.sublist(0, start);
  msgs1.addAll(msgs2);
  return msgs1;
}

final List<Message> msgs = [
  Message(
    id: ++_i,
    name: 'Aithana Bonmati',
    img: 'assets/users/1.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Hyy', '%assets/imgs/2.jpg%'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['😒'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'المريولة صبك',
    img: 'assets/users/2.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Salam', 'Cc', '%like%', 'jwb', '%assets/imgs/1.jpg%'],
      ),
      DateGroup(
        when: 'Jun 21',
        msgs: ['slm hh', 'jwp'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['3lax ma katjawebx'],
      ),
      DateGroup(
        when: 'Jul 12',
        msgs: ['Slm 3idkum mubarak 💖'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Salma Kachkachi',
    img: 'assets/users/3.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Salam', 'Cc', 'Cv ?', 'jawbniiiiiiiiiiiii'],
      ),
      DateGroup(
        when: 'Jun 27',
        msgs: ['Hyy', 'wach katqra ?', '😅', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Halima Fahli',
    img: 'assets/users/4.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Slm', 'Cc', 'wash a zine', 'cv ?', 'c'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Khadija El',
    img: 'assets/users/5.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Hyy', 'Salam', 'Cv ?', '%like%', 'katjawbch ?'],
      ),
      DateGroup(
        when: 'Jun 30',
        msgs: ['Cccccccc', 'jawb 😭'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Mikasa II',
    img: 'assets/users/6.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Cc', 'Slm', 'salam', 'wach cv ?', 'Ssss'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حجابي حجابي',
    img: 'assets/users/7.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 17',
        msgs: ['Salam', 'Hyy', 'Cv ?', 'wa jawbni'],
      ),
      DateGroup(
        when: 'Jun 25',
        msgs: ['Cc', '😅', '%assets/imgs/3.jpg%'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'الفتاة المحتشمة',
    img: 'assets/users/8.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Slm', 'Cc', 'Hi', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'أميرة أبيها',
    img: 'assets/users/9.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Salam', 'wash a zine', 'Cc', '%assets/imgs/4.jpg%'],
      ),
      DateGroup(
        when: 'Jun 28',
        msgs: ['Hyy', 'cv ?', '%like%'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Imane El Amrani',
    img: 'assets/users/10.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Cc', 'Slm', 'cv ?', 'jawbni chwia'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Rania Bennis',
    img: 'assets/users/11.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Hyy', 'Salam', 'Cv ?', '3lach saket 😅'],
      ),
      DateGroup(
        when: 'Jul 02',
        msgs: ['Ccccc', 'Hi', 'Wa zbi'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Soukaina El',
    img: 'assets/users/12.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Slm', 'Cc', 'wash cv ?', '%like%', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'زينب زينب',
    img: 'assets/users/13.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Salam', 'Hyy', 'cv ?', 'wach ghatjawebni wela namchi ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Chaimae El Idrissi',
    img: 'assets/users/14.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Cc', 'Hi', 'Slm', 'jawbni', '😒'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['Salam', 'cv a zine ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'نور الهدى',
    img: 'assets/users/15.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Hyy', 'Cc', 'Salam', 'Jawb azmr mlk'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Kawtar Lahlou',
    img: 'assets/users/16.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Slm', 'Cv ?', 'Cc', 'CCC'],
      ),
      DateGroup(
        when: 'Jul 01',
        msgs: ['Cccccccc', 'Slm cv', 'Cv'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Meryem Amrani',
    img: 'assets/users/17.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Salam', 'Hyy', 'wash a zine', 'cv ?', '%assets/imgs/5.jpg%'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بنت الأصول',
    img: 'assets/users/18.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Cc', 'Slm', 'Hi', 'cv ?', '%like%', 'jawbni a zin'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Ghita El Fassi',
    img: 'assets/users/19.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 28',
        msgs: ['Hyy', 'Salam', 'cv ?', 'wach katjawbch 😅'],
      ),
      DateGroup(
        when: 'Jul 03',
        msgs: ['Cc', 'jawbni 3fak', '7choma hadchi walah'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'ملاك الروح',
    img: 'assets/users/20.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Slm', 'Cc', 'salam', 'jawb', '3lach ma katjawbch', 'Ser thwa tsahab rasek chi haja'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Sanae Kabbaj',
    img: 'assets/users/21.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Salam', 'Hyy', 'wash cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بنت المغرب',
    img: 'assets/users/22.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Cc', 'Slm', 'Cv ?', 'Hi', 'jawbni almrd malk dayr haka gher nhadro'],
      ),
      DateGroup(
        when: 'Jul 04',
        msgs: ['Cccccccc', '%like%', 'jawb 😭'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Hajar El Mernissi',
    img: 'assets/users/23.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Salam', 'Cc', 'cv ?', '%assets/imgs/6.jpg%'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nawal Benkirane',
    img: 'assets/users/24.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Slm', 'Hyy', 'Cv ?', 'Cc', 'Waaaa jawb'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['Ccccc', 'Malk ?', 'Slm'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'لمياء لمياء',
    img: 'assets/users/25.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Salam', 'Hi', 'cv ?', '%like%', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'ملاك البراءة',
    img: 'assets/users/26.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Cc', 'Slm', 'wash cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Khadija El Ouazzani',
    img: 'assets/users/27.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Hyy', 'Salam', 'Cv ?', 'jawbni plz'],
      ),
      DateGroup(
        when: 'Jun 27',
        msgs: ['Cc', 'Cc'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Aya Benjelloun',
    img: 'assets/users/28.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Slm', 'Cc', 'Hi', 'cv ?', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حورية الجنة',
    img: 'assets/users/29.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Salam', 'Hyy', 'wash a zine', 'cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Sanaa El Haddad',
    img: 'assets/users/30.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Cc', 'Slm', 'Cv ?', 'wach ma katjawbch 😅'],
      ),
      DateGroup(
        when: 'Jul 01',
        msgs: ['Hyy', 'Ss'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'فراشة الربيع',
    img: 'assets/users/31.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Hyy', 'Salam', 'Cc', '%assets/imgs/7.jpg%'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Ikram El Alaoui',
    img: 'assets/users/32.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Slm', 'Cv ?', 'Cc', '%like%', 'Slm'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'أميرة زماني',
    img: 'assets/users/33.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 28',
        msgs: ['Salam', 'Hyy', 'cv ?', 'Waaaa'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nisrine El Khatib',
    img: 'assets/users/34.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Cc', 'Slm', 'Hi', 'cv ?', 'CCCCCCCCCCCCCCCCCC'],
      ),
      DateGroup(
        when: 'Jun 30',
        msgs: ['Cccccccc', 'wa zbe'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بسمة أمل',
    img: 'assets/users/35.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Salam', 'Cc', 'Cv ?', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Houda El Mansouri',
    img: 'assets/users/36.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Slm', 'Hyy', 'wash cv ?', 'jawb tqawed'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'وردة بيضاء',
    img: 'assets/users/37.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Cc', 'Salam', 'cv ?', '%like%', 'Wa mat5linech mEalqa'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Fatima Zahra El Idrissi',
    img: 'assets/users/38.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Hyy', 'Slm', 'Cc'],
      ),
      DateGroup(
        when: 'Jul 02',
        msgs: ['Salam', 'cv ?', 'Wach kathab karak mqawd rak ghir weld lqahba zaml'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'روح هادئة',
    img: 'assets/users/39.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Salam', 'Hi', 'Cv ?', 'Malk saket 😅', 'jawb'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Maha El Yousfi',
    img: 'assets/users/40.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Slm', 'Cc', 'Hyy', 'cv ?', '9wd'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حبيبتي أمي',
    img: 'assets/users/41.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Salam', 'Cc', 'wash cv ?', 'jawbni'],
      ),
      DateGroup(
        when: 'Jul 03',
        msgs: ['Ccccc', '%like%', 'jawb 😭'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Samira El Fadili',
    img: 'assets/users/42.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Hyy', 'Slm', 'cv ?', 'Cc', '7mar'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Loubna El Gharbi',
    img: 'assets/users/43.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Salam', 'Cc', 'cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Hanane Bouchta',
    img: 'assets/users/44.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Slm', 'Hyy', 'Cc'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['Ccccc', 'wach ma katjawbch ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'بنت الناس',
    img: 'assets/users/45.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Salam', 'Hi', 'cv ?', '%like%'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Mikasa Ackerman',
    img: 'assets/users/46.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Cc', 'Slm', 'wash cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حسناء الروح',
    img: 'assets/users/47.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Hyy', 'Salam', 'Cv ?', '3afak jawbni'],
      ),
      DateGroup(
        when: 'Jul 01',
        msgs: ['Cc', 'wach katjawbch 😅'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Oumaima El Khayat',
    img: 'assets/users/48.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Slm', 'Cc', 'Hi', 'cv ?', 'Slm cv'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'أميرة القلوب',
    img: 'assets/users/49.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Salam', 'Hyy', 'wash a zine', 'cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Kenza El Mokhtar',
    img: 'assets/users/50.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 27',
        msgs: ['Cc', 'Slm', 'Cv ?', '3lach ma katjawbch'],
      ),
      DateGroup(
        when: 'Jul 03',
        msgs: ['Hyy', 'jawbni'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'زهرة الياسمين',
    img: 'assets/users/51.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Salam', 'Cc', 'cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Maha El Alami',
    img: 'assets/users/52.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 18',
        msgs: ['Hyy', 'Slm', 'Cv ?', '%like%'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'ضحكة أمل',
    img: 'assets/users/53.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Cc', 'Salam', 'Hi', 'jawbni 3afak'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Yousra El Ouahbi',
    img: 'assets/users/54.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 21',
        msgs: ['Slm', 'Hyy', 'wash cv ?'],
      ),
      DateGroup(
        when: 'Jun 30',
        msgs: ['Cccc', 'kishab rask waEr ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حبيبة بابا',
    img: 'assets/users/55.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 23',
        msgs: ['Salam', 'Cc', 'Cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Rim El Harrak',
    img: 'assets/users/56.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 19',
        msgs: ['Cc', 'Slm', 'Hyy', 'cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'وردة المغرب',
    img: 'assets/users/57.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 28',
        msgs: ['Salam', 'Hi', 'cv ?', 'wach katjawbch ?'],
      ),
      DateGroup(
        when: 'Jul 02',
        msgs: ['Cc', 'jawbni 😭'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nora El Mansouri',
    img: 'assets/users/58.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 25',
        msgs: ['Hyy', 'Salam', 'Cc'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'قمر زماني',
    img: 'assets/users/59.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 22',
        msgs: ['Slm', 'Cv ?', 'Cc', '%like%'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Nihad El Fassi',
    img: 'assets/users/60.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 24',
        msgs: ['Salam', 'Hyy', 'wash cv ?'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'حجاب و عفة',
    img: 'assets/users/61.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 20',
        msgs: ['Cc', 'Slm', 'Hi', 'cv ?'],
      ),
      DateGroup(
        when: 'Jun 29',
        msgs: ['Ccccc', 'wach ma katjawbch 😅'],
      ),
    ],
  ),
  Message(
    id: ++_i,
    name: 'Salsabil El Idrissi',
    img: 'assets/users/62.jpeg',
    online: getRand(3) == 1,
    unread: getRand(2),
    dates: [
      DateGroup(
        when: 'Jun 26',
        msgs: ['Salam', 'Cc', 'cv ?', 'Jawbni ashbe'],
      ),
    ],
  ),
];