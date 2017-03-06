
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.bdqn.entity.Recommend"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NB</title>
<link rel="stylesheet" href="../files/style_v1.css">

<style type="text/css">
a:hover {
	color: red;
	text-decoration: underline;
}
</style>
<script type="text/javascript">
	function aa() {
		var srh = document.getElementById("search");
		srh.value = "";
	}
	function bb() {
		var srh = document.getElementById("search");
		srh.value = "点击搜索";
	}
</script>
</head>
<body class="pc-index">
	<div class="container">
		<header class="p-header new-header p-header-show">
		<div class="first-nav">
			<div class="options">
				<div class="nav-search">
					<form action="http://www.tmtpost.com/search" method="get" accept-charset="utf-8">
						<a href="search/search.jsp"><input type="button" name="q" value="点击搜索"/></a>
						<button class="search"></button>
					</form>
				</div>
				<a href="#" class="btn btn-x-small orange post-edit">登录</a>
				<a href="#" class="btn btn-x-small orange post-edit">注册</a>
				<div class="dropdown-menu-part">
					<span class="setting"> 
						<a title="登入" href="javascript:void(0)" class="avatar">
							<img width="34" height="34" alt="玩家登入" src="./files/user.png">
						</a>
					</span>
				</div>
			</div>
			<div class="left-c">
				<div class="logo-part">
					<a href="#" class="logo" title=""><img src="LolImage/lol图标.png" width="200" height="60" alt="钛媒体"></a>
				</div>
				<nav>
				<ul>
					<li class="current">
						<div class="dropdown-menu-part read-select fl">
							<a href="#" title="首页" class="nav-read">官方首页</a>
						</div>
					</li>
					<li class=""><a href="http://www.tmtpost.com/checkzeit/all" title="">赛事中心</a> <li class=""><a href="http://www.tmtpost.com/trendmakers" title="">玩家社区</a></li>
					<li class=""><a href="http://www.tmtpost.com/events" title="活动">游戏活动</a></li>
					<li class=""><a href="http://www.tmtpost.com/pro/index" title="">个人中心</a></li>
				</ul>
				</nav>
			</div>
		</div>
					
<!-- ------------------------------------------------------------------------------------------------------------------------>
		<div class="second-nav second-nav-large">
			<div class="inner">
				<!-- 阅读页面 -->
				<div class="columns fl">
					<div class="dropdown-menu-part read-select fl">
						<div class="current-read ">
							<h2 class="tit">推荐</h2>
						</div>
					</div>
					<ul class="column-list tag-recommend fl">
						<li><a class="" href="http://www.tmtpost.com/tag/299212" title="">职业联赛<span class="avia-menu-fx"><span class="avia-arrow-wrap"><span class="avia-arrow"></span></span></span></a></li>
						<li><a class="" href="http://www.tmtpost.com/tag/298933" title="">甲级职业联赛<span class="avia-menu-fx"><span class="avia-arrow-wrap"><span class="avia-arrow"></span></span></span></a></li>
						<li><a class="" href="http://www.tmtpost.com/tag/1009300" title="">德玛西亚杯<span class="avia-menu-fx"><span class="avia-arrow-wrap"><span class="avia-arrow"></span></span></span></a></li>
						<li><a class="" href="http://www.tmtpost.com/tag/299451" title="">高校联赛<span class="avia-menu-fx"><span class="avia-arrow-wrap"><span class="avia-arrow"></span></span></span></a></li>
						<li><a class="" href="http://www.tmtpost.com/tag/299671" title="">城市争霸赛<span class="avia-menu-fx"><span class="avia-arrow-wrap"><span class="avia-arrow"></span></span></span></a></li>
						<li><a class="" href="http://www.tmtpost.com/tag/298927" title="">在线直播<span class="avia-menu-fx"><span class="avia-arrow-wrap"><span class="avia-arrow"></span></span></span></a></li>
					</ul>
					<div class="dropdown-menu-part more-tag">
						<div class="more-btn more-tag-btn">
							<h2 class="tit">更多</h2>
						</div>
					</div>
