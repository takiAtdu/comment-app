---
layout: ja
title: インストール
---
== インストール方法について

Rabbitはgemまたはそれぞれのプラットフォームにあるパッケージ管
理システムを使ってインストールすることができるため、導入が非
常に簡単です。

== gemを使う方法

  % gem install rabbit
  % gem install rabbiter # Twitter関連機能を利用する場合

== Debian GNU/Linuxでのインストール方法

  % sudo aptitude install -y rabbit

== Ubuntuでのインストール方法

  % sudo aptitude install -y rabbit

== Gentoo Linuxでのインストール方法

  % sudo env ACCEPT_KEYWORDS=~x86 FEATURES="digest" emerge rabbit

== NetBSD（またはpkgsrcが使えるプラットフォーム）でのインストール方法

  % sudo pkg_add ruby18-rabbit

または

  % sudo pkg_add ruby19-rabbit

== FreeBSDでのインストール方法

  % sudo portupgrade -NRr rabbit

== Mac OS XでMacPortsを使ったインストール方法

((<macports.rd/MacPortsを使ったインストール方法>))を参照してく
ださい。

== Mac OS XでHomebrewを使ったインストール方法

((<homebrew.rd/Homebrewを使ったインストール方法>))を参照してく
ださい。

== Windowsでのインストール方法

((<windows.rd/Windowsでのインストール方法>))を参照してくださ
い。
