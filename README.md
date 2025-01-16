# kubectl-decode

This plugin decodes and shows secret's value in user-friendly format.

# Install

Run `install.sh`:

```sh
./install.sh
```

# Usage

```
kubectl decode <options> -s <secret-name>
    n) Namespace. Defaults to 'default'.
    o) Output format ('json', 'yaml'). Defaults to 'yaml'.
    h) Display help.
    s) Secret name to decode.
```

# Examples

## Decode secret and output its data as JSON map

```sh
kubectl decode -n my-namespace -o json -s my-secret
```

## Show help

```sh
kubectl decode -h
# or
kubectl decode
```