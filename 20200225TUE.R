# R 환경설정
# 작업디렉토리 확인 및 변경(임시적)

getwd()
setwd('C:---')

# 작업디렉토리 변경 고정
# Tools > Global Options > general > Default working directory 수정

# 참고 : 여러라인 주석 처리
# Ctrl + shift + C

# 변수
v1 <- 1
a1 <- 1
b1 <- 2
c1 <- 2
# C는 combine 함수의 약자이기 때문에 C는 변수로 지정하지 않는다.

v_sum <- a1 + b1 + c1

c2 <- 'a'

#세미콜론은 변수명의 연속적 실행
c3 <- "a      b" ; c3

# class 함수로 데이터 타입 확인
class(c3) #character
class(b1) #numeric
d1 <- Sys.Date() #date
class(d1)
d1

# 산술연산
c1 <- '10'
a1 + v1     # 숫자변수끼리 연산가능
c1 + a1     # 문자변수와 숫자변수 연산 불가
            # (묵시적 형변환 X)
d1 + 100    # 날짜와 숫자상수 연산 가능
c('1', 2)


# 형 변환 함수
as.numeric()
as.character()
as.Date()

# 변수에 연속적 값 할당
seq1 <- 1:10 #숫자는 가능
'a' :'f'     #문자는 불가능

# 함수의 사용방법
substr('abcde', 2,3)
substr('abcde', 2,1)
substr('abcde', 2,2)
    # 값을 지정해주면 순서를 무시할 수 있다.
substr(x='abcde', stop=3, start=2)

seq()

help(seq)

seq(from = 1,
    to = 10,
    by = ((to - from)/(length.out - 1)))

seq(1,10,2)

# 날짜의 형변환, 파싱
d2 <- as.Date('2020/02/25') + 100
as.character(d2)
as.character(d2, '%A')
as.character(d2, '%Y/%m/%d')
as.character(d2, '%H:%M:%S')
as.character(d2, '%A')
as.character(d2, '%A')


# [연습문제]
# 1. 2020년 1월 1일부터 1월 31일까지 날짜를 동시 출력
seq(as.Date('2020-1-1'),
    as.Date('2020-1-31'),
    by = 1)

seq(as.Date('2020-1-1'),
    as.Date('2020/12/31'), by='month')
# 2. 2020년 6월 8일부터 오늘날짜까지 남은 일수 출력
as.Date('2020-6-8') - Sys.Date()

# 현재 세션에 선언된 변수이름들을 모두 출력
objects()
objects(all.names=T)
ls()
# 선언된 모든변수 삭제
rm(list = ls())
#특정변수 삭제
rm(list = "sum")

# 산술연산기호
7 %/% 3 
7 %% 3
3e3 # 3 * 10^3
2e2 # 2 * 10^2
100000000
1e-1 # 0.1

# NA와 NULL
cat(1,NA,2)   # 자릿수 고정
cat(1,NULL,2) # 없는 데이터이므로 자리수 고정불가

# NA와 NULL의 연산
sum(1,NA,3)   # NA의 연산의 값은 NA
sum(1,NULL,3) # NULL의 연산의 값은 NULL을 없는셈치고 연산
# NA 와NULL의 연산 나열했을 때
NA + 1   #NA로 리턴
NULL + 1 #numeric(0)

sum <- 1
sum(c(1,2,3))
sum(1,2,3)
sum
c(1,2,3)
list(1,2,3)

# 저장된 변수 삭제
rm(list = "sum")

# 날짜 관련 외부 패키지 : lubridate
install.packages('lubridate')
library(lubridate)

date1 <- now() ; date1; class(date1)
as.character(date1, '%Y')

year(date1)             # 년
month(date1)            # 월, 숫자형식
month(date1, label = T) # 월, 문자형식 
                        # (영어일때만 글자로 나옴)

day(date1)              # 일
wday(date1)             # 요일 숫자
wday(date1, label = T)  # 요일 이름
hour(date1)             # 시
minute(date1)           # 분
second(date1)           # 초
second(now())
second(now())

date1 + months(6)   #6개월 후
date1 + years(6)    #6년 후
date1 + days(6)     #6일 후
date1 + hours(6)    #6시간 후 

# 날짜 언어 변경
Sys.setlocale('LC_TIME', 'C') # 영어 날짜로 변경
Sys.setlocale('LC_TIME', 'KOREAN') # 한글로 변경
Sys.setlocale('LC_TIME', 'JAPANESE')
Sys.setlocale('LC_TIME', 'CHINESE')
Sys.setlocale('LC_TIME', 'TAI')

# [연습문제]
# 2020년 2월의 일별 데이터를 출력, 
# 그 중 v_year 라는 컬럼에 년도만
# v_month
# v_day
# v_bonus_date 는 6개월 후 데이터를 입력


v_day <- day(seq(as.Date('2020-02-01'), 
             as.Date('2020-03-01')-1, by=1))

v_month <- month(seq(as.Date('2020-02-01'), 
                     as.Date('2020-03-01')-1, by=1))
v_year <- year(seq(as.Date('2020-02-01'), 
                   as.Date('2020-03-01')-1, by=1))

v_bonus_date <- seq(as.Date('2020-02-01') + months(6), 
                        as.Date('2020-03-01') + months(6) -1, by=1)
v_bonus_date
as.Date('2020-02-01') + months(6)
seq(as.Date('2020-02-01'), 
    as.Date('2020-03-01'), by=1) + months(6)


df <- data.frame(v_year, v_month, v_day)
df


v1 <- seq(as.Date('2020-01-01'),as.Date('2020-12-31'),1)
v2 <- as.character(v1, '%m-%d')
wday(as.Date('2019/04/25')+100, label=T)
wday(as.character(as.Date('2019/04/25')+100), label = T)

v_hiredate <- c('2018/04/06', '2019/12/23', '2019/05/04')
(Sys.Date() - as.Date(v_hiredate)) / 7
