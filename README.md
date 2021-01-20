# Dogecoin daemon ready for tests on regtest mode

## ⚙ Build
```bash
docker build -t dogecoind-regtest-mode .
```

<hr>

## 🚀 Run
```bash
docker run -d --name dogecoind-regtest-mode -p 1111:1111 -p 1112:1112 dogecoind-regtest-mode
```

<hr>

## ☢ Test
```bash
curl --data '{"jsonrpc": "1.0", "id":"1", "method": "getnetworkinfo", "params": []}' http://root:root@localhost:1112
```
