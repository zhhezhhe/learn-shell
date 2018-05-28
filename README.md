# learn-shell

{#!/bin/sh}</br>
chmod +x run_im2txt.sh</br>
./run_im2txt.sh
# save output log
outpath=/media/zh/E/im2txt/im2txt_log.csv</br>
{> ${outpath} 2>&1 &}</br>
# show file size
du -h</br>
# show disk size
df -hl    
ls *[0-9]     
# ssh
```
./ngrok tcp 22
```
# kill the process
```
ps x |grep python|awk '{print $1}'|xargs kill
```
# 谷歌云服务器 ssh 方法
参考https://cloud.google.com/compute/docs/instances/connecting-to-instance
## 要在 Linux 或 OSX 工作站上生成新的 SSH 密钥对并将其应用于您的项目，请执行以下操作：
1.在您的工作站上打开一个终端，并使用 ssh-keygen 命令生成新的密钥对。指定 -C 标志以添加一条带有用户名的注释，该用户是实例中您将要为其应用密钥的用户。该示例创建了一个名为 my-ssh-key 的私钥和一个名为 my-ssh-key.pub 的公钥文件。
···
ssh-keygen -t rsa -f ~/.ssh/my-ssh-key -C [USERNAME]
···
其中 [USERNAME] 是实例中您将要为其应用该密钥的用户。如果实例中不存在该用户，Compute Engine 将使用您在此命令中指定的用户名自动创建该用户。
2.限制对您的 my-ssh-key 私钥的访问，以便只有您才能读取，并且任何人都无法对其执行写入操作。
···
chmod 400 ~/.ssh/my-ssh-key
···
3.使用 cat 命令获取 ~/.ssh/my-ssh-key.pub 公钥文件的内容。
···
cat ~/.ssh/my-ssh-key.pub
···
4.使用 ssh 命令连接到您的实例。指定您的用户名和您要连接到的实例的外部 IP 地址。对于本示例而言，私钥保存在 ~/.ssh/my-ssh-key 中。
···
ssh -i ~/.ssh/my-ssh-key [USERNAME]@[EXTERNAL_IP_ADDRESS]
···
5.不使用4命令登陆：在您的本地机器上，启动 ssh-agent 来为您管理密钥：
···
eval `ssh-agent`
···
6.使用 ssh-add 命令将公钥从本地计算机加载到代理中，并将其用于所有 SSH 命令以进行身份验证。
···
ssh-add ~/.ssh/[PRIVATE_KEY]
···



