<%@page import="com.model.MessageDTO"%>
<%@page import="com.model.MessageDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <title>Forty by HTML5 UP</title>
      <meta charset="utf-8" />
      <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
      <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
      <link rel="stylesheet" href="assets/css/main.css" />
      <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
      <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
   </head>
   <body>
   
      <%
         MemberDTO info = (MemberDTO)session.getAttribute("info");
      %>

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Header -->
               <header id="header" class="alt">
                  <a href="index.html" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
                  <nav>
                     <!-- 로그인 안했을때는 아래 로그인이 -->
                        <%if(info == null){ %>
                        <a href="#menu">로그인</a>
                        <%} else{ %>
                        <!-- 로그인을 했을때는 아래 로그아웃이 -->
                 	    <!-- 로그인 후 Logout.jsp로 이동할 수 있는'로그아웃'링크와 '개인정보수정'링크를 출력하시오. -->
                        <a href="update.jsp">회원정보수정</a>
                        <a href="LogoutService">로그아웃</a>
                        <%} %>
                  </nav>
               </header>

            <!-- Menu -->
               <nav id="menu">   
                  <ul class="links">
                     <li><h5>로그인</h5></li>
                        <form action="LoginService" method="post">
                           <li><input type="email" name="email"  placeholder="Email을 입력하세요"></li>
                           <li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
                           <li><input type="submit" value="LogIn" class="button fit"></li>
                        </form>
                  </ul>
                  <ul class="actions vertical">
                     <li><h5>회원가입</h5></li>
                        <form action="JoinService" method="post">
                           <li><input type="text" name="email" placeholder="Email을 입력하세요"></li>
                           <li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
                           <li><input type="text" name="phone" placeholder="전화번호를 입력하세요"></li>
                           <li><input type="text" name="addr" placeholder="집주소를 입력하세요"></li>
                           <li><input type="submit" value="JoinUs" class="button fit"></li>
                        </form>
                  </ul>
               </nav>         
            <!-- Banner -->
               <section id="banner" class="major">
                  <div class="inner">
                     <header class="major">
                     
                     <% if(info != null){ %>
                        <h1><%= info.getEmail()%>님 환영합니다</h1>
                     <%}else{ %>
                        <h1>로그인 먼저 진행해주세요</h1>
                     <%} %>
                              
                        <!-- 로그인 후 로그인 한 사용자의 세션아이디로 바꾸시오.
                            ex)smart님 환영합니다 -->
                     </header>
                     <div class="content">
                        <p>아래는 지금까지 배운 웹 기술들입니다.<br></p>
                        <ul class="actions">
                           <li><a href="#one" class="button next scrolly">확인하기</a></li>
                        </ul>
                     </div>
                  </div>
               </section>

            <!-- Main -->
               <div id="main">

                  <!-- One -->
                     <section id="one" class="tiles">
                        <article>
                           <span class="image">
                              <img src="images/pic01.jpg" alt="" />
                           </span>
                           <header class="major">
                              <h3><a href="#" class="link">HTML</a></h3>
                              <p>홈페이지를 만드는 기초 언어</p>
                           </header>
                        </article>
                        <article>
                           <span class="image">
                              <img src="images/pic02.jpg" alt="" />
                           </span>
                           <header class="major">
                              <h3><a href="#" class="link">CSS</a></h3>
                              <p>HTML을 디자인해주는 언어</p>
                           </header>
                        </article>
                        <article>
                           <span class="image">
                              <img src="images/pic03.jpg" alt="" />
                           </span>
                           <header class="major">
                              <h3><a href="#" class="link">Servlet/JSP</a></h3>
                              <p>Java를 기본으로 한 웹 프로그래밍 언어/스크립트 언어</p>
                           </header>
                        </article>
                        <article>
                           <span class="image">
                              <img src="images/pic04.jpg" alt="" />
                           </span>
                           <header class="major">
                              <h3><a href="#" class="link">JavaScript</a></h3>
                              <p>HTML에 기본적인 로직을 정의할 수 있는 언어</p>
                           </header>
                        </article>
                        <article>
                           <span class="image">
                              <img src="images/pic05.jpg" alt="" />
                           </span>
                           <header class="major">
                              <h3><a href="#" class="link">MVC</a></h3>
                              <p>웹 프로젝트 중 가장 많이 사용하는 디자인패턴</p>
                           </header>
                        </article>
                        <article>
                           <span class="image">
                              <img src="images/pic06.jpg" alt="" />
                           </span>
                           <header class="major">
                              <h3><a href="#" class="link">Web Project</a></h3>
                              <p>여러분의 최종프로젝트에 웹 기술을 활용하세요!</p>
                           </header>
                        </article>
                     </section>
               <!-- Two -->
                     <section id="two">
                        <div class="inner">
                           <header class="major">
                              <h2>나에게 온 메세지 확인하기</h2>
                           </header>
                           <p></p>
                           <ul class="actions">
                              <% if(info == null) { %>
                              		<li>로그인을 하세요.</li>
                              <% }else { 
                              		MessageDAO dao = new MessageDAO();
                              		ArrayList<MessageDTO> list = dao.messageSelect(info.getEmail());
                              		for(int i = 0; i < list.size(); i++){
                              %>
                              		<li>
                              			<%= list.get(i).getName() %> :
                              			<%= list.get(i).getContents() %> -
                              			<%= list.get(i).getIndate() %> 
                              			<a href="MessegeDeleteService?num=<%= list.get(i).getNum() %>" class="button next scrolly">개별삭제</a>
                              		</li>
                              		<br>
                                 <% } %>		
                              		<li><a href="MessageDeleteAllService" class="button next scrolly">전체삭제하기</a></li>
                             <% } %>
                           </ul>
                        </div>
                     </section>

               </div>

            <!-- Contact -->
               <section id="contact">
                  <div class="inner">
                     <section>
                        <form action="MessageInsertService" method="post">
                        <div class="field half first">
                              <label for="name">Name</label>
                              <input type="text" name="name" id="name" placeholder="보내는 사람 이름" />
                           </div>
                           <div class="field half">
                              <label for="email">Email</label>
                              <input type="text" name="email" id="email" placeholder="보낼 사람 이메일"/>
                           </div>

                           <div class="field">
                              <label for="message">Message</label>
                              <textarea  id="message" name="contents" rows="6"></textarea>
                           </div>
                           <ul class="actions">
                              <li><input type="submit" value="Send Message" class="special" /></li>
                              <li><input type="reset" value="Clear" /></li>
                           </ul>
                        </form>
                     </section>
                     
                     <section class="split">
                        <section>
                           <div class="contact-method">
                              <span class="icon alt fa-envelope"></span>
                              <h3>Email</h3>
                              <% if(info == null) { %>
                              <a href="#">로그인을 먼저 해주세요</a>
                              <% }else { %>
                              <a href="#"><%= info.getEmail() %></a>
                              <% } %>
                              <!-- 로그인 한 사용자의 이메일을 출력하시오 -->
                           </div>
                        </section>
                        <section>
                           <div class="contact-method">
                              <span class="icon alt fa-phone"></span>
                              <h3>Phone</h3>
                              <% if(info == null) { %>
                              <span>로그인을 먼저 해주세요</span>
                              <% } else { %>
                              <!-- 로그인 한 사용자의 전화번호를 출력하시오 -->
                              <span><%= info.getPhone() %></span>
                              <% } %>
                           </div>
                        </section>
                        <section>
                           <div class="contact-method">
                              <span class="icon alt fa-home"></span>
                              <h3>Address</h3>
                              <% if(info == null) { %>
                              <span>로그인을 먼저 해주세요</span>
                              <% } else { %>
                              <!-- 로그인 한 사용자의 주소를 출력하시오 -->
                              <span><%= info.getAddr() %></span>
                              <% } %>
                           </div>
                        </section>
                     </section>               
                  </div>
               </section>

            <!-- Footer -->
               <footer id="footer">
                  <div class="inner">
                     <ul class="icons">
                        <li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
                        <li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
                        <li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
                        <li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
                        <li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
                     </ul>
                     <ul class="copyright">
                        <li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
                     </ul>
                  </div>
               </footer>

         </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/skel.min.js"></script>
         <script src="assets/js/util.js"></script>
         <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
         <script src="assets/js/main.js"></script>

   </body>
   
</html>

