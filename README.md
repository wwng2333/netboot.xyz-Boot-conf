# netboot.xyz-Boot-conf

### 一键脚本配置GRUB2+iPXE引导netboot.xyz进行网络重装

> 脚本参考自：https://lala.im/4524.html 感谢lala大佬

如果你还不知道netboot.xyz是什么，请先移步到 https://github.com/netbootxyz/netboot.xyz 查看后在使用本脚本。

![netboot.xy](https://netboot.xyz/assets/images/netboot.xyz-d976acd5e46c61339230d38e767fbdc2.gif)

#### 服务器需要满足以下条件：  
1.KVM虚拟化的VPS或者独立服务器  
2.网络支持DHCP  
3.可以使用VNC控制你的机器  

目前脚本仅在 `Cetnos7` 、 `Debian10/11` 系统上测试运行通过（`Ubuntu`应该也是没问题的，毕竟是基于`Debian`）。

----

#### 食用方法：
```
curl -O https://raw.githubusercontent.com/moqu66/netboot.xyz-Boot-conf/master/bootConf.sh && chmod +x bootConf.sh && ./bootConf.sh
```
#### 中国备用地址 coding
```
curl -O https://one-mo.coding.net/p/netboot.xyz-boot-conf/d/netboot.xyz-Boot-conf/git/raw/master/bootConf.sh && chmod +x bootConf.sh && ./bootConf.sh
```

运行完毕后，请连接VNC，然后输入命令 `reboot` 重启机器，然后你就可以在引导页面看到 `netboot.xyz` 了

阿里云轻量云服务器演示：

![netboot.xy](https://www.littlemo.cc/usr/uploads/2020/07/1777494340.png)
![netboot.xy](https://www.littlemo.cc/usr/uploads/2020/07/3213980517.png)
![netboot.xy](https://www.littlemo.cc/usr/uploads/2020/07/2271931874.png)
![netboot.xy](https://www.littlemo.cc/usr/uploads/2020/07/607449655.png)
![netboot.xy](https://www.littlemo.cc/usr/uploads/2020/07/3322952301.png)
![netboot.xy](https://www.littlemo.cc/usr/uploads/2020/07/3708751681.png)
![netboot.xy](https://www.littlemo.cc/usr/uploads/2020/07/3674899591.png)
