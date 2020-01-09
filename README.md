# 第8回ABiS脳画像解析チュートリアル

ここは、2020年2月29-3月1日に開催予定である **『先端バイオイメージング支援プラットフォーム・FreeSurfer/DeepLearningチュートリアル』** の受講者を対象とした情報提供サイトです。新しい情報があれば、随時このサイトへ追加していきますので、定期的にアクセスするようにして下さい。

## 新着情報

- 2020.01.09: 勉強会用ウェブサイトを立ち上げました。

## 会場案内

- [自然科学研究機構生理学研究所1F大会議室](http://www.nips.ac.jp/)
- [会場までの経路](http://www.nips.ac.jp/profile/access.html) **必ずご参照ください。明大寺地区になります**


## チュートリアル当日のお願い

- 下記の時間帯以外、生理学研究所 実験研究棟の玄関が施錠されます。これらの時間外に、入館を予定されている方は、事務局までご連絡下さい。

    - 02/29 8:00-10:00, 12:00-14:00, 17:00-18:00 
    - 03/01 8:00-10:00, 12:00-14:00, 15:00-17:00

- 当日、生理研のキャンパス内には、**売店を含め食事をする施設がございません。** 昼休みはの時間は短いため、各自、コンビニなどで、当日の昼食を準備してご持参ください。コンビニの場所などは、[こちらの地図](https://github.com/kytk/abis-web/blob/master/pdf/higashiokazaki-map.pdf)を参照してください。

- 生理学研究所 実験研究棟は、全館、土足禁止です。受講者は各自上履き（スリッパなど）、普段靴を入れるビニール袋をご持参ください。

- 開場時間は **08：30** です。

- 会場に到着したら、まず受付をお願いします。


## チュートリアルのスケジュール

- T.B.A.


## パソコンの持参について

- 勉強会では、受講者にPCを持参して頂き、実際に操作しながらコマンドラインについて学んでいきます。PCのスペックについては、以下の **推奨条件** を参考にして下さい

	- Windowsユーザー
		- Windows 7以降 **64bit版**
		- メモリ：8GB以上
		- ハードディスク：100GB以上の空き容量(外付けハードディスクも可)
		- 2ボタン以上のUSBマウス（必須ではありませんが、持っていると便利です）
    
	- Macユーザー
		- macOS 10.11(El Captain)以降
		- メモリ：8GB以上
		- ハードディスク：100GB以上の空き容量(外付けハードディスクも可)
		- 2ボタン以上のUSBマウス（必須ではありませんが、持っていると便利です）

    

## 事前準備

### (1) Lin4Neuroで参加する場合

- [こちら](./setup_l4n.md){:target="_blank"} をご覧いただき、準備してください。

### (2) 自前のmacOS環境で参加する場合

- T.B.A.

<!--

1. ソフトウェアのインストール

    - ご自身でMacを操作する方は、下記を参考に、FreeSurfer, 3D Slicer と DeepLearningに必要な以下のPythonツールを各自セットアップしてきてください。
	- FreeSurfer: [macOSへのFreeSurfer6.0のインストール](http://www.nemotos.net/?p=1948)
	- [3D Slicer](https://download.slicer.org/)

2. GitHubの設定

    - チュートリアルで使うスクリプトなどはGitHub経由で配布します。このため、gitの設定が必要になります。(macOS上でLin4Neuroを動作させる方は、以下の作業は不要です。)
    - gitディレクトリを準備
		- ホームディレクトリの下にgitディレクトリを準備します。
		- ターミナルを立ち上げ、以下をタイプしてください。

            ```
            cd
            mkdir git
            ```

	- チュートリアル用スクリプトのリポジトリをダウンロード
   		- 以下をそのままコピー＆ペーストしてください。

            ```
            cd ~/git
            git clone https://github.com/kytk/fs-scripts.git
            ```

	- UsernameとPasswordを聞かれます。受講者メールに記載されているUsernameとPasswordを記載してください。 そうするとダウンロードが始まります。ダウンロードは約5GBありますのでしばらくかかります。

3. パスの設定

    - 過去のFreeSurferチュートリアルに参加された方々

	- 以下のコマンドにより、.bash_profileを開きます。

            ```
            cd
            open -e ~/.bash_profile
            ```

	- "export PATH=$PATH:~/git/abis/fs-scripts" といった文字列がある行を削除し、保存してテキストエディットを閉じてください。


    - 今回のチュートリアル用のパス設定	
	- ターミナルから以下をそのままコピー＆ペーストしてください。タイプする際は、シングルクォーテーションであることに注意してください。ダブルクォーテーションではありません。

            ```
            echo ' ' >> ~/.bash_profile
            echo '#PATH for fs-scripts' >> ~/.bash_profile
            echo 'export PATH=$PATH:~/git/fs-scripts' >> ~/.bash_profile
            echo ' ' >> ~/.bash_profile
            ```

	- ちなみに上記のコードは以下の意味です。

            - 空白スペースと改行を .bash_profile に追記しなさい。
            - #PATH for fs-scripts という文字列を .bash_profile に追記しなさい。
            - export PATH=$PATH:~/git/abis-201903/1-3_freesurfer/fs-scripts という文字列を .bash_profile に追記しなさい。 
            - 空白スペースと改行を .bash_profile に追記しなさい。

5. ターミナルを再起動

    - ターミナルを一度閉じ、そのうえでターミナルを再度起動します。

6. プログラムの起動確認

    - ターミナルから以下をタイプしてください。

        ```
        fs_check_6.0.sh
        ```

    - 以下のような画像が得られれば設定が無事に完了しています。

![FreeSurfer_check](./img/fs_check.png)



### (3) subjectsデータの入手

- 2月19日以前に abis-201903 フォルダの入手をされた方は、一度削除してください。
    - Windowsの方は、"share" -> "abis-201903" フォルダになります。
    - macOS の方は、 "git" -> "abis-201903" フォルダになります。

- 上記 (1), (2) に従って、再度、abis-201903 のダウンロードを行ってください。データが多くないため、時間はさほどかかりません。

- その後、abis-201903 フォルダに移動し、スクリプトを実行します。

    - Lin4Neuro の方は、ターミナルを起動し、以下をタイプしてください。
      ```
      cd /media/sf_share/abis-201903/1-3_freesurfer
      ./get_subjects.sh
      ```

    - macOSネイティブで FreeSurferチュートリアルを受けれる方は、ターミナルを起動し、以下をタイプしてください。
      ```
      cd ~/git/abis-201903/1-3_freesurfer
      ./get_subjects.sh
      ```

- こちらで、チュートリアルに使用する subjects がダウンロードされます。
- チュートリアル前に必ずこの作業を実行してください。

### プロキシサーバーなどで git clone / pull がうまくいかない場合
プロキシサーバー経由だと git clone / pull がうまくいかない場合があります。
そのような場合は、下記PDFを参考に当日使用するサンプルデータとテキストを入手してください。

- [ABiSチュートリアルデータダウンロード方法](https://github.com/kytk/abis-web/raw/master/pdf/ABiS_Data_GitHub.pdf)
	
## 問い合わせ

準備がうまくいかない時のために、問い合わせフォームを準備しています。こちらからご質問ください。数日以内に担当者から返信させていただきます。

[問い合わせフォーム](https://docs.google.com/forms/d/e/1FAIpQLSc-JX20lvmM3LzSbTKIywtepqwBB-06kVN6AvEFzs-1kcjhHA/viewform?usp=sf_link)


-->
