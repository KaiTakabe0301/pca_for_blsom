# 主成分分析を行いたいベクトルデータを読み込み
pca<-read.table("sample/train/convImg2Txt.txt")

# 主成分分析
resultF<-prcomp(pca,scale=F)

# 固有ベクトルを書き出し
rotation <- resultF$rotation[,1:2]
write.table(rotation,"sample/result/rotation.txt",quote=F)

# 固有値を書き出し
sdev<-resultF$sdev[1:2]
write.table(sdev,"sample/result/sdev.txt",quote=F)

# 平均ベクトルを書き出し
aveVec<-colMeans(pca)
write.table(aveVec,"sample/result/average_vector.txt",quote=F)