# 第8回ABiS脳画像解析チュートリアル

ここは、2020年2月29-3月1日に開催予定である **『先端バイオイメージング支援プラットフォーム・FreeSurferチュートリアル』** の受講者を対象とした情報提供サイトです。新しい情報があれば、随時このサイトへ追加していきますので、定期的にアクセスするようにして下さい。

## 新着情報

- 2020.02.10: Lin4Neuroで英語キーボードを使う場合や画面の文字サイズの変更したい場合の方法について追記しました。
- 2020.02.09: 予定および準備事項をアップデートしました。
- 2020.01.28: ソフトウェアの準備などについての情報をアップしました。
- 2020.01.27: 予定をアップデートしました。
- 2020.01.09: 勉強会用ウェブサイトを立ち上げました。

## 会場案内

- [自然科学研究機構生理学研究所1F大会議室](http://www.nips.ac.jp/){:target="_blank"} 
- [会場までの経路](http://www.nips.ac.jp/profile/access.html){:target="_blank"} **必ずご参照ください。明大寺地区になります**


## チュートリアル当日のお願い

- 下記の時間帯以外、生理学研究所 実験研究棟の玄関が施錠されます。これらの時間外に、入館を予定されている方は、事務局までご連絡下さい。

    - 02/29 8:00-10:00, 12:00-14:00, 17:00-18:00 
    - 03/01 8:00-10:00, 12:00-14:00, 15:00-17:00

- 当日、生理研のキャンパス内には、**売店を含め食事をする施設がございません。** 昼休みはの時間は短いため、各自、コンビニなどで、当日の昼食を準備してご持参ください。コンビニの場所などは、[こちらの地図](https://github.com/kytk/abis-web/blob/master/pdf/higashiokazaki-map.pdf){:target="_blank"} を参照してください。

- 生理学研究所 実験研究棟は、全館、土足禁止です。受講者は各自上履き（スリッパなど）、普段靴を入れるビニール袋をご持参ください。

- 開場時間は **08：30** です。

- 会場に到着したら、まず受付をお願いします。


## チュートリアルのスケジュール(予定)

| 日程		| 内容 							| 
---- | ----
| 2月29日 	| 							|
| 08:30		| 開場							|
| 09:00-09:10	| 開会							|
| 09:10-10:10	| 第1部(1): FreeSurferの概要/recon-all (筑波大・根本)	|
| 10:20-11:20	| 第1部(2): Freeview/ROI解析 (根本)			|
| 11:30-12:30	| 第1部(3): 統計学的仮説検定 (佐賀大・川口)		|
| 12:30-13:20	| -- 昼 食 --						|
| 13:20-14:20	| 第2部(1): Freeviewを用いたFreeSuferのトラブルシューティング (岩手医大・山下) |
| 14:30-15:30	| 第2部(2): 3D Slicerを用いたFreeSuferのQC (山下)	|
| 15:40-16:40	| 第2部(3): 3D Slicerを用いたFreeSuferのトラブルシューティング (山下)		|
| 16:50-17:50	| 第3部(1): グループ解析(根本)				|
| 17:50-18:00	| 質疑応答						|
| 3月3日	|							|
| 09:00-10:00	| 第3部(2): GLMケーススタディ (根本)			|
| 10:10-11:10	| 第3部(3): 縦断解析 (根本)				|
| 11:20-12:20	| 第3部(4): 線形混合モデル (川口)			|
| 12:20-13:30	| -- 昼 食 -- 						|
| 13:30-14:30	| 第4部(1): FreeSurferのDTIでの実装 (慶応大学・上田)|
| 14:40-15:40	| 第4部(2): FreeSurferの結果を他のソフトで使うための応用 (根本)|
| 15:40		| 閉会							|


## パソコンの持参について

- 勉強会では、受講者にPCを持参して頂き、実際に操作しながらコマンドラインについて学んでいきます。PCのスペックについては、以下の **推奨条件** を参考にして下さい

	- OS: Windows 8〜10 64 bit版 または macOS 10.12.6（Sierra）〜 10.14（Mojave）【注意：今回 macOS 10.15（Catalina）はサポート対象外です。現行のFreeSurferは10.15上では正しく動作しないプログラムがいくつかあります。もし、Catalinaをお使いの場合は、VirtualBox上のLin4Neuroで動かしていただくこととなります。】
	- CPU: Intel Core i7/i9、Intel Core i5（クロック周波数2.0GHz以上）、または AMD Ryzen 5以上の性能を有するもの
	- メモリ：8GB以上 (8GB未満では動作しません)
	- ハードディスク：100GB以上の空き容量(外付けハードディスクも可)
	- 2ボタン以上のUSBマウス（必須ではありませんが、持っていると便利です）
    
## 事前準備

- チュートリアルに向けて、以下の準備をお願いします。
    A. ソフトウェアの準備
    B. FreeSurfer用スクリプトの準備
    C. チュートリアルテキストの入手
    D. データの入手

### A. ソフトウェアの準備

#### (1) Lin4Neuroで参加する場合

- [こちら](./setup_l4n.md){:target="_blank"} を必ずご覧いただき、準備してください。なお、2020年1月に開催されたFreeSurfer勉強会、2020年2月8-9日に開催された第7回ABiS脳画像解析チュートリアルでLin4Neuroをセットアップされた方々は、それをそのままお使いください。

#### (2) 自前のmacOS/Linux環境で参加する場合

- ソフトウェアのインストール

    - ご自身でMac/Linuxを操作する方は、下記を参考に、FreeSurfer, 3D Slicer, FSL を各自セットアップしてきてください。
	- FreeSurfer: [macOSへのFreeSurfer6.0のインストール](http://www.nemotos.net/?p=1948){:target="_blank"}  
	- [3D Slicer](https://download.slicer.org/){:target="_blank"} 
	- FSL: [FSLのmacOSへのインストール方法](https://www.nemotos.net/?p=243){:target="_blank"} 

- データディレクトリのセットアップ

    - ターミナルから以下を実行してください。これは、チュートリアルの全受講者でデータディレクトリのパスを共通化するためのものです。

        ```
        mkdir ~/share
        sudo sh -c "umask 022 ; mkdir /media ; ln -s ~/share /media/sf_share"
        ```


### B. FreeSurfer用スクリプトの準備

- チュートリアルで用いるスクリプトを以下に従って準備してください。

- Lin4NeuroもしくはmacOSでターミナルを起動します。

- `cd git`をタイプします。Lin4Neuroは確実にありますが、MacOSの方でエラーになる場合は、`mkdir git`として git ディレクトリを作成し、再度 `cd git` としてください。

- 以下をタイプしてください。

    ```
    ls
    ```

- この際、`fs-scripts` があるようでしたら、以下をタイプして、一度削除してください。リニューアルしたため、この作業をお願いします。

    ```
    rm -rf fs-scripts
    ```

- 以下をタイプ(もしくはコピー＆ペースト)します。

    ```
    git clone https://gitlab.com/kytk/fs-scripts.git
     （今回は、github ではなく、gitlab を使用しますのでご注意下さい）
    ```

- これで、ホームディレクトリの下の git ディレクトリに、 **fs-scripts** というディレクトリが作成されます。

- 次に、このディレクトリをパスに通します。以下をタイプします。(1回だけで大丈夫です)

    ```
    cd fs-scripts
    ./addpath.sh
    ```

- そうすると次のような表示が出ます。

    ```
    Which OS are you using? Select number.
    1) Linux
    2) MacOS
    3) quit
    ```

- Lin4Neuroの方は 1 を、macOSの方は 2 をタイプしてください。そうすると、以下が表示されます。

    ```
    PATH for fs-scripts was added to ~/.bashrc (Macの場合は~/.bash_profile)
    Please close the terminal, re-open and run checkpath.sh.
    ```

- ターミナルを一度閉じてください。そして、新たにターミナルを起動し、以下をタイプしてください。

    ```
    checkpath.sh
    ```

- これで、以下が表示されれば無事にパスに追加されました。

    ```
    Success! fs-scripts is added to path.
    ```

- スクリプトのアップデートの案内があった場合には、以下をタイプしてください。

    ```
    cd ~/git/fs-scripts
    git pull
    ```

### C. チュートリアルテキストの入手 (2020年2月16日以降に案内します)

- 本チュートリアルで使用するテキストは、GitLabというデータ共有サービスを通して配布します。利用に必要なアカウント名やパスワードは受講者宛のメールで別途お伝えします。ここで配布されるものは、チュートリアル当日まで更新される可能性がありますので、こまめに（特に参加直前に）アップデートするようにして下さい。なお、アカウント名、パスワードは2020年2月11日にご案内する予定です。

1. 初めてセットアップする時: ターミナル（Lin4Neuro では、左下のスタートアイコンの隣にあるアイコンから起動できます。macOS では、アプリケーション ＞ ユーティリティの中にあります）から以下を実行して下さい

    ```
    cd /media/sf_share
    git clone https://gitlab.com/kytk/abis-202003.git
     （今回は、github ではなく、gitlab を使用しますのでご注意下さい）
    ```

2. ディレクトリを更新する時: ターミナルから以下を実行してください
    ```
    cd /media/sf_share/abis-202003
    git pull
    ```
	
#### プロキシサーバーなどを使っている場合

- PCがプロキシサーバを経由して外部ネットワークに接続されている場合は、先にターミナルから以下のコマンドを入力し、Gitに対するプロキシ設定を行って下さい

    ```
    git config --global http.proxy  http://プロキシ名:ポート番号
    git config --global https.proxy http://プロキシ名:ポート番号
    ```

- プロキシ名やポート番号は、所属機関･部署のネットワーク管理者にお尋ね下さい。

- プロキシ設定が不要になった時は、以下のコマンドによって解除できます：

    ```
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    ```

### D. データの入手 (2020年2月16日以降に案内します)

- チュートリアルに使うデータは非常に大きいため、GitLabではなく、別にダウンロードしていただきます。準備ができた時点で案内します。


## 問い合わせ

- 準備がうまくいかない時のために、問い合わせフォームを準備しています。こちらからご質問ください。数日以内に担当者から返信させていただきます。

- [問い合わせフォーム](https://forms.gle/vMRau1iUaCkvgDQf6){:target="_blank"} 


