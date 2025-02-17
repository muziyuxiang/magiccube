<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>magic_cube</title>
</head>
<link rel="stylesheet" href="style.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="javascript.js"></script>
<body>


<!-- 初试的输入状态页面 -->
    <div class="init_wrap">
    	<div class="init_wrap_container">
    		<div style="height: 60px; background-color: transparent;width: 100%;"></div>
    		<div class="first">
    			<div class="up_f">
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes middle_c">上</div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    			</div>
    		</div>
    		<div class="second">
    			<div class="left_f">
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes middle_c">左</div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    			</div>
    			<div class="front_f">
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes middle_c">前</div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    			</div>
    			<div class="right_f">
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes middle_c">右</div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    			</div>
    			<div class="back_f">
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes middle_c">后</div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    			</div>
    		</div>
    		<div class="third">
    			<div class="down_f">
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes middle_c">下</div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    				<div data-newcolor="white" class="small_cubes"></div>
    			</div>
    		</div>

    		<div class="pick_color">
    			<button data-color="red" style="background-color: red" >红</button>
    			<button data-color="orange" style="background-color: orange" >橙</button>
    			<button data-color="yellow" style="background-color: yellow" >黄</button>
    			<button data-color="green" style="background-color: green" >绿</button>
    			<button data-color="blue" style="background-color: blue ; color:white" >蓝</button>
    			<button data-color="white" style="background-color: white" >白</button>
    			<button data-color="black" style="background-color: black; color:white" >黑</button>
    			<span class="picked_up_msg">已选中的颜色:</span>
    			<span class="picked_up_color"></span>
    		</div>

    		<div class="pre_color_wrap">
    			<button class="pre_color_01">预设-01</button>
    			<button class="pre_color_02">预设-02</button>
    			<button class="pre_color_03">预设-03</button>
    			<button class="pre_color_04">预设-04</button>
    		</div>
             
            <div class="button_wrap">
            	<button class="confirm">确定</button>
            	<button class="cancel">取消</button>
            </div>
    	</div>
    </div>


    <div class="content_wrap">
    	
<!-- 展示魔方复原页面 -->
		<div class="big_box_range">
				<div>
	                <span>X轴</span>
					<input class="x_rotate" type="range" name="points" min="-180" max="180" step="15" value="-30" />
					<span class="x_deg"></span>
				</div>
				<div>
	                <span>Y轴</span>
					<input class="y_rotate" type="range" name="points" min="-180" max="180" step="15" value="-30" />
					<span class="y_deg"></span>
				</div>
				<div>
	                <span>Z轴</span>
					<input class="z_rotate" type="range" name="points" min="-180" max="180" step="15" value="0" />
					<span class="z_deg"></span>
				</div>
				<div>
	                <span>转速</span>
					<input class="speed" type="range" name="points" min="50" max="2000" step="50" value="1000" />
					<span class="speed_num"></span>
				</div>
		</div>

		<div class="btns_wrap">
			<div class="rotate_btns">
				<button class="btn1">180-U</button>
				<button class="btn2">180-L</button>
				<button class="btn3">180-F</button>
				<button class="btn4">180-R</button>
				<button class="btn5">180-D</button>
				<button class="btn6">180-B</button>
				<button class="btnF">视角复位</button>
				<!-- <button class="testRun">testRun</button> -->
			</div>
			<div class="rotate_btns_00">
				<button class="btn01">-180-U</button>
				<button class="btn02">-180-L</button>
				<button class="btn03">-180-F</button>
				<button class="btn04">-180-R</button>
				<button class="btn05">-180-D</button>
				<button class="btn06">-180-B</button>
				<button class="btn20">随机打乱</button>
				<!-- <button class="testF5">test开关</button> -->
			</div>
			<div class="rotate_btns_01">
				<button class="btn7">90-U</button>
				<button class="btn8">90-L</button>
				<button class="btn9">90-F</button>
				<button class="btn10">90-R</button>
				<button class="btn11">90-D</button>
				<button class="btn12">90-B</button>
			</div>
			<div class="rotate_btns_02">
				<button class="btn13">-90-U</button>
				<button class="btn14">-90-L</button>
				<button class="btn15">-90-F</button>
				<button class="btn16">-90-R</button>
				<button class="btn17">-90-D</button>
				<button class="btn18">-90-B</button>
			</div>
			<div class="stepByStep">
				<button class="show_init">初始页</button>
				<button class="cube_reset">色块复位</button>
				<button class="last_step">上一步</button>
				<button class="next_step">下一步</button>
				<button class="steps_auto">系统求解</button>
				<button class="btnZ">暂停</button>

			</div>
		</div>

    </div>

	<div class="content_wrap content_wrap_02">

		<button class="btn_left"><</button>
		<div class="wrap" id="wrap">
			<div class="big_box" id="big_box" style="transform: rotateX(-30deg) rotateY(-30deg) rotateZ(0deg);">
			</div>
		</div>
		<button class="btn_right">></button>

	</div>

	<div class="bianliang"></div>
</body>
</html>












