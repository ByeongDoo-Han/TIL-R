# R ȯ�漳��
# �۾����丮 Ȯ�� �� ����(�ӽ���)

getwd()
setwd('C:---')

# �۾����丮 ���� ����
# Tools > Global Options > general > Default working directory ����

# ���� : �������� �ּ� ó��
# Ctrl + shift + C

# ����
v1 <- 1
a1 <- 1
b1 <- 2
c1 <- 2
# C�� combine �Լ��� �����̱� ������ C�� ������ �������� �ʴ´�.

v_sum <- a1 + b1 + c1

c2 <- 'a'

#�����ݷ��� �������� ������ ����
c3 <- "a      b" ; c3

# class �Լ��� ������ Ÿ�� Ȯ��
class(c3) #character
class(b1) #numeric
d1 <- Sys.Date() #date
class(d1)
d1

# �������
c1 <- '10'
a1 + v1     # ���ں������� ���갡��
c1 + a1     # ���ں����� ���ں��� ���� �Ұ�
            # (������ ����ȯ X)
d1 + 100    # ��¥�� ���ڻ�� ���� ����
c('1', 2)


# �� ��ȯ �Լ�
as.numeric()
as.character()
as.Date()

# ������ ������ �� �Ҵ�
seq1 <- 1:10 #���ڴ� ����
'a' :'f'     #���ڴ� �Ұ���

# �Լ��� �����
substr('abcde', 2,3)
substr('abcde', 2,1)
substr('abcde', 2,2)
    # ���� �������ָ� ������ ������ �� �ִ�.
substr(x='abcde', stop=3, start=2)

seq()

help(seq)

seq(from = 1,
    to = 10,
    by = ((to - from)/(length.out - 1)))

seq(1,10,2)

# ��¥�� ����ȯ, �Ľ�
d2 <- as.Date('2020/02/25') + 100
as.character(d2)
as.character(d2, '%A')
as.character(d2, '%Y/%m/%d')
as.character(d2, '%H:%M:%S')
as.character(d2, '%A')
as.character(d2, '%A')


# [��������]
# 1. 2020�� 1�� 1�Ϻ��� 1�� 31�ϱ��� ��¥�� ���� ���
seq(as.Date('2020-1-1'),
    as.Date('2020-1-31'),
    by = 1)

seq(as.Date('2020-1-1'),
    as.Date('2020/12/31'), by='month')
# 2. 2020�� 6�� 8�Ϻ��� ���ó�¥���� ���� �ϼ� ���
as.Date('2020-6-8') - Sys.Date()

# ���� ���ǿ� ����� �����̸����� ��� ���
objects()
objects(all.names=T)
ls()
# ����� ��纯�� ����
rm(list = ls())
#Ư������ ����
rm(list = "sum")

# ��������ȣ
7 %/% 3 
7 %% 3
3e3 # 3 * 10^3
2e2 # 2 * 10^2
100000000
1e-1 # 0.1

# NA�� NULL
cat(1,NA,2)   # �ڸ��� ����
cat(1,NULL,2) # ���� �������̹Ƿ� �ڸ��� �����Ұ�

# NA�� NULL�� ����
sum(1,NA,3)   # NA�� ������ ���� NA
sum(1,NULL,3) # NULL�� ������ ���� NULL�� ���¼�ġ�� ����
# NA ��NULL�� ���� �������� ��
NA + 1   #NA�� ����
NULL + 1 #numeric(0)

sum <- 1
sum(c(1,2,3))
sum(1,2,3)
sum
c(1,2,3)
list(1,2,3)

# ����� ���� ����
rm(list = "sum")

# ��¥ ���� �ܺ� ��Ű�� : lubridate
install.packages('lubridate')
library(lubridate)

date1 <- now() ; date1; class(date1)
as.character(date1, '%Y')

year(date1)             # ��
month(date1)            # ��, ��������
month(date1, label = T) # ��, �������� 
                        # (�����϶��� ���ڷ� ����)

day(date1)              # ��
wday(date1)             # ���� ����
wday(date1, label = T)  # ���� �̸�
hour(date1)             # ��
minute(date1)           # ��
second(date1)           # ��
second(now())
second(now())

date1 + months(6)   #6���� ��
date1 + years(6)    #6�� ��
date1 + days(6)     #6�� ��
date1 + hours(6)    #6�ð� �� 

# ��¥ ��� ����
Sys.setlocale('LC_TIME', 'C') # ���� ��¥�� ����
Sys.setlocale('LC_TIME', 'KOREAN') # �ѱ۷� ����
Sys.setlocale('LC_TIME', 'JAPANESE')
Sys.setlocale('LC_TIME', 'CHINESE')
Sys.setlocale('LC_TIME', 'TAI')

# [��������]
# 2020�� 2���� �Ϻ� �����͸� ���, 
# �� �� v_year ��� �÷��� �⵵��
# v_month
# v_day
# v_bonus_date �� 6���� �� �����͸� �Է�


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