# googleads

## 필요한 라이브러리 설치
[구글 애드몹 사이트](https://admob.google.com/intl/ko/home/) | [google_mobile_ads 개발문서](https://pub.dev/packages/google_mobile_ads)
```
구글 애드몹(Google Admob)사이트에 회원가입을 하고 프로젝트의 터미널에서 
flutter pub add google_mobile_ads 명령어로 필요한 라이브러리를 설치해줍니다.
```
![image](https://user-images.githubusercontent.com/58906858/216880409-976f9900-ed62-4f6c-b2ea-9ebf286536d4.png)

## google_mobile_ads App Id 설정하기
```
구글 애드몹 사이트에서 테스트용 앱을 생성하고 발급받은 Id를 AndroidManifest에서 설정해주어야 합니다.
AndroidManifest에 다음 코드를 작성하여 애드몹 Id를 추가해주었습니다.
```
![image](https://user-images.githubusercontent.com/58906858/216881996-55f3b4c9-0807-407c-bdb7-cc426bd427c9.png)
![image](https://user-images.githubusercontent.com/58906858/216882065-4b8593fc-feae-4294-888d-3a7cd70c1cd5.png)

## 테스트용 ID의 사용
[Admob Test Id 모음](https://unitytip.tistory.com/33)
```
광고 조작을 마음대로 하면 Block 차단당할 위험이 있기 때문에 테스트(디버깅)단계에서는 반드시
다음의 테스트 ID를 사용합니다. 향후 실제로 앱에 광고를 넣을 때는 ID부분을 애드몹 App Id로 변경해줍니다.
```
![image](https://user-images.githubusercontent.com/58906858/216882345-6154106b-d7c8-4255-b457-52b0f4750695.png)
![image](https://user-images.githubusercontent.com/58906858/216882480-c334fe3c-f344-44fe-bac0-63e0d09d6a51.png)
