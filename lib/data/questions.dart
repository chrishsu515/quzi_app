import 'package:quzi_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'Flutter UI 的主要構建模塊是什麼？',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('Flutter UI 是如何構建的？', [
    '在代碼中組合 widgets',
    '在視覺編輯器中組合 widgets',
    '在配置文件中定義 widgets',
    '使用 XCode 開發 iOS 和 Android Studio 開發 Android',
  ]),
  QuizQuestion(
    'StatefulWidget 的用途是什麼？',
    [
      '當數據變化時更新 UI',
      '當 UI 變化時更新數據',
      '忽略數據變化',
      '渲染不依賴於數據的 UI',
    ],
  ),
  QuizQuestion(
    '應該更頻繁地使用哪種 widget：StatelessWidget 還是 StatefulWidget？',
    [
      'StatelessWidget',
      'StatefulWidget',
      '兩者同樣好',
      '以上都不是',
    ],
  ),
  QuizQuestion(
    '如果你在 StatelessWidget 中更改數據會發生什麼？',
    [
      'UI 不會更新',
      'UI 會更新',
      '最近的 StatefulWidget 會更新',
      '所有嵌套的 StatefulWidget 都會更新',
    ],
  ),
  QuizQuestion(
    '如何在 StatefulWidget 內部更新數據？',
    [
      '調用 setState()',
      '調用 updateData()',
      '調用 updateUI()',
      '調用 updateState()',
    ],
  ),
];
