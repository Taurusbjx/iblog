<%--
  Created by IntelliJ IDEA.
  User: tyran
  Date: 2018/1/11
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Clcss/fistpage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/editormd.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Clcss/academy.css">
    <script>
        var timeInterval = 5000;
        setInterval(order, timeInterval);
        var arr = new Array();
        arr[0] = "${pageContext.request.contextPath}/img/zbdxKT.jpg";
        arr[1] = "${pageContext.request.contextPath}/img/zbdxKT2.jpg";
        arr[3] = "${pageContext.request.contextPath}/img/zbdxKT3.jpg";
        arr[2] = "${pageContext.request.contextPath}/img/zbdxKT4.jpg";
        arr[4] = "${pageContext.request.contextPath}/img/zbdxKT5.png";
        var i = 0;

        function order() {
            if (i < 5) {
                document.getElementById("banner").src = arr[i];
                document.getElementById("banner").src = arr[i];
            }
            else {
                i = i - 5;
                document.getElementById("banner").src = arr[i];
            }
            i++;
        }

        function showA() {
            document.getElementById("banner").src = "${pageContext.request.contextPath}/img/zbdxKT.jpg";
        }

        function showB() {
            document.getElementById("banner").src = "${pageContext.request.contextPath}/img/zbdxKT2.jpg";
        }

        function showC() {
            document.getElementById("banner").src = "${pageContext.request.contextPath}/img/zbdxKT3.jpg";
        }

        function showD() {
            document.getElementById("banner").src = "${pageContext.request.contextPath}/img/zbdxKT4.jpg";
        }

        function showE() {
            document.getElementById("banner").src = "${pageContext.request.contextPath}/img/zbdxKT5.png";
        }
    </script>
</head>
<body>
<div class="nav">
    <div class="nav_log"><img src="${pageContext.request.contextPath}/img/iblog_tm.png"></div>
    <div class="nav_right">
        <div class="write_btn"><a href="/cl/writeArticle" id="write_btn">写文章</a></div>
        <div class="nav_sec">
            <div class="headpic"><a href="/cl/selfBlog?pagenum=0"><img
                    src="${pageContext.request.contextPath}/img/962bd40735fae6cd962b68f40fb30f2443a70f8c.png"></a></div>
        </div>
    </div>
    <div class="nav_left">
        <div class="flex-item" id="flex-item1">
            <a href="/cl/firstpage">发现</a>
        </div>
        <div class="flex-item"><a href="#">分类</a>
            <div class="nav_list">
                <ul>
                    <c:forEach items="${Categories}" var="category">
                        <a href="/cl/articleByCategory?catid=${category.catid}">
                            <li>${category.name}</li>
                        </a>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="flex-item" id="flex-item3"><a href="#">院系</a>
            <div class="nav_list">
                <ul>
                    <a>
                        <li>软件学院</li>
                    </a>
                    <a>
                        <li>大数据学院</li>
                    </a>
                    <a>
                        <li>郝俊谦学院</li>
                    </a>
                    <a>
                        <li>张鑫讲堂</li>
                    </a>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="test"></div>
<div class="homepagewidth">
    <div class="homepage">
        <c:forEach items="${Categories}" var="category" varStatus="x">
            <div style="width:920px!important;margin:40px auto!important;">
                <div style="width:100%;float:left;padding-bottom:20px;">
                    <div style="">
                        <div class=" AcademyLeft">
                            <h3><span></span></h3>
                            <div class="webli">
                                <ul>
                                    <c:forEach items="${category.}"
                                    <li><a href="#"
                                           title="关于规范数字校园网发布文稿的通知">关于规范数字校园网发布文稿的通知</a><span
                                            class="time"> 12-21</span></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div style="">
                        <div class="AcademyRight">
                            <h3><span>软件学院</span></h3>
                            <div class="webli">

                                <ul>
                                    <li><a href="#"
                                           title="关于规范数字校园网发布文稿的通知">关于规范数字校园网发布文稿的通知</a><span
                                            class="time"> 12-21</span></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
