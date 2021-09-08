# AlgDesing이 설치 되어 있지 않다면 다음 명령어를 통해 설치해야한다.
# install.packages("AlgDesign")
library(AlgDesign)

# 최적화 데이터를 뽑고자 하는 입력 데이터
input = read.csv("/Users/bdlab/Desktop/sparse-matrix-multiplication/scenario-extraction/dataset/2.spmm/only-non-square/lr-150000-lc-100000-rc-50000/spmm-original-contain-todense-2000-without-latency.csv")

# data : 입력 데이터 , nTrials : 뽑을 데이터 개수, nRepeats : 전체 프로세스 반복 횟수, criterion : 사용할 최적화 방법
output = optFederov(data=input, nTrials=1800, nRepeats=20,criterion = "D")

# 전체 결과
output

# 추출된 행렬
output$design

# 출력제한 늘리기
options(max.print=1000000)

# 추출된 행렬의 행 번호
output$rows

# setwd("/Users/bdlab/Desktop/sparse-matrix-multiplication/scenario-extraction/dataset/spmm-latency-dataset/extract-dataset-using-d-optimal/dataset-for-compare-random")

# 추출된 행렬 csv로 저장, 작업 경로 변경 필요시 setwd("경로")로 변경
# write.csv(output$design, file="train-data-100-using-doe.csv", row.names=FALSE) # row.names : 행 포함 여부

