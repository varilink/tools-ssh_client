# Tools - SSH Client

David Williamson @ Varilink Computing Ltd

------

Implements SSH and SSHFS clients. The image for this service is built from the `varilink/tools/host-user` image implemented by the Varilink [Tools - Host User](https://github.com/varilink/tools-host_user) repository and so you must build that image first.

Private configuration files are included a Git submodule at the path `private/`, which I clone from a private repository, since it contains sensitive data. If you want to use this repository then you must make a similar arrangement. You must also copy your public key file into this repository at `id_rsa.pub`, which is set to be ignored in `.gitignore`.
