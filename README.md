# Gold Miner App

تطبيق Flutter ميداني لمنقبي الذهب، يساعد على حفظ مواقع التنقيب وتسجيل المسارات وإدارة طبقات الخريطة والإعدادات محليًا باستخدام SQLite.

## المزايا الحالية

- هيكل Flutter منظم إلى شاشات وخدمات ونماذج وودجات.
- قاعدة SQLite تشمل `Sites` و`Tracks` و`TrackPoints` و`LayersSettings` و`AppSettings`.
- شاشات أولية للخريطة والمواقع وإضافة موقع وتسجيل المسار والطبقات والإعدادات.
- خط CI يبني APK ويرفعه كـ Artifact بعد الاختبارات.

## التشغيل

يتطلب Flutter SDK بقناة stable.

```bash
flutter pub get
flutter run
```

## الاختبار والبناء

```bash
flutter analyze
flutter test
flutter build apk --release
```

## Git Flow

- `main`: الإصدارات المستقرة.
- `develop`: دمج العمل الجاري.
- `feature/*`: ميزة جديدة، مثل `feature/map-screen`.
- `release/*`: تجهيز إصدار.
- `hotfix/*`: إصلاح عاجل للإصدار المستقر.

إنشاء ميزة جديدة:

```bash
git switch develop
git switch -c feature/my-feature
git add .
git commit -m "feat: implement my feature"
git push -u origin feature/my-feature
```

## CI/CD

الملف `.github/workflows/build.yml` يعمل عند كل push أو Pull Request إلى `main` أو `develop`. يقوم بتثبيت Flutter، وتشغيل `pub get` والتحليل والاختبارات، ثم يبني APK ويرفعه كـ `gold-miner-apk`.

## المستودع

`https://github.com/ss-44mp3/Gold.git`# Gold
تطبيق مخصص لمنقبي الذهب
