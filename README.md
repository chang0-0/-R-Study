# -R-Study

c()함수로 연결되는 값
비어있는 내용들은 재활용법칙에 의해서 반복되어 빈자리를 채우게됨.<br/>

변수들을 연결해서 vector를 생성했을때 하나라도 실수 또는 문자열이 있을 경우
해당 벡터는 문자형 벡터가 되거나 실수형 벡터가됨

cbind는 행의 개수가 동일 해야함<br/>
rbind는 열의 개수가 열의 이름이 동일해야 함

x<-1:100
sum(x>50)
출력결과: 50이 나옴sum()함수 안의 내용이 결과로 출력이됨 50보다 큰수 하나만 나옵니다

<b>단일값(Scalar)</b>
- R에서는 원소가 하나인 벡터로 인식/처리

<b>행렬(Matrix)</b>
- R에서는 차원을 가진 벡터로 인식

<b>배열(Arrays)</b>
- 행렬에 3차원 또는 n차원까지 확장된 형태
- 주어진 벡터에 더 많은 차원을 부여하여 배열을 생성

<b>요인(Factor)</b>
- 범주형 데이터를 저장하기 위한 데이터 타입
- 벡터처럼 생겼지만, R에서는 벡터에 있는 고유값(unique value)의 정보를 얻어내는데, 이 고유값들을 요인의 수준(level)이라고 한다.
- 요인의 두가지 주된 사용처로 범주형 변수, 집단분류가 있다.


- melt(): 원데이터 형태로 만드는 함수(쉬운 casting을 위해 적당한 형태로 만들어줌)

- cast(): 요약 형태로 만드는 함수(데이터를 원하는 형태로 계산 또는 변형 시켜줌)


princomp: 주성분 분석

glm: 로지스틱 회귀 분석 

