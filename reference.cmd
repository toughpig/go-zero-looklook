man test
shellcheck
tldr
find
locate 比find快，只检索所有文件node
ctrl+R 查找历史cmd
paste -sd+ | bc -l
jobs
tmux 单session window pane

git init 本地repository，本地name
git log --all --graph --decorate --oneline
git cat-file -p HASHID
git的每一个commit对应一个snapshot，每一个snapshot包含tree,parents（有向无环图）和reference（该commit的引用，还有其他信息）
linux的磁盘文件结构tree，tree可以包含tree（文件夹）和blob（二进制块文件）
HEAD表示当前所在分支，所在snapshot
master表示主干最新snapshot
某一个snapshot上可以有多个分支
HEAD -> master, cat, dog 当前在最新snapshot的master分支
HEAD -> cat, master, dog 当前在最新snapshot的cat分支
git merge cat
git merge dog
git merge --abort
git branch
git checkout cat切换分支

python Dubugger ipdb
python3 -m ipdb script.py param1 param2
pyflakes script.py 静态检查
python3 -m memory_profiler script.py 行分析（@profile）

time curl google.com
real time 程序开始到程序结束间隔的时间
user time 程序执行的机器时间，占用cpu执行的时间
sys time 程序执行所占的内核态时间 

tracing profiler （real time）
sampling profiler （resource consume）比如python的decorator，行分析，函数耗时占比

perf stat
perf time sleep 1
htop

lib软件库版本号
8.1.4
Major Version Number 删除了功能或者改了方法名之类的操作，依赖所有以往版本lib的软件将无法构建或使用
Minor Version Number 新增了功能（基于高版本lib开发的软件，换成低版本lib，软件将无法构建或使用；只向下兼容）
Patch Version Number 无功能变化的变更
比如某软件依赖某lib的8.1.4版本，那么使用所有8.X.Y版本（X>=1, Y随意）的都可以满足依赖（Major Version一定要匹配，Minor Version一定要兼容）

密码的构建方式所包含的全部可能密码个数 posibility
该种构建方式产生的密码所包含的信息熵 entropy = log2(posibility), aes-256-cbc 构建一个256bit的密码，但是这个构建方式并不一定是纯随机的，所以信息熵< 256
还有一种从短密码生成长密码的算法，这种算法很慢，可以有效方式攻击，也方便自己记忆
比如从短语“iamweekpasswd”推导出256bit的秘钥，然后通过该秘钥加密

登录网站的数据库存储的是用户密码的hash的hash，比如sha256sum(sha256sum(passwd))

对称加密，就是加密数据（传输，存储），然后秘钥持有者解密，拿到明文
非对称加密，就是信息的身份认证，密文，摘要（明文的hash），公钥（身份证，地址）全部广播，证明明文内容确实是我发布的（公钥+密文->明文， hash(明文)比对摘要一致）

--dry-run
 -- -i

端到端网速测试（防火墙端口放开）
iperf3 -s -p 15001 服务器端
iperf3 -c 43.153.151.11 -p 15001 客户端
