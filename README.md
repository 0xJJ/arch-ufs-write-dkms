# ufs-write-dkms

Arch package to rebuild the [UFS
module](https://docs.kernel.org/admin-guide/ufs.html) with write support.

The sources for the UFS module are fetched from the corresponding kernel
release. The UFS module will be built against each installed kernel if the
kernel was build with UFS support as a module without write support.

## License

The files in this repository are licensed under
[0BSD](https://spdx.org/licenses/0BSD.html) license, see LICENSE file. While
the source code of the Linux kernel remains licensed under
[GPL-2.0-only](https://spdx.org/licenses/GPL-2.0-only.html).

