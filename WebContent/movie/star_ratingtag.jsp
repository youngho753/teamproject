<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 이미지 밑 별점 들어가는곳 -->
<style>
/*별점 css*/
.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('/teamproject/star_grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px; background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}   
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
/*별점 css끝*/

/* hover 효과*/
/*#hover-frame {
  width:250px;
  height:360px;
  background:#ffffff;
  box-shadow: 0 1px 10px rgba(0,0,0,0.5);
  position:relative;
  top:50px;
  left:50px;
}*/

.poster {
  width:250px;
  height:360px;
  position:relative;
  cursor:pointer;
}

.poster img{
  box-shadow: 0 1px 10px rgba(0,0,0,0.4);
  width:inherit;
  height:inherit;
}

.darkness {
  position:absolute;
  top:0;
  left:0;
  width:inherit;
  height:inherit;
  background:#000000;
  opacity:0;
  transition:all .6s linear;
}

.star-rating{
  position:absolute;
  top:260px;
  text-align:center;
  opacity:0;
  transform:scale(1);
  transition:all .3s linear;
}

.poster:hover .darkness{
  opacity:0.4;
}

.poster:hover .star-rating {
  opacity:1;
  transform:scale(1);
}	
</style>

<script>
/*별점 : .star-input*/
/*출처 : http://codepen.io/naradesign/pen/zxPbOw*/
var starRating = function(){
var $star = $(".star-input"),
    $result = $star.find("output>b");
	
  	$(document)
	.on("focusin", ".star-input>.input", 
		function(){
   		 $(this).addClass("focus");
 	})
		 
   	.on("focusout", ".star-input>.input", function(){
    	var $this = $(this);
    	setTimeout(function(){
      		if($this.find(":focus").length === 0){
       			$this.removeClass("focus");
     	 	}
   		}, 100);
 	 })
  
    .on("change", ".star-input :radio", function(){
    	$result.text($(this).next().text());
  	})
    .on("mouseover", ".star-input label", function(){
    	$result.text($(this).text());
    })
    .on("mouseleave", ".star-input>.input", function(){
    	var $checked = $star.find(":checked");
    		if($checked.length === 0){
     	 		$result.text("평점을 매겨주세요!");
   		 	} else {
     	 		$result.text($checked.next().text());
    		}
  	});
};

starRating();
</script>


	<div class="darkness"></div>
	<div class="star-rating">
		<span draggable="false">
			 <span class="star-input"> <span class="input">
			  <input type="radio" name="star-input" value="1"id="p1">
			   <label for="p1">괜히봤어요</label>
			    <input type="radio"
					name="star-input" value="2" id="p2">
					 <label for="p2">기대하진말아요
						</label>
				 <input type="radio" name="star-input" value="3" id="p3">
					<label for="p3">무난했어요</label>
				 <input type="radio" name="star-input"
					value="4" id="p4"> <label for="p4">기대해도 좋아요!</label>
				 <input
					type="radio" name="star-input" value="5" id="p5"> <label
					for="p5">너무 멋진 영화였어요!</label>
			</span>
				<div>
					<output for="star-input" style="color: rgba(255, 255, 255, 0.8)">
						<b>평점을 매겨주세요!</b>
					</output>
				</div>
		</span>
		</span>
	</div>