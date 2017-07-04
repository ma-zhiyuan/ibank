简易银行项目
===========
### 一、项目人力资源分配
团体项目，16人项目组开发，为锻炼每个人的能力，前端后台数据库都有涉及。

采用敏捷式开发方法，充分调动项目组成员的积极性和开发效率，项目开发采用交叉式的分工。

项目经理1人，组长3人，各带4位组员，采用分层管理。
### 二、开发环境和工具要求
	+ 项目编码：UTF-8
	+ WEB版本：Version 3.0
	+ 程序编译环境：JDK1.7
	+ WEB服务器：Apache Tomcat7.0
	+ 数据库：Mysql5.x（建议使用5.5.x）
	+ 项目管理工具：Maven（版本自选）
	+ 后端开发工具：MyEclipse（建议使用14及以上版本）
	+ 前端开发工具：（建议使用HBuilder，版本自选）
	+ 浏览器：Google Chrome（版本自选）Firefox浏览器（版本自选）
	+ 数据库客户端工具：Navicat Premium（建议使用Navicat for MySQL，版本自选）
### 三、开发类库和工具包
+ 后端开发框架：Spring4.1.7+SpringMVC4.1.7+Mybatis3.3.0
+ 前端工具集：Bootstrap3
+ 前端脚本：JQuery3.2.0
### 四、协同开发
_SVN：链接地址-https://pc-20170323ucpp/svn/lanqiao/（已不可用）_
### 五、开发小组细分
1. 前端设计小组（基于已有的前端示例页面进行设计）
2. 后端程序设计开发小组（业务代码编写）
3. 数据库设计分析小组（数据库设计和分析）
4. 测试小组（QA）（对后端代码功能测试和前端功能测试）
5. 新技术和方法挖掘小组（查找资料发现与项目相关技术并教授）
### 六、项目部署环境
+ 服务器主机：腾讯云主机centos6.5
+ web服务器：Tomcat7.0
+ 程序运行环境：jre1.7.0_85
+ 数据库服务器：腾讯云Mysql数据库实例
****
### 七、项目基本信息
###### 项目访问地址：[http://www.husuli.pw/ibank](http://www.husuli.pw/ibank) (备用地址：[http://139.199.112.207/lanqiaobank](http://139.199.112.207/lanqiaobank))

###### [本项目Maven配置文件](https://github.com/sujie68/ibank/blob/master/pom.xml)

###### 项目三端：用户端，客服端，管理员端。图示如下：
1. 客户端入口
![Markdown](http://i2.kiimg.com/1949/83a048caff3de9fb.png "客户端入口")

2. 客服端入口
![Markdown](http://i1.buimg.com/1949/70c755cee76f58ac.png "客服端入口")

3. 管理员端入口
![Markdown](http://i1.buimg.com/1949/2a3384c46d2b5753.png "管理员端入口")
### 八、项目中遇到的问题及其解决方案
>我们是学生团队，第一次协作开发中型项目，开发中遇到很多问题，不止是技术上的。
#### *①人员管理：*
>项目开始初期，由于每位同学的技术能力和性格等各方面的差异，试分配了三个组，三个组长，组长带领四名组员，组长从中挑选能力相对出众的，具有强沟通能力的积极分子，要考虑到技术问题和解决问题的能力，第一次开会时，发现团队成员除个别外，沟通能力和发表个人意见的这种能动性很低沉，看来是个难题。
#### *②任务分配：*
>项目前期，有个特点是任务少，人员多，需要多人合作完成具体的任务，结合成员特点将前端后台岔开，尽量使每个人都能锻炼到，这样势必会拖慢项目进展，考虑到项目最初的目的，还是顺从了这种模式；项目中期，每个人都能分配到具体的任务，完成各自的功能，成员积极性显著提高，循环再领取任务，完成任务的旅途中，途中会遇到各种问题，通过查阅资料，互联网搜索，向同学老师请教，解决问题和学习知识，这个过程是最棒的；项目后期，按照组进行分配任务，三个组三个端，各自有组长带领完成具体的功能，实现分级管理，任务迭代。任务分配这块考虑的因素很多，这里不再赘述。
#### *③人员沟通，协作：*
>针对项目组的实际情况，我们特别加强沟通的时间分配，我认为也是比较重要的，每次集体开发项目前五分钟，小会和站立式沟通，遵循敏捷式开发流程，强调沟通，协调功能之间的衔接和合理性，开发过程中遇到很多沟通不足导致开发困难的问题，经过一段时间的调整和例行开会，改善很多，嗯，一个好的团队是需要锻炼的，需要沟通的，高效的开发一定是建立在良好的沟通的基础上的。
#### *④项目进展推动：*
>学生团队开发，中间会遇到各种时间的碰撞，学校的考试，课程等各种琐事，导致项目进展缓慢，这个时候需要项目经理发挥作用的时候了，在外界影响的条件下，人本能的感觉时间不够用，其实我们将大部分时间花费在了思考“我的时间去哪了”这件事情上，专心做好当下的事，效率显著提高，当时我就是做了这样的工作。
#### *⑤项目组织连接：*
>项目成员们开发的都是部分功能，可能是简单测试，没有完整的流程，我的工作就是配置各种环境，项目架构搭建，功能连接的问题，让项目正常运行，期间我可能会把部分模块的配合连接分配个各组长完成，组长具体交给组员完成实际的代码连接。项目初期，根据前期积累的经验搭建大概合适的项目框架和基本的目录结构等，结合网络，书籍，请教老师搭建出合理的项目架构，项目一步一步走向完整，整个过程很艰辛，收益颇多！
#### *⑥项目期望：*
>最初的项目期望很简单，实现基本的银行操作，如贷款，存款，转账，办理业务等基本业务，用户端，客服端，管理员端协调，对外提供相应的接口，完成第三方代理，功能完善，在此期间，用户端是我服务的重点，一定做到功能齐全，操作简便，布局合理，一切从用户的思维出发。
#### *⑦测试：*
>测试分为前端功能测试和后端测试，时期共分为三个阶段，初期个人功能测试，中期团队交叉测试，后期部署测试，可能大家对于测试不是很重视，但我感觉测试是对开发成果的检验，如果测试过不了，相当于没开发，所以一切以测试为准，有问题改，有bug排，不合理重新思维，早发现早解决，这是必须有的觉悟。
