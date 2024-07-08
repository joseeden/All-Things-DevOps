
# Tools Specifications




## Local Environment

This are the resources I'm currently using.
Note that the application versions are subject to change with new updates.

**Laptop**

<table><tr>
<th style="text-align: left;">OS</th>
<td>Windows 10, 64-bit operating system</td>
</tr></table>

**Visual Studio Code**

<table>
<tr>
<th style="text-align: left;">Version</th>
<td>1.90.0 (user setup)</td>
</tr>
<tr>
<th style="text-align: left;">Date</th>
<td>2024-06-04T19:33:54.889Z</td>
</tr>
<tr>
<th style="text-align: left;">Electron</th>
<td>29.4.0</td>
</tr>
<tr>
<th style="text-align: left;">Chromium</th>
<td>122.0.6261.156</td>
</tr>
<tr>
<th style="text-align: left;">Node.js</th>
<td>20.9.0</td>
</tr>
<tr>
<th style="text-align: left;">OS</th>
<td>Windows_NT x64 10.0.19045</td>
</tr>
</table>

**Windows Terminal** 

<table>
<tr>
<th style="text-align: left;">Version</th>
<td>1.20.11381.0</td>
</tr>
<tr>
<th style="text-align: left;">Distribution</th>
<td>Ubuntu 20.04.6 LTS</td>
</tr>
<tr>
<th style="text-align: left;">Codename</th>
<td>focal</td>
</tr>
</table>

**WSL**

<table>
<tr>
<th style='text-align: left;'>Version</th>
<td>2.2.4.0</td>
</tr>
<tr>
<th>Windows version</th>
<td>10.0.19045.4529</td>
</tr>
</table>


## Applications

### Versioning 

Version             | Date Installed    | Changelog
--------------------|-------------------|---------
 npm (10.7.0)       | 2024-06-14        | https://nodejs.org/en/blog/release/v20.14.0
 docusaurus (3.4.0) | 2024-06-14        | https://github.com/facebook/docusaurus/releases/tag/v3.4.0


### NodeJS 

#### Installing NodeJS

The complete installation steps can be found here: [Download Node.js](https://nodejs.org/en/download/package-manager)

NPX should also be already installed. To check:

```bash
node -v
npm -v
which npx
```


#### Uninstall NodeJS 

Uninstall Node.js and npm:

- For macOS (Homebrew):

    ```bash
    brew uninstall node
    ```

- For Ubuntu/Debian:

    ```bash
    sudo apt-get purge nodejs npm
    ```

Remove any remaining files:

```bash
sudo rm -rf /usr/local/lib/node_modules
sudo rm -rf /usr/local/include/node
sudo rm -rf /usr/local/bin/node
sudo rm -rf /usr/local/bin/npm
sudo rm -rf ~/.npm
sudo rm -rf ~/.node-gyp
sudo rm -rf /opt/local/bin/node
sudo rm -rf /opt/local/include/node
sudo rm -rf /opt/local/lib/node_modules
sudo rm -rf /usr/local/share/doc/node
sudo rm -rf /usr/local/share/man/man1/node.1
sudo rm -rf /usr/local/lib/dtrace/node.d
```

Verify removal:

```bash
node -v
npm -v
```
You should get a "command not found" response.