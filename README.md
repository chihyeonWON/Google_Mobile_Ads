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

## banner 객체 생성과 설정하기
```
google_mobile_ads 라이브러리를 프로젝트에서 import하고 bannerAd 타입의 banner 객체를 하나 생성합니다.
banner를 initState()안에서 설정해 줍니다.
banner는 bannerAd()의 4개의 필요한 옵션을 설정하여야 합니다(required).
각 옵션을 살펴보면,
listener : 광고가 로딩이 되었을 때, 실패했을 때, 클릭했을 때 등 이벤트를 넣거나 통계를 따거나 할 때 사용할 수 있습니다.
size : 광고의 크기를 설정해 줄 수 있습니다.
adUnitId : 유닛 아이디 즉 안드로이드와 ios 기종에 맞는 앱 아이디를 넣어주면 됩니다. 여기서는 위에서 만든 테스트용 아이디를 넣어주었습니다.
request : 키워드를 설정할 수 있습니다. 기대 효과 CPM을 높혀서 광고 수익을 늘리거나 할 수 있습니다. (CPM은 1000회 노출당 비용을 의미하는 'cost per 1000 impressions'의 약자)

이렇게 하면 광고 배너의 설정은 끝이 납니다.
```
![image](https://user-images.githubusercontent.com/58906858/216882812-9a4d3faf-eaeb-4916-84d7-593e21d5e5b4.png)
![image](https://user-images.githubusercontent.com/58906858/216883351-5fc454fa-1076-409f-9439-c337b14751b6.png)

## 앱 맨 밑에 광고 배너가 들어가는 상황 설정
[mergeExtDexDebug 오류 해결방법](https://kwonsaw.tistory.com/412)
```
애플리케이션 맨 밑에 광고 배너가 들어가는 상황을 설정해보고 테스트 해 보겠습니다.

ListView.seperated으로 0부터 100개의 리스트를 만들어 주고 맨 밑에
Container(height:50)만큼의 공간에 광고 배너를 넣는다고 가정하겠습니다.

중간에 Execution failed for task ':app:mergeExtDexDebug' 오류가 떴는데 이는 오류 해결방법을 구글링해서
찾아서 해결하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/216885848-9ba29a5e-2ee7-426c-8b7c-afd9b3a13ee1.png)
## [앱 최하단에 테스트 광고 배너가 생긴 모습]
![image](https://user-images.githubusercontent.com/58906858/216885883-513caaad-1457-4e44-8496-57403ef70fc4.png)
## [테스트 광고 배너를 클릭했을 때]
![image](https://user-images.githubusercontent.com/58906858/216885943-777c4103-a10c-4e8a-b035-f18acd9c408f.png)


