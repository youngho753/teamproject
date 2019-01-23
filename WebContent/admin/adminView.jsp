<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        *{
            padding:0px;
            margin:10px;
            box-sizing: border-box;
        }

        .container {
            border: 1px solid black;   
            text-align: center;
            width : 1600px;
            margin : 0 auto;
        }

        .img-list1, .img-list2 {
            display: grid;
            grid-template-columns: auto auto auto auto auto auto;
        }

        .img-list1 div {
            border: 1px solid brown;
            height:200px;
        }
        .img-list2 > div {
            border: 1px solid brown;
            height:200px;
        }
        
            
        /*@media(max-width:670px){
            .img-list {
                grid-template-columns: auto;
            }
        }*/

        nav {
            display: grid;
            grid-template-columns: auto auto;
            justify-content: space-between;
        }

        ul li {
            display: inline-block;
        }
        .img-list{
            
        }
    </style>
</head>
<body>
<div class="container">
   
    <nav>
        <div>위젯리스트</div>
        
        
    </nav>
    <div class="img-list1">
        <div>이미지1</div>
        <div>이미지2</div>
        <div>이미지3</div>
        <div>이미지4</div>
        <div>이미지5</div>
        <div>이미지6</div>
    </div>
    
    <div class="img-list2">
        <div>이미지1</div>
        <div>이미지2</div>
        <div>이미지3</div>
        <div>이미지4</div>
        <div>이미지5</div>
        <div>이미지6</div>
    </div>
    
<select name="searchType">
    <option value="subject" selected = "selected">제목</option>
    <option value="학생">모르겠어요</option>
    <option value="회사원">회사원</option>
</select>
<input type = "text" name = "searchText">
<input type = "button" value = "🍳">
<input type = "button" value = "글쓰기">
</div>
</body>
</html>