<!-- --------------------------------------------------------------------------------------------------- -->


						<div class="dropdown-menu more-tag-dropdown">
							<div class="more-tag-nav">
								<h3 class="tit">热聊话题</h3>
								<ul>
									<li><a href="http://www.tmtpost.com/tag/299159" target="_blank" title="创业吧">创业吧</a></li>
									<li><a href="http://www.tmtpost.com/tag/299093" target="_blank" title="互联网">互联网</a></li>
									<li><a href="http://www.tmtpost.com/tag/299476" target="_blank" title="潮流">潮流</a></li>
									<li><a href="http://www.tmtpost.com/tag/299669" target="_blank" title="金融">金融</a></li>
									<li><a href="http://www.tmtpost.com/tag/299504" target="_blank" title="电商">电商</a></li>
								</ul>
						</div>
							
							<div class="fr more-a">
								<a href="http://www.tmtpost.com/tag/trend" target="_blank">访问话题专区<span class="icon">&gt;</span></a>
							</div>
						</div>
					
					</div>
				</div>
			</div>
		
	</div>
		</header>
			<section class="wrapper" style="min-height: 5035px;" /> 
			<section class="index-page center wide-index" />
			<div class="top_article">
				<img src="./LolImage/冰雪节.png" class="bg">
			</div>
			<div class="column">
				<div class="list  ">
					<div class="mod-tit">
						<a href="http://www.tmtpost.com/tag/501747" target="_blank" title="玩家吧">
							<h2>玩家吧</h2>
						</a>
					</div>
					<h3 class="title">
						<a href="#" target="_blank" title="欢迎各位游戏喷子，弹幕大神入住">欢迎各位游戏喷子，弹幕大神入住</a>
					</h3>
					<p class="info">
						<a target="_blank" href="http://www.tmtpost.com/user/276788" title="波波">波波</a> <span class="gap-point">•</span> 2017-01-11
						07:50
					</p>
					<p class="cont">最有意思的玩家吐槽乐园！</p>
					<div class="options">
						<a href="http://www.tmtpost.com/#" data-id="2557177" class="like" title="喜欢"> <span class="icon s-like"><i class="icon-Shape9"></i><i class="icon-like-1"></i></span> <span class="num">10</span>
						</a> <a href="http://www.tmtpost.com/2557177.html#comment" class="comment" target="_blank" data-id="2557177"><span class="icon"><i class="icon-comment"></i></span><span class="num">0</span></a>
					</div>
				</div>
				<div class="list  ">
					<div class="mod-tit">
						<a href="http://www.tmtpost.com/tag/299583" target="_blank" title="自媒体">
							<h2>自媒体</h2>
						</a>
					</div>
					<h3 class="title">
						<a href="http://www.tmtpost.com/2556759.html" target="_blank" title="狼人沃里克终于重做">狼人终于重做</a>
					</h3>
					<p class="info">
						<a target="_blank" href="http://www.tmtpost.com/user/2498355" title="老司机">老司机</a> <span class="gap-point">•</span> 2017-01-10
						10:45
					</p>
					<p class="cont">狼人沃里克全新改版,是否能称霸野区,拭目以待</p>
					<div class="options">
						<a href="http://www.tmtpost.com/#" data-id="2556759" class="like" title="喜欢"> <span class="icon s-like"><i class="icon-Shape9"></i><i class="icon-like-1"></i></span> <span class="num">6</span>
						</a> <a href="http://www.tmtpost.com/2556759.html#comment" class="comment" target="_blank" data-id="2556759"><span class="icon"><i class="icon-comment"></i></span><span class="num">1</span></a>
					</div>
				</div>
				<div class="list   last">
					<div class="mod-tit">
						<a href="#" target="_blank" title="公告">
							<h2>公告</h2>
						</a>
					</div>
					<h3 class="title">
						<a href="#" target="_blank" title="游戏公告">游戏公告</a>
					</h3>
					<p class="cont">新赛季OMG是否能重现昔日辉煌</p>
					<div class="options novel-option">
						<a href="#" title="冰雪节活动来袭" target="_blank">冰雪节活动来袭</a> 
						<a href="#" title="魔法少女的星光水晶活动开启" target="_blank">魔法少女的星光水晶活动开启</a>
						<a href="#" title="沃里克揭秘站" target="_blank">沃里克揭秘站</a>
					</div>
				</div>
			</div>
			<div class="main clear" id="lastest-list">
				<div class="articles fl">
					<div class="mod-tit">
						<h3 class="js-more-post current">更多推荐热门视频</h3>
						<span class="gapline">|</span>
						<h3 class="js-user-post">你感兴趣的游戏视频</h3>
					</div>
					<div class="user-post hide">
						<p class="loading">正在加载...</p>
					</div>
					<div class="recommend-post ">
						<ul class="mod-article-list">
						<c:forEach items="${prolist }" var="var">
						
							<li><a target="_blank" href="http://www.tmtpost.com/2553252.html" title="${var.title }" class="pic"><img alt="${var.title }"
							src="${var.img }" width="200" height="150"></a>
								<div class="cont">
									<h4>
										<a target="_blank" href="http://www.tmtpost.com/2553252.html" title="${var.title }" class="title">
											${var.title } </a>
									</h4>
									<div class="options fr">
										<a href="http://www.tmtpost.com/2553252.html#comment" class="comment" target="_blank" data-id="2553252"><span class="icon"><i class="icon-comment"></i></span><span class="num">0</span></a>
									</div>
									<div class="info">
										<a title="潜在投资家" target="_blank" href="http://www.tmtpost.com/user/1501226" class="name">${var.author }</a>
										<span class="gap-point">•</span>${var.data }
									</div>
									<p class="intro">${var.content }</p>
									<div class="tag">
										<i class="icon-tag2"></i> 
										
									
									
					
							
								<a target="_blank" data-id="299045"
										href="http://www.tmtpost.com/tag/299045"
										title="${var.type}">${var.type}</a>
							
									</div>
								</div></li>
								
						
								
								</c:forEach>
						</ul>
						<p class="load-more">
							<button class="btn btn-normal gray btn-bordered">更多文章</button>
						</p>
					</div>
				</div>
