# Openssl

## x509

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Contributing](../CONTRIBUTING.md)

## 查看证书 <a name = "about"></a>

```
openssl x509 -in path/cert.pem --noout --text
```

## 自签名 <a name = "getting_started"></a>

```
 openssl req -new -x509 -key path/private.pem -out /path/cert.pem 
```

### Prerequisites

What things you need to install the software and how to install them.

```
openssl x509 -in path/cert.pem --noout --text
```

### Installing

A step by step series of examples that tell you how to get a development env running.

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo.

## Usage <a name = "usage"></a>

Add notes about how to use the system.
