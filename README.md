## 概要

Ansible用playbookです
CentOS8環境に、dokuwikiを自動設定する

## 対象となる環境

* CentOS8
* インターネットにつながり、ansibleサーバからrootユーザで直接ssh(ssh公開鍵認証でログイン)できること
* 最小構成でインストールしたCentOS8で稼働確認実施

## 自動設定内容

* os(共通(common))
	+ selinux無効化
	+ ホスト名設定
	+ timezoneの設定(zone情報指定可能)

* dokuwiki
  + dokuwiki.tgzの展開
  + httpd, phpのinstall
	


今回、仮設定した内容（適宜等ファイルを変更して利用してください)
```
[servers]
testsv01 ansible_ssh_host=192.168.11.1 ansible_ssh_user=root
[all:vars]
timezone="Asia/Tokyo"
```

### playbook実行

ansibleサーバで実行
```
git clone https://github.com/mishikawan/dokuwiki-ansible.git
ansible-playbook -i inventory/inventory.ini site.yml
```