</div>
<div class="content">
    <div class="banner">
        <img id="banner" style="height: 560px;width: 100%" src="${pageContext.request.contextPath}/img/zbdxKT2.jpg">
        <div class="banner_radio">
            <ul>
                <li onmouseenter="showA()">1</li>
                <li onmouseenter="showB()">2</li>
                <li onmouseenter="showC()">3</li>
                <li onmouseenter="showD()">4</li>
                <li onmouseenter="showE()">5</li>
            </ul>
        </div>
    </div>
    <!--内容-->
    <c:forEach items="${Articles}" var="article">
    <div class="note_list_widthLimit">

        <ul class="note_list">
            <li>
                <div class="note_img">
                    <div class="card">
                        <div class="header">
                            <h1>${fn:substring(article.date,6 ,8)}</h1>
                        </div>
                        <div class="container1">
                            <p>${article.date}</p>
                        </div>
                    </div>
                </div>
                <div class="note_Content_left">
                    <div class="note_author">
                        <div class="note_nickname">${article.user.username}</div>
                        <div class="note_data">${article.date}</div>
                        <div class="note_teamname">${article.category.name}</div>
                    </div>
                    <div class="note_title" id="note_title1"><a
                            href="/cl/findArticle?aid=${article.aid}">${article.title}</a></div>
                    <div class="abstract" id="note_content1">
                        <a href="/cl/findArticle?aid=${article.aid}">${article.content}</a>
                    </div>
                    <ul>
                        <li>
                            <div class="note_category">${article.category.name}</div>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    </c:forEach>
    <!--foot-->
    <div class="event_1_right">

        <div class="kstd1">
            <!--#begineditable name="图片快速通道" clone="0" namechanged="0" order="10" ispublic="0" tagname="图片快速通道" viewid="56684" contentviewid="" contype="" stylesysid="" layout="" action=""-->
            <ul>

                <a href="http://i.nuc.edu.cn/default_new.html

">
                    <li class="link1"><span><img width="56" height="56" src="../img/link1.png"></span><font size="0">数字校园</font>
                    </li>
                </a>
                <a href="http://202.207.181.51/

">
                    <li class="link2"><span><img width="56" height="56" src="../img/link0002.png"></span><font size="0">网络教学平台</font>
                    </li>
                </a>
                <a href="http://202.207.177.28:8021/#tips

">
                    <li class="link3"><span><img width="56" height="56" src="../img/link5.png"></span><font size="0">信息公开</font>
                    </li>
                </a>
                <a href="http://www.nuc.edu.cn/xywh/xysh.htm

">
                    <li class="link4"><span><img width="56" height="56" src="../img/link4.png"></span><font size="0">校园文化</font>
                    </li>
                </a>
                <a href="http://www.nuc.edu.cn/ggfw/dzyj.htm

">
                    <li class="link5"><span><img width="56" height="56" src="../img/link2.png"></span><font size="0">电子邮件</font>
                    </li>
                </a>
                <a href="http://71bbs.people.com.cn/yun/shanxi/qita/nuc

">
                    <li class="link6"><span><img width="56" height="56" src="../img/link7.png"></span><font size="0">党建云平台</font>
                    </li>
                </a>
            </ul><!--#endeditable--></div>
    </div>
    <div class="zjzb">
        <div class="zjzb_tit">走进中北</div>
        <div class="zjzb_con">
            <!--#begineditable name="走进中北" clone="0" namechanged="0" order="12" ispublic="0" tagname="走进中北" viewid="56674" contentviewid="" contype="" stylesysid="" layout="" action=""-->
            <ul>

                <li><a href="http://www.nuc.edu.cn/xxgk/xxjj.htm

" target="_blank"><img width="276" height="186" alt="" src="../img/xxgk.jpg" border="0">
                    <div class="font">中北概况</div>
                </a></li>
                <span></span>

                <li><a href="http://www.nuc.edu.cn/xxgk/zbyx1.htm

" target="_blank"><img width="276" height="186" alt="" src="../img/zbdx_71.gif" border="0">
                    <div class="font">中北影像</div>
                </a></li>
                <span></span>

                <li><a href="http://www.nuc.edu.cn/xxgk/xyfg.htm

" target="_blank"><img width="276" height="186" alt="" src="../img/zbdx_87.gif" border="0">
                    <div class="font">校园风光</div>
                </a></li>
                <span></span>

                <li><a href="http://wlaqxc.nuc.edu.cn/

" target="_blank"><img width="276" height="186" alt="" src="../img/zbdx_67.gif" border="0">
                    <div class="font">网络安全宣传专题</div>
                </a></li>


            </ul><!--#endeditable--></div>
    </div>
    <div class="bottom">
        <div class="bottom_con">
            <div class="link">
                <div class="tit">教学资源</div>
                <!--#begineditable name="教学资源" clone="0" namechanged="0" order="13" ispublic="0" tagname="教学资源" viewid="56676" contentviewid="" contype="" stylesysid="" layout="" action=""-->
                <script language="javascript" src="openlink.js"></script>
                <ul class="con">
                    <li><a href="http://202.207.181.51/

