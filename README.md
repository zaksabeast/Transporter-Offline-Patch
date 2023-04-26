# Pokemon Transporter Offline Patch

With 3ds servers going down and Pokemon Transporter/Bank being free to use, it's not entirely clear if there will always be a way to transfer Pokemon from past games using the official tools.

This patch allows using Pokemon Transporter offline. You can turn off the console's wifi connection and Transporter will still work.

Pokemon Transporter converts Pokemon from Gen 1, 2, and 5 to Gen 6 and 7 locally, then sends the transferred Pokemon to a remote server. This patch works by stubbing out any network connections, including legality checks.

By default, the code in this repository does not do anything with the transferred Pokemon. You need to use an IPS merger with another patch that does something with the transferred Pokemon, such as the [Transporter PKSM patch](https://github.com/zaksabeast/Transporter-PKSM-Bank-Patch).

The release IPS of this repository is a combination of the offline and PKSM patches.

The offline patch works with the [Transporter cart redirect patch](https://github.com/zaksabeast/DreamRadarCartRedirect).

## Usage for Transporter offline + PKSM patch

1. Download or build the `code.ips` file from the releases page
1. Copy the file to your SD card at `/luma/titles/00040000000C9C00/code.ips`
1. Transfer Pokemon with Transporter

Follow the usage instructions on the Transporter PKSM patch.

## Building the base offline patch

1. Install [armips](https://github.com/Kingcom/armips.git) and [flips](https://github.com/Alcaro/Flips.git)
1. Extract your Gen 7 game's `code.bin` with [GM9](https://github.com/d0k3/GodMode9)
1. Clone the repository and place the `code.bin` in the repository directory
1. Run `make` to build the patch

You should have a `code.ips` produced.
