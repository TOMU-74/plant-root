# Plant-root

## 根のセグメンテーション

根箱やシードパックを撮影した画像から根のセグメンテーションを行った．解析対象の画像は，成長観察のためにいくつかの個体を数回に渡り撮影したもの 
![138-P-1_211124](https://user-images.githubusercontent.com/51512765/156523396-3497deec-07c6-449a-b543-686be297dc40.png)

* srsu/src_/unet/test_resized.py  

## 位置合わせ

画像ごとに画角，被写体との距離が異なるため，×印の位置をもとに射影変換により位置合わせをした

* pynb/位置合わせ(画像中の座標取得・射影変換).ipynb

位置合わせをした後もわずかにズレが残るため，画像処理(膨張・縮小・閾値処理等)によりそれらを軽減した

* pynb/remove_noise_from_transformed.ipynb

## 差分抽出・描画

ズレが軽減できたら撮影と撮影の間での成長の度合いを確認するため，差分の描画した

* pynb/extract_diff.ipynb(差分抽出)
* pynb/draw_diff.ipynb(差分の描画)
* pynb/caption.ipynb(差分の描画に用いた画像右上のキャプションの作成)

![138-P-1_211129](https://user-images.githubusercontent.com/51512765/156688297-9decb6a6-71da-4781-8c18-63b5bcc51ede.png)



## projection profile

画像中のどの部分が活発に成長しているかを調べるため，差分画像に対しprjection profileを計算

* pynb/prjection profile.ipynb

![horizontal_138-P-1](https://user-images.githubusercontent.com/51512765/156716313-8a2dee7d-7876-4ee2-b70f-51a53c5de099.png)

## [参考文献](https://github.com/t-nakatani/plant-root/blob/main/paper.md)

[plant-root.bib](https://github.com/t-nakatani/plant-root/blob/main/plant-root.bib)