" target="" style="color:#98bee3">网络教学平台</a></li>

                    <li><a href="http://www.cdstm.cn/

" target="" style="color:#98bee3">中国数字科技馆</a></li>

                    <li><a href="http://www.paper.edu.cn/

" target="" style="color:#98bee3">科技论文在线</a></li>

                    <li><a href="http://www.meeting.edu.cn/

" target="" style="color:#98bee3">学术会议在线</a></li>

                    <li><a href="http://yp.eol.cn/index_daxue.htm

" target="" style="color:#98bee3">中国教育黄页</a></li>

                    <li><a href="http://source.eol.cn/zyzx/gjzy.htm

" target="" style="color:#98bee3">大学网络课程</a></li>

                    <li><a href="http://www.neea.edu.cn/

" target="" style="color:#98bee3">中国教育考试网</a></li>

                    <li><a href="http://souky.eol.cn/

" target="" style="color:#98bee3">考研参考系统</a></li>

                    <li><a href="http://www.nlc.gov.cn/

" target="" style="color:#98bee3">国家图书馆</a></li>

                    <li><a href="http://www.ccert.edu.cn/

" target="" style="color:#98bee3">网络安全服务</a></li>

                    <li><a href="http://www.cernet2.edu.cn/

" target="" style="color:#98bee3">下一代互联网</a></li>

                </ul>
                <!--#endeditable--></div>
            <div class="link">
                <div class="tit">快速通道</div>
                <!--#begineditable name="快速通道" clone="0" namechanged="0" order="14" ispublic="0" tagname="常用服务" viewid="56677" contentviewid="" contype="" stylesysid="" layout="" action=""-->
                <ul class="con">
                    <li><a href="http://i.nuc.edu.cn/default_new.html

" target="" style="color:#98bee3">数字校园</a></li>

                    <li><a href="http://www.nuc.edu.cn/ggfw/dzyj.htm

" target="" style="color:#98bee3">电子邮件</a></li>

                    <li><a href="http://202.207.177.28:8023/Letter/List

" target="" style="color:#98bee3">书记信箱</a></li>

                    <li><a href="http://202.207.177.28:8022/Letter/List

" target="" style="color:#98bee3">校长信箱</a></li>

                    <li><a href="http://202.207.177.28:8021/

" target="" style="color:#98bee3">信息公开</a></li>

                    <li><a href="http://www.nuc.edu.cn/index/xxxw.htm

" target="" style="color:#98bee3">中北新闻</a></li>

                    <li><a href="http://xsc.nuc.edu.cn/

" target="" style="color:#98bee3">红色太行</a></li>

                    <li><a href="http://lib.nuc.edu.cn/

" target="" style="color:#98bee3">图书馆</a></li>

                    <li><a href="http://zbzs.nuc.edu.cn/

" target="" style="color:#98bee3">本科招生</a></li>

                    <li><a href="http://xuebao.nuc.edu.cn/

" target="" style="color:#98bee3">出版中心</a></li>

                </ul>
                <!--#endeditable--></div>
            <div class="link">
                <div class="tit">常用服务</div>
                <!--#begineditable name="常用服务" clone="0" namechanged="0" order="15" ispublic="0" tagname="友情链接" viewid="56678" contentviewid="" contype="" stylesysid="" layout="" action=""-->
                <ul class="con">
                    <li><a href="http://202.207.177.39:8089/

" target="" style="color:#98bee3">本科生查询</a></li>

                    <li><a href="http://grs.nuc.edu.cn/#tips

" target="" style="color:#98bee3">研究生查询</a></li>

                    <li><a href="http://202.207.177.15:7777/pls/wwwcjlr/cjlr.loginwindow

" target="" style="color:#98bee3">成绩录入</a></li>

                    <li><a href="http://zbjy.nuc.edu.cn/

" target="" style="color:#98bee3">就业在线</a></li>

                    <li><a href="http://www.nuc.edu.cn/xywh/xysh.htm#tips

" target="" style="color:#98bee3">校园生活</a></li>

                    <li><a href="http://www1.nuc.edu.cn/hqc

