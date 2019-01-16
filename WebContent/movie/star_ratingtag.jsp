<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 이미지 밑 별점 들어가는곳 -->
<div class="darkness"></div>
<div class="star-rating">
	<span draggable="false"> <span class="star-input"> <span
			class="input"> <input type="radio" name="star-input" value="1"
				id="p1"> <label for="p1">괜히봤어요</label> <input type="radio"
				name="star-input" value="2" id="p2"> <label for="p2">기대하진
					말아요</label> <input type="radio" name="star-input" value="3" id="p3">
				<label for="p3">무난했어요</label> <input type="radio" name="star-input"
				value="4" id="p4"> <label for="p4">기대해도 좋아요!</label> <input
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