<!-- ------------------------------------------热门话题板块------------------------------------------------------ -->
				<div class="sidebar fr">
					<div class="part">
						<div class="mod-tit">
							<span><h3>热门话题</h3></span>
						</div>
						<div class="tags">
							<a class="tag" target="_blank" href="http://www.tmtpost.com/tag/299675">新赛季最强ADC</a>
						</div>
					</div>

<!-- ----------------------------------------周免英雄板块------------------------------------------------------ -->
					<div class="part">
						<div class="title">
							<span>
								<h3>
									<span class="num">周免英雄排行榜</span>
								</h3> 
								<a href="http://www.tmtpost.com/lists/hot_list" target="_blank" class="r btn btn-small orange"> TOP 50
								</a>
							</span>
						</div>
						<ol class="hot">
							<li>
								<a target="_blank" href="http://www.tmtpost.com/2556640.html" title="圆通的快递推出“隐形面单”，收件人关键信息可做加密处理">圆通的快递推出“隐形面单”，收件人关键信息可做加密处理
								</a>
							</li>
						</ol>
					</div>
<!-- ------------------------------------------------------------------------------------------------------ -->
					<div class="part w3-part">
						<!-- START 广告管理系统  CODE -->
						<script type="text/javascript" charset="utf-8" src="files/30"></script>
						<p>
							<a href="https://mp.weixin.qq.com/s/v0HEDnfRYvnNhcvxIzo65A" target="_blank"><img src="files/屏幕快照_2017-01-11_00.png" alt="惊奇映像节" border="0"></a>
						</p>
					</div>
					
					
<!-- ---------------------------------------------------视屏推荐板块--------------------- ----------------->
					<div class="part recommend">
						<div class="title">
							<h3>
								<span>推荐视屏</span>
							</h3>
							<a target="_blank" href="http://www.tmtpost.com/authors/verified" rel="nofollow" class="r more">更多</a>
						</div>
						<ul class="mod-article-list">
							<li><a class="pic"><img alt="tmtpost" width="40" height="40" src="./files/50a672576b393994e0fbbea1f0e4e5e2.jpg"></a>
								<div class="cont">
									<h3>
										<a target="_blank" title="tmtpost" href="http://www.tmtpost.com/user/272622" class="name">tmtpost</a>
									</h3>
									<p class="intro">Our official account in English/EnglishVer...</p>
								</div>
							</li>
						</ul>
					</div>
					
<!----------------------------------------- 玩家社区板块 --------------------------------------------------->
					<div class="part recommend product-recommend">
						<div class="title">
							<h3>
								<span>玩家社区</span>
							</h3>
							<a target="_blank" href="http://www.tmtpost.com/trendmakers" rel="nofollow" class="r more">更多</a>
						</div>
						<ul class="mod-article-list">
							<li><a class="pic"><img alt="简历魔板" width="40" height="40" src="./files/f3878885c357fed182807f51ca37303714834239160672.jpg"></a>
								<div class="cont">
									<h3>
										<a target="_blank" title="简历魔板" href="http://www.tmtpost.com/trendmakers/2553643" class="name">简历魔板</a>
										<!-- <div class="popularity"><i class="icon-popular"></i><span class="num">30003</span></div> -->
									</h3>
									<p class="intro">一款酷炫的在线简历制作工具</p>
								</div></li>
						</ul>
					</div>
					<div class="part w3-part">
						<p>
							<a href="http://www.futureforum.org.cn/" target="_blank">
								<img src="./files/a71b3-未来论坛.jpg" alt="未来论坛" border="0">
							</a>
						</p>
					</div>
				</div>
			</div>
</body>
</html>