" target="" style="color:#98bee3">后勤服务</a></li>

                </ul><!--#endeditable--></div>
            <div class="bq">
                <!--#begineditable name="版权" clone="0" namechanged="0" order="16" ispublic="0" tagname="版权" viewid="56679" contentviewid="" contype="" stylesysid="" layout="" action=""-->
                <!-- 版权内容请在本组件"内容配置-版权"处填写 -->
                <p>版权所有：中北大学<br>地址：山西省太原市学院路3号 邮政编码：030051></p><!--#endeditable--></div>
        </div>
    </div>
    <div class="totop">
        ^
    </div>

    <!--写文章-->
    <div class="md">
        <strong><span
                style="font-size: 20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题目：</span></strong>
        <input type="text" placeholder="" class="input-text"/>
        <div class="md_category">
            <strong><span
                    style="font-size: 20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类型：</span></strong>
            <input type="text" placeholder="" class="input-text2"/>
        </div>
        <img src="${pageContext.request.contextPath}/img/EEFA1408-F23F-4C98-8021-193DAB289B64.png" style="width: 100%">
        <br>
        <!--markdown-->
        <div id="layout">
            <div id="test-editormd"></div>
        </div>
        <div class="md_btn"></div>

    </div>
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/editormd.min.js"></script>
    <script type="text/javascript">
        var testEditor;

        $(function () {

            $.get('../editor.md-master/examples/test.md', function () {
                testEditor = editormd("test-editormd", {
                    width: "90%",
                    height: 700,
                    path: '../editor.md-master/lib/',
                    theme: "white",
                    previewTheme: "white",
                    editorTheme: "pastel-on-dark",
                    markdown: "新的博客，新的心情，以手书写，用心感受",
                    codeFold: true,
                    //syncScrolling : false,
                    saveHTMLToTextarea: true,    // 保存 HTML 到 Textarea
                    searchReplace: true,
                    //watch : false,                // 关闭实时预览
                    htmlDecode: "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启
                    //toolbar  : false,             //关闭工具栏
                    //previewCodeHighlight : false, // 关闭预览 HTML 的代码块高亮，默认开启
                    emoji: true,
                    taskList: true,
                    tocm: true,         // Using [TOCM]
                    tex: true,                   // 开启科学公式TeX语言支持，默认关闭
                    flowChart: true,             // 开启流程图支持，默认关闭
                    sequenceDiagram: true,       // 开启时序/序列图支持，默认关闭,
                    //dialogLockScreen : false,   // 设置弹出层对话框不锁屏，全局通用，默认为true
                    //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为true
                    //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为true
                    //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为0.1
                    //dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为#fff

                    onload: function () {
                        console.log('onload', this);
                        //this.fullscreen();
                        //this.unwatch();
                        //this.watch().fullscreen();

                        //this.setMarkdown("#PHP");
                        //this.width("100%");
                        //this.height(480);
                        //this.resize("100%", 640);
                    }
                });
            });

        });

    </script>
    <!--超过字数截取-->
    <script>

        $(function () {
            var text = document.getElementById("note_title1").innerHTML;
            if (text.length > 40) {
                document.getElementById("note_title1").innerHTML = text.substring(0, 40) + "...";
            }

            var text = document.getElementById("note_content1").innerHTML;
            if (text.length > 110) {
                document.getElementById("note_content1").innerHTML = text.substring(0, 110) + "...";

            }
            var text = document.getElementById("note_title2").innerHTML;
            if (text.length > 40) {
                document.getElementById("note_title2").innerHTML = text.substring(0, 40) + "...";
            }

            var text = document.getElementById("note_content3").innerHTML;
            if (text.length > 110) {
                document.getElementById("note_content3").innerHTML = text.substring(0, 110) + "...";
            }
            var text = document.getElementById("note_title4").innerHTML;
            if (text.length > 40) {
                document.getElementById("note_title4").innerHTML = text.substring(0, 40) + "...";
            }

            var text = document.getElementById("note_content5").innerHTML;
            if (text.length > 110) {
                document.getElementById("note_content5").innerHTML = text.substring(0, 110) + "...";
            }
        });

    </script>
    <!--返回头部-->
    <script>
        $(".totop").click(function () {
            $("html,body").animate({scrollTop: 0});
        })
        $("#flex-item1").on("click", function () {
            $(".content").css("display", "block");
            $(".md").css("display", "none");
            $(".homepage").css("display", "none");
        })
        $("#flex-item3").on("click", function () {
            $(".content").css("display", "none");
            $(".md").css("display", "none");
            $(".homepage").css("display", "block");
        })
    </script>


</body>
</html>
