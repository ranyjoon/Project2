# Project2 : 재구매율 예측을 통한 구매물품 예측 및 솔루션 제안
![계산대](https://user-images.githubusercontent.com/115753833/228151319-9b602105-d00f-4fc9-9e18-4cfc3ef0f1b7.jpg)

## 1. 데이터 설명 및 도메인 분석

### 1) 제공 데이터
- L사의 14-15년도 구매 이력
- 19,383명의 고객 데이터
<img src="https://user-images.githubusercontent.com/115753833/228151088-c77d3b2f-015b-4add-a184-3d9a86471a1e.png" width="700">
<br>

### 2) EDA: 고객과 매출 상관 분석
<img src="https://user-images.githubusercontent.com/115753833/228155363-f9a9b953-3d47-4cb5-94b9-6136734c4ecb.png" width="700">
<img src="https://user-images.githubusercontent.com/115753833/228155787-e8885798-cdb3-4d49-8f4f-3e8236b61045.png" width="700">
<br>

### 3) 도메인 분석: 고객 유지 마케팅 / RFM분석 / 장바구니 분석
- **고객 유지 마케팅(Retention Marketing)이란?**
  - 고객 유지 마케팅은 모든 비즈니스의 성장과 지속가능성 차원에서 매우 중요한 전략
  - 기존 고객의 반복 구매에 중점
  - 주요 목표는 반복 구매 고객이 더 자주 구매하여 고객 생애 가치(Customer Lifetime Value,CLV)를 높이는것
<br>

- **고객유지 마케팅이 필요한 이유?**
  - 신규고객 확보에 기존 고객 유지비용보다 훨씬 많은 비용이 소모
  - 반복 구매 고객이 매출의 상당부분을 차지할 수 있음: 많은 연구에 따르면 반복 구매 고객이 기업 매출의 40% 이상을 창출할 수 있으며, 고객 유지율을 5%증가시킬 때 수익이 25~95% 증가할 수있다고 한다.
<br>

- **RFM 분석**
  - 구매 가능성이 높은 고객을 선정할 때 용이한 데이터 분석방법: 사용자별로 얼마나 최근에, 얼마나 자주, 얼마나 많은 금액을 지출했는지에 따라 사용자들의 분포를 확인하거나 **사용자 그룹(또는 등급)을 나누어 분류**하는 분석 기법  
  - 사용자들의 평소 구매 패턴을 기준으로 분류를 진행하기 때문에 각 **사용자 그룹의 특성에 따라 차별화된 마케팅 메시지**를 전달
  
```
- Recency : 얼마나 최근에 구매했는가
- Frequency : 얼마나 자주 구매했는가
- Monetary : 얼마나 많은 금액을 지출했는가
```
<br>

- **장바구니 분석**
  - 연관분석(Association Analysis)
  - 대량의 정보로 부터 개별 데이터 사이의 연관규칙 찾기
  - 마켓의 구매내역 중 특정 물건의 판매 발생 빈도를 기반으로, 'A물건을 구매하는 사람은 B물건을 함께 구매하는 경향이 있다'라는 규칙을 찾아 활용
<br>

## 2. 프로젝트 진행

### 1) 전체 데이터 가공: 상품분류 기준 통일
<img src="https://user-images.githubusercontent.com/115753833/228158974-aa840bf0-1c38-4a31-9883-22cd30e188f4.png" width="700">
<br>

### 2) 재구매율 예측
- **변수 속성 정리**
<img src="https://user-images.githubusercontent.com/115753833/228159793-e880097f-0b5c-469b-b09f-cf576b5c9e1e.png" width="400">

- **재구매율 라벨링**
  - 고객의 구매이력을 분석: 구매이력이 이어지는가?(1 or 0)

- **재구매율 예측 모델링**
  - Train Dataset: 2014년 1분기 - 2015년 3분기
  - Test Dataset: 2015년 4분기
  - Model: AutoML의 **mljar-supervised**패키지 사용
  
- **예측결과**: 총 84개의 모델 중 top 5개
<img src="https://user-images.githubusercontent.com/115753833/228170580-03492b3f-786f-4a03-828f-eecc5ea17691.png" width="700">
<img src="https://user-images.githubusercontent.com/115753833/228171416-d2c746ea-1938-4cae-8ca4-cb94b91917cd.png" width="700">
<br>

### 3) 고객 군집화: K-Means
- **변수 속성 정리**
<img src="https://user-images.githubusercontent.com/115753833/228171842-c7f13884-1a40-499e-892a-ef4eaa8de6cf.png" width="400">
<br>

- **모델 비교**
<img src="https://user-images.githubusercontent.com/115753833/228172088-bc8fffbd-8b36-4648-848e-1bf0776ccb11.png" width="700">
<br>

- **군집화: 엘보우기법과 실루엣 계수**

<img src="https://user-images.githubusercontent.com/115753833/228172654-1944382b-72aa-4781-afdb-f9db09f22118.png" width="49%"><img src="https://user-images.githubusercontent.com/115753833/228172820-66776602-34a9-4693-ba04-876ae790b881.png" width="49%">
<br>

- **고객 군집별 특징 파악**
<img src="https://user-images.githubusercontent.com/115753833/228173635-0951cd03-7589-45e1-95e8-f14a0d642652.png" width="700">
<img src="https://user-images.githubusercontent.com/115753833/228173816-c59d7f14-e119-439c-bd56-b2bf174467a8.png" width="700">
<img src="https://user-images.githubusercontent.com/115753833/228174155-603c406d-6e1c-4fa4-8631-14c62d2f238c.png" width="700">
<br>

### 4) 고객 군집별 마케팅 제안 1: A,B군집
- 사용자 기반 물품추천 시스템<br>

  - **A군집: SVD(특이값분해)** 
    - 재구매 가능성: 높게 예측된 고객 > 낮게 예측된 고객<br>
    
  - **B군집: KNN(최근접 이웃기반 협업필터링)**
    - 재구매 가능성: 높게 예측된 고객 ≒ 낮게 예측된 고객
<br>

- **변수 속성 정리**

<img src="https://user-images.githubusercontent.com/115753833/228176468-914e5005-a283-49da-b716-8544d2536565.png" width="400">
<br>

- **모델링 결과: 마케팅 제안**<br>

  - **A군집** 
    - **식품, 일상용품**의 할인 이벤트 등으로 수요를 높일 수 있을 것이라 예상
    - 상품군: 식품과 일상용품의 경우 가격변동이 크지않고 수요의 탄력성이 높지 않음
    - 고객: 저렴한 가격의 상품 위주로 소비하는 패턴의 군집
    <br>
    
  - **B군집**
    - **식품, 의류/패션**의 카테고리 상품추천 가능
    - 상품군: 꾸준한 구매를 노릴 수 있는 식품, 가격대가 낮지 않아 매출에 도움이 되는 의류/패션
    - 고객: 고객군집에서 재구매 가능성이 고르게 분포되어있으며 가격민감성이 적은 고객 군집
 <br>
 
 ### 5) 고객 군집별 마케팅 제안 2: C군집
 - 아이템 기반 추천시스템(**Apriori algorithm**)
   - 장점: 이해하기 쉬운 원리 / 상품간 많은 연관규칙 발견
   - 단점: 상품 수가 많을 수록 계산량이 기하급수적으로 늘어남
<br>

- **변수 속성 정리**

<img src="https://user-images.githubusercontent.com/115753833/228176468-914e5005-a283-49da-b716-8544d2536565.png" width="400">
<br>
 
 - **모델링 결과: 마케팅 제안**
   - 고객별 맞춤 추천 서비스 제공
   - 상품군: 사치품관련
   - 고객:가격 민감도가 많이 낮고 명품의 구매율도 높은편
<br>

## 3. 기대효과
재구매율이 10%정도 상승했을때 ➡ 2~3%의 매출 상승이 있을 것으로 예상
  
    
  


 









  


