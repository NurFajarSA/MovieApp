part of 'theme.dart';

abstract class MyColor {
  static bool isDark = true; // Get.isDarkMode

  static Color primaryColor(int step) {
    const Color darkPrimaryColorStep1 = Color(0xFF17151F);
    const Color darkPrimaryColorStep2 = Color(0xFF1C172B);
    const Color darkPrimaryColorStep3 = Color(0xFF251E40);
    const Color darkPrimaryColorStep4 = Color(0xFF2C2250);
    const Color darkPrimaryColorStep5 = Color(0xFF32275F);
    const Color darkPrimaryColorStep6 = Color(0xFF392C72);

    const Color darkPrimaryColorStep7 = Color(0xFF443592);
    const Color darkPrimaryColorStep8 = Color(0xFF5842C3);
    const Color darkPrimaryColorStep9 = Color(0xFF6E56CF);
    const Color darkPrimaryColorStep10 = Color(0xFF7C66DC);
    const Color darkPrimaryColorStep11 = Color(0xFF9E8CFC);
    const Color darkPrimaryColorStep12 = Color(0xFFF1EEFE);

    if (isDark) {
      switch (step) {
        case 1:
          return darkPrimaryColorStep1;
        case 2:
          return darkPrimaryColorStep2;
        case 3:
          return darkPrimaryColorStep3;
        case 4:
          return darkPrimaryColorStep4;
        case 5:
          return darkPrimaryColorStep5;
        case 6:
          return darkPrimaryColorStep6;
        case 7:
          return darkPrimaryColorStep7;
        case 8:
          return darkPrimaryColorStep8;
        case 9:
          return darkPrimaryColorStep9;
        case 10:
          return darkPrimaryColorStep10;
        case 11:
          return darkPrimaryColorStep11;
        case 12:
          return darkPrimaryColorStep12;
        default:
          return darkPrimaryColorStep1;
      }
    } else {
      return Colors.blueAccent;
    }
  }

  static Color neutralColor(int step) {
    const Color darkNeutralColortStep1 = Color(0xFF151718);
    const Color darkNeutralColortStep2 = Color(0xFF1A1D1E);
    const Color darkNeutralColortStep3 = Color(0xFF202425);
    const Color darkNeutralColortStep4 = Color(0xFF26292B);
    const Color darkNeutralColortStep5 = Color(0xFF2B2F31);
    const Color darkNeutralColortStep6 = Color(0xFF313538);

    const Color darkNeutralColortStep7 = Color(0xFF3A3F42);
    const Color darkNeutralColortStep8 = Color(0xFF4C5155);
    const Color darkNeutralColortStep9 = Color(0xFF697177);
    const Color darkNeutralColortStep10 = Color(0xFF787F85);
    const Color darkNeutralColortStep11 = Color(0xFF9BA1A6);
    const Color darkNeutralColortStep12 = Color(0xFFECEDEE);

    if (isDark) {
      switch (step) {
        case 1:
          return darkNeutralColortStep1;
        case 2:
          return darkNeutralColortStep2;
        case 3:
          return darkNeutralColortStep3;
        case 4:
          return darkNeutralColortStep4;
        case 5:
          return darkNeutralColortStep5;
        case 6:
          return darkNeutralColortStep6;
        case 7:
          return darkNeutralColortStep7;
        case 8:
          return darkNeutralColortStep8;
        case 9:
          return darkNeutralColortStep9;
        case 10:
          return darkNeutralColortStep10;
        case 11:
          return darkNeutralColortStep11;
        case 12:
          return darkNeutralColortStep12;
        default:
          return darkNeutralColortStep1;
      }
    } else {
      return Colors.red;
    }
  }

  static Color dangerColor(int step) {
    const Color dangerColorStep1 = Color(0xFF1F1315);
    const Color dangerColorStep2 = Color(0xFF291415);
    const Color dangerColorStep3 = Color(0xFF3C181A);
    const Color dangerColorStep4 = Color(0xFF481A1D);
    const Color dangerColorStep5 = Color(0xFF541B1F);
    const Color dangerColorStep6 = Color(0xFF671E22);

    const Color dangerColorStep7 = Color(0xFF822025);
    const Color dangerColorStep8 = Color(0xFFAA2429);
    const Color dangerColorStep9 = Color(0xFFE5484D);
    const Color dangerColorStep10 = Color(0xFFF2555A);
    const Color dangerColorStep11 = Color(0xFFFF6369);
    const Color dangerColorStep12 = Color(0xFFFEECEE);

    if (isDark) {
      switch (step) {
        case 1:
          return dangerColorStep1;
        case 2:
          return dangerColorStep2;
        case 3:
          return dangerColorStep3;
        case 4:
          return dangerColorStep4;
        case 5:
          return dangerColorStep5;
        case 6:
          return dangerColorStep6;
        case 7:
          return dangerColorStep7;
        case 8:
          return dangerColorStep8;
        case 9:
          return dangerColorStep9;
        case 10:
          return dangerColorStep10;
        case 11:
          return dangerColorStep11;
        case 12:
          return dangerColorStep12;
        default:
          return dangerColorStep1;
      }
    } else {
      return Colors.blueAccent;
    }
  }

  static Color successColor(int step) {
    const Color successColorStep1 = Color(0xFF0C1F17);
    const Color successColorStep2 = Color(0xFF0D1912);
    const Color successColorStep3 = Color(0xFF0F291E);
    const Color successColorStep4 = Color(0xFF113123);
    const Color successColorStep5 = Color(0xFF133929);
    const Color successColorStep6 = Color(0xFF164430);

    const Color successColorStep7 = Color(0xFF1B543A);
    const Color successColorStep8 = Color(0xFF236E4A);
    const Color successColorStep9 = Color(0xFF30A46C);
    const Color successColorStep10 = Color(0xFF3CB179);
    const Color successColorStep11 = Color(0xFF4CC38A);
    const Color successColorStep12 = Color(0xFFE5FBEB);

    if (isDark) {
      switch (step) {
        case 1:
          return successColorStep1;
        case 2:
          return successColorStep2;
        case 3:
          return successColorStep3;
        case 4:
          return successColorStep4;
        case 5:
          return successColorStep5;
        case 6:
          return successColorStep6;
        case 7:
          return successColorStep7;
        case 8:
          return successColorStep8;
        case 9:
          return successColorStep9;
        case 10:
          return successColorStep10;
        case 11:
          return successColorStep11;
        case 12:
          return successColorStep12;
        default:
          return successColorStep1;
      }
    } else {
      return Colors.blueAccent;
    }
  }
}
