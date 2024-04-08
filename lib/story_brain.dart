import 'package:density_app_project_flutter6/story.dart';

class StoryBrain
{
  List<Story> _storyData = [
    Story(
        storyTitle:
        'موتر شما در جاده ای پر پیچ و خم، در میانۀ ناکجاآباد تایر ترکانده و ساحه خارج از محدوده ی پوشش شبکه هاست. شما تصمیم میگیرید که از موتر های دیگر درخواست لیفت کنید. یک وانت زنگ زده به ایستگاهی در کنار شما می‌پیچد. مردی با کلاه لبه‌ پهن و چشمان بی‌روح در مسافر را به روی شما باز می‌کند و می‌پرسد: «میخواهی جایی برسانمت، پسر؟».',
        choice1: 'سوار میشوم، ممنون بابت کمک!',
        choice2: 'بهتره ابتدا پرسان شود که آیا او یک قاتل است؟'),
    Story(
        storyTitle:
        'راننده با تکان دادن سر جواب بلی داد، بدون اینکه از سوال ناراحت شود.',
        choice1: 'حد اقل بخاطر صادق بودنش سوار میشوم.',
        choice2: 'یک لحظه، بلدم تایر موتر را عوض کنم.'),
    Story(
        storyTitle:
        'هنگامی که شما شروع به حرکت می کنید، غریبه شروع به صحبت در مورد رابطه خود با مادرش می کند. لحظه به لحظه عصبانی تر و عصبانی تر می شود. او از شما می خواهد که جعبه دستکش را باز کنید. در داخل یک چاقوی خونین، دو انگشت بریده شده و یک نوار کاست از التون جان پیدا می کنید. راننده دستش را به سمت جعبه دستکش دراز میکند.',
        choice1: 'من از التون جان خوشم می آید! نوار کاست را به او میدهید.',
        choice2: 'یا من یا او! چاقو را برمیدارید و به او ضربه میزنید.'),
    Story(
        storyTitle:
        'چی؟ عجب آدم محافظه کاری! \nآیا می‌دانستید تصادفات رانندگی دومین عامل مرگ و میر تصادفی برای اکثر گروه‌های سنی بزرگسالان است؟',
        choice1: 'شروع مجدد',
        choice2: ''),
    Story(
        storyTitle:
        'ضربه زدن با چاقو به راننده، هنگام رانندگی، درست مثل شکستن نرده ی محافظیست که از افتادن شما روی صخره های دندانه دار جلوگیری میکند. ',
        choice1: 'شروع مجدد',
        choice2: ''),
    Story(
        storyTitle:
        'شما با قاتل پیوند می خورید در حالی که شعر "امشب می توانید عشق را احساس کنید" را می خوانید. او شما را در شهر بعدی پیاده می کند. قبل از رفتن او از شما می پرسد که آیا مکان خوبی برای تخلیه اجساد می شناسید؟ شما پاسخ می دهید: «اسکله را امتحان کنید».',
        choice1: 'شروع مجدد',
        choice2: '')
  ];

  int _storyNumber = 0;

  String getStory()
  {
    return(_storyData[_storyNumber].storyTitle);
  }

  String getChoice1()
  {
    return(_storyData[_storyNumber].choice1);
  }
  String getChoice2()
  {
    return(_storyData[_storyNumber].choice2);
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0) {
      if (choiceNumber == 1) {
        _storyNumber = 2;
      } else if (choiceNumber == 2) {
        _storyNumber = 1;
      }
    } else if (_storyNumber == 1) {
      if (choiceNumber == 1) {
        _storyNumber = 3;
      } else if (choiceNumber == 2) {
        _storyNumber = 4;
      }
    } else if (_storyNumber == 2) {
      if (choiceNumber == 1) {
        _storyNumber = 5;
      } else if (choiceNumber == 2) {
        _storyNumber = 3;
      }
    }

    if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) ? true : false;
  }

}

