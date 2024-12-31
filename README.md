# comedy-live-history

お笑いライブ履歴を確認できる自分用の便利ツール  
https://yuya-yuzen.github.io/comedy-live-history/

## localで静的サイトに変換する方法

docs配下に格納される

```shell
wget -r -l inf -k -nc -nH -p -E -e robots=off -P ./docs http://localhost:3000
```
