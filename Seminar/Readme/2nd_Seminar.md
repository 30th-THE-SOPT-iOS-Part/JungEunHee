## 1. UITabbarController

### ✨ 탭바

- 탭바 컨트롤러 → Is Initial ViewController 체크

- Info.plist 에서 초기 시작점 설정

    - default → main
    - 만든 스토리보드의 이름으로 바꿔주기 !

- 아이콘 바꾸는 법

    - Bar Item, Selected Image 지정해주기

- 랜더

    - 어떤 상태로 화면에 뿌려주겠느냐?
    - 올린 이미지에 대해서 색깔을 바꿔주고 싶다면 Template Image로 바꿔주기


### ✨ 하나의 스토리보드에는 하나의 뷰 컨트롤러만 생성하기

- 스토리보드를 분리하자.

- 분리해서 작업하는 법
    
    ![image](https://user-images.githubusercontent.com/70689381/162565078-ab860a15-e325-4b8b-a885-434648a1256d.png)

    
- 탭바 스보 나누는 법

    1. 탭 구성하기
        1. 스토리보드 생성하고, 각각의 뷰컨마다 Is Initial ViewController 체크해주기
        2. Tabbar Item 넣어주기

    2. 넣을 탭의 개수만큼 Storyboard Reference 넣어주기
        - 스토리보드에 대한 링크를 넣어주는 것임
        - 어떤 스토리보드를 참조할 지 설정해줄 수 있음
        - Reference는 각 스토리보드를 압축해서 나타냄 !

    3. 세그를 통해 각각의 참조들을 뷰 컨트롤러와 연결해주기


### ✨ 코드로 탭바 만들기

1. 스토리보드에서 탭바 컨트롤러 생성
    - 사용할 뷰 컨트롤러들에는 Identifier 달아주기

2. UITabbarController를 상속받는 코코아터치 파일 생성

3. 연결해주기 (탭 바 컨트롤러 세팅)
    - 뷰 컨트롤러의 인스턴스 생성 
    - 탭 바 아이템 설정
    - 설정할 화면을 탭 바 컨트롤러에 연결
        
        `setViewControllers(viewControllers: [UIViewController]?, animated: Bool)`
        
        - 배열의 형태로 넣어준다 !
        - 연결해주는 작업이기 때문에 애니메이션 효과는 잘 사용하지 않는다고 한다.
        
<br>


## 2. AutoLayout

### ✨ 레이아웃의 변화

- iPhoneX에서 Notch의 등장으로 Safe Area (안전 영역)가 추가되었음 !

    - Safe Area

        - 필수적으로 나와야 하는 부분들을 보여주기 위함

        - Contents를 안전하게 노출시키기 위한 영역임.

        - Status Bar + Navigation Bar + Layout Margin + Tab Bar + Home Indicator
            - Layout Margin ⇒ 메인 컨텐츠가 표시되는 영역

        - 뷰에서 Safe Area 눌러보면 Status Bar + Home Indicator가 제외되고 잡히는 것을 확인할 수 있음

- iPhone13에서의 Safe Area

    - Status bar 의 크기와 Home Indicator의 크기가 조정되었음

### ✨ 오토레이아웃

1. 개념

    - 다양한 기기의 해상도와 크기를 고려하기 위해 뷰들의 관계를 이용해서 레이아웃의 관계를 잡아주는 것을 말한다.

    - View들의 위치와 크기를 시스템이 자동으로 잡아주어 외부 및 내부 변화에 동적으로 대응할 수 있다 ~!

    - AutoLayout 잡을 때 꼭 기억해야 할 것 (→ System에게 알려주는 것)

        1. View에 주어진 제약 조건

        2. **View의 크기와 위치**

            - 뷰의 위치 (x, y 좌표)
                - `anchor`
                - 상대적인 뷰로부터 얼마큼 떨어져 있는지 ?

            - 뷰의 크기 (width, height)
                - 뷰 자체의 고유한 크기

2. 속성

    - 정렬 사각형을 기반으로 한다.
        
        ![image](https://user-images.githubusercontent.com/70689381/162565194-5c44b50d-7e39-45da-8f71-c8df567afdc3.png)

        
3. 제약 조건

    - **제약 조건을 설정한다**는 것은, **anchor를 설정한다**는 것을 말한다 !

        - 뷰와 뷰 간의 수치적인 관계를 설정해준다는 의미이다.

    - 예시
        
        `RedView.Leading = 1.0 * BlueView.trailing + 8.0`
        
        
    - 기억할 것

        - Intrincic Size
            - 뷰들이 가진 고유한 크기
                
                ![image](https://user-images.githubusercontent.com/70689381/162565213-24e9675d-2bc3-41e1-ac85-364307c51283.png)
        
<br>


## 3. UIStackView

### ✨ **Start with Stack View, use constraints as needed**

- 색과 크기를 가지고 있지 않은 뷰이며, 컨텐츠에 따라서 크기가 조절된다.

    - 좀 더 편하게 레이아웃을 구성할 수 있도록 도와준다 !

### ✨ 정의

- AutoLayout을 적용해 내부에 배치된 View들을 열 또는 행으로 배치해주는 인터페이스

- 안에 들어가는 View들을 ArrangedSubView라고 부른다. (= SubView라고 하지 않음 !)

- 축 `axis`, 분배 `distribution`, 정렬 방식 `alignment`, 여백 `spacing`에 따라 배치된다.

### ✨ 만들기

- 어떤 식으로 묶여있는지를 먼저 생각해보자.
