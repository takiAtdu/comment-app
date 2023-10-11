---
layout: ja
title: MacPortsでインストール
---
== Mac OS XでMacPortsを使ったインストール方法

Mac OS X のパッケージ管理システムのひとつである、MacPorts を利用して
Rabbit をインストール、利用する手順について説明します。

=== 事前に準備するもの

以下のソフトウェアが必要です。Mac OS X のシステムDVDなどからインストール
してください。

* Xcode Tools
* X11

Xcode Tools のインストール時には、X11 SDK を選択するのを忘れないでください。

=== MacPorts のインストール

MacPorts の公式サイト ((<URL:http://www.macports.org/>)) からダウンロード、
インストールします。ディスクイメージ(.dmg)からインストールするのが簡単です。

とくに指定しなければ、/opt/local 以下に MacPorts 関連のファイル群がインストール
されます。MacPorts のコマンドを利用するために、環境変数 PATH に /opt/local/bin
を追加します。

=== Rabbit のインストール

まず、以下のコマンドで、Rabbitに必要なソフトウェアの情報を更新し
ておくのも良いかもしれません。

  ~% sudo port sync

以下のコマンドで Rabbit と、それに必要なソフトウェアがインストールされます。

  ~% sudo port install rb-rabbit

glib や Gtk2 がインストールされていないときは、これらのインストールのために
ある程度の時間がかかります。

他にも以下の port をインストールするとよいでしょう。

* Ruby-GetText-Package (rb-gettext) - メッセージなどの国際化が有効になります
* net/irc (rb-net-irc) - rabbircが利用できるようになります

インストール方法は同様です。

  ~% sudo port install rb-gettext
  ~% sudo port install rb-net-irc

注) Ruby-GetText-Package が、すでに RubyGems からインストールされているときは
rb-gettext のインストールは不要です。

==== X11なしでRabbitを利用したい

もしRabbitをX11なしで利用したい場合は、rb-rabbitパッケージをインストールする
前に、pango・cairoおよびgtk2をX11なしでインストールしてください。

  ~% sudo port install pango +no_x11 +quartz
  ~% sudo port install cairo +no_x11 +quartz
  ~% sudo port install gtk2 +no_x11 +quartz

=== X11 環境に関する Tips

一般的な PC-UNIX 環境とは異なり、Mac OS X ではウィンドウシステムとして X を
利用していません。そのため、いくつかの注意が必要になります。

==== X11.app を起動する

X11.app が起動していなければ、rabbit は実行できません。X11.app は 
/アプリケーション/ユーティリティ/X11.app にあります。

==== DISPLAY 環境変数

X11 上で動作する Rabbit を利用するためには、DISPLAY 環境変数が設定されて
いなければなりません。X11.app 上の xterm では設定されていますが、標準の
ターミナルや iTerm、JTerminal を利用しているときは自分で設定する必要が
あることに注意してください。

=== Rabbit をバージョンアップする

port sync コマンドで Portfile を最新のものに更新したうえで、
port upgrade コマンドにより、Rabbit を最新のバージョンに更新することが
できます。

  ~% sudo port sync
  ~% sudo port upgrade rb-rabbit

Rabbit だけをバージョンアップしたいときは、-n オプションを指定します。この
オプションの指定により、関連するソフトウェアは更新せずに Rabbit だけを更新
することができます。

  ~% sudo port -n upgrade rb-rabbit

=== 連絡先

お気づきの点やリクエストなどは、((<"../users.rd"/Rabbitショッカー>))
や Rabbit MacPorts 担当の木村 (kimuraw at i.nifty.jp) までどうぞ。
