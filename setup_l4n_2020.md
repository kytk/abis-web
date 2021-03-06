# Lin4Neuro仮想マシンのセットアップ方法（2020年）


## 1. VirtualBox 6.1 のインストール

チュートリアルでは、VirtualBox 6.1 上で Lin4Neuro を動作させます。最新版の Lin4Neuro は、VirtualBox 6.1で最適化されているため、前のバージョンのVirtualBoxを使用の方は必ず6.1にアップグレードしてください。

- [VirtualBoxのサイト](https://www.virtualbox.org/wiki/Downloads){:target="_blank"} から、ご自身のOSにあったVirtualBoxのインストーラーをダウンロードします。

- ダウンロードしたインストーラーを用いてVirtualBox 6.1 をインストールします。

- インストール後は以下のような画面になります。

![セットアップ後画像](img/vb01.png)

## 2. Lin4Neuro仮想アプライアンスのダウンロード

Lin4Neuroの仮想アプライアンスを以下からダウンロードします。26GBありますので、十分にネットワークが安定しているところ、かつ、十分に容量があるところにダウンロードしてください。

- [L4N-1804-abis-20200927.ovaのダウンロード](https://www.dropbox.com/t/v64JhpdLBNBeL8ls){:target="_blank"}

## 3. Lin4Neuro仮想アプライアンスのインポート

ダウンロードした仮想アプライアンスを用いて仮想マシンをインポートします。

- VirtualBoxのメニューから **ファイル** → **仮想アプライアンスのインポート** を選択します。

![仮想アプライアンスのインポート1](img/vb02.png)

- ファイルに、ダウンロードした **L4N-1804-abis-20200927.ova** を指定し、 **次へ** をクリックします。

![仮想アプライアンスのインポート2](img/vb03.png)

- 設定画面が出ます。ひとつだけ気をつけていただきたいのが、 **Machine Base Folder** です。このフォルダの下に仮想マシンがインストールされます。必ず、100GB以上あいているところを指定してください(容量が十分にある場合は、デフォルトのままでかまいません)。外部ハードディスクを指定することもできます。SDカードは、速度が異常に遅く実用性に耐えられませんので、使わないでください。

- 設定を確認したうえで、 **インポート** をクリックしてください。
- インポートには10−15分程度かかります。辛抱強くお待ちください。

![仮想アプライアンスのインポート3](img/vb04.png)

- インポートが終了すると、VirtualBoxのメイン画面に、 **L4N-1804-abis** が表示されます。

![仮想アプライアンスのインポート4](img/vb05.png)

## 4. 共有フォルダのセットアップ

- 30GB以上あいているところに、Macの方はFinderから、Windowsの方はエクスプローラーから、 **share** というフォルダを作成します。すべて小文字で作成してください。

- あとで確認するため、作成した share フォルダに、何か適当なファイルを入れておいてください。

- VirtualBoxのメイン画面で、L4N-1804-abisをクリックし、選択してから、 **設定** をクリックします。

![共有フォルダの設定1](img/vb06.png)

- 設定画面の左側のペインで **共有フォルダー** をクリックしたうえで、画面右側の共有フォルダを追加するアイコンをクリックします。

![共有フォルダの設定2](img/vb07.png)

- **フォルダーのパス** の右側の▼から、**その他...** を選択し、先程作成した **share** フォルダを選択します。

- フォルダー名が **share** になっていることを確認します。

- **読み込み専用** と **自動マウント** は**チェックが入っていない**ことを確認してください。

- このうえで、 **OK** をクリックします。

![共有フォルダの設定3](img/vb08.png)

## 6. メモリとCPUの設定

- 次に、設定画面の上から2番め、**システム** をクリックします。

- メインメモリーがデフォルトでは、4096MBとなっています。これを、ご自身のPCのメモリに余裕があるならば、増やしてください。Windows/macOSが安定して動くためには、システムに最低4GB(できれば8GB)を与えることは必要です。そのうえで、Lin4Neuroのメモリを増やすことで、動きが改善します。できれば、デスクトップマシンで16GBのメモリを搭載しているならば、仮想マシンに8GB, すなわち8192MBと設定してあげてください。

![メモリの設定](img/vb19.png)

- 次に、「プロセッサー」のタブをクリックしてください。デスクトップPCでコア数を多く積んでいるPCで動かす場合は、このプロセッサー数を増やしていただくことで、Lin4NeuroでCPUでの並列計算ができるようになります。インジケーターが緑の範囲であれば増やすことは問題ありません。（その分、仮想マシンが動いている場合は、ホストのWindows/macOSで使えるCPUのコア数が減りますのでご了承ください）

![プロセッサーの設定](img/vb20.png)

- これで、設定は終了です。

## 6. Lin4Neuroの起動

- VirtualBoxのメイン画面から、 **L4N-1804-abis** を選択したうえで、 **起動** をクリックします。

![Lin4Neuroの起動1](img/vb09.png)

- ログイン画面が立ち上がります。パスワードは **lin4neuro** です。すべて小文字です。

![Lin4Neuroの起動2](img/vb10.png)

## 7. 共有フォルダの確認

- 画面左上にある **sf_share** は共有フォルダとして設定したものです。

- sf_share をダブルクリックし、先程試しに入れたファイルが見えることを確認してください。

## 8. 画像解析ツールの確認

- ログインした後、左下の脳のアイコンをクリックし、 **脳画像解析** をクリックすると、インストールされているソフトウェアを確認できます。

![画像解析ツール](img/vb11.png)

## 9. FreeSurferの確認

FreeSurferのツールはアイコンが準備されていません。以下で確認します。

- 画面左下の脳アイコンの右側にあるターミナルアイコンをクリックし、ターミナルを起動します。

![ターミナルの起動](img/vb12.png)

- ターミナルに以下をタイプします。間違えないように注意深くタイプしてください。shとbertの間には半角スペースが入ります。

```fs_view_vol.sh bert```

- 以下のような画面が出れば、FreeSurferがきちんと動作することを確認できます。

![FreeSurferの起動](img/vb13.png)

## 10. トラブルシューティング

### 英語キーボードを使用する場合

- 配布しているLin4Neuroの仮想マシンは日本語キーボードで設定されています。英語キーボードにするには、以下の作業を行ってください。

- メニューから "設定" -> "Fcitx設定" を選択します。

![Fcitx設定1](img/vb16.png)

- 画面下の矢印を使って、"キーボード - 英語(US)" が一番来るようにして、ウィンドウを閉じます。

![Fcitx設定2](img/vb17.png)

### 画面のフォントが小さい場合

- VirtualBoxのメニューから "表示" -> "仮想スクリーン" -> "XX%にスケール" を選択してください。適宜見やすい大きさに調整してください。

![画面のスケール](img/vb18.png)

## 11. 仮想マシンの削除

1. 仮想マシンを削除するには、VirtualBoxのメイン画面で、削除したい仮想マシンを選び、右クリックをして、**除去(R)...** を選択します。

![仮想マシンの削除1](img/vb14.png)

2. 次にあらわれる画面で、**すべてのファイルを削除** を選択します。

![仮想マシンの削除2](img/vb15.png)

