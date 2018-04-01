$(function(){
    $('.topmenu li').click(function(){
         $('.topmenu li').removeClass('active');
        $(this).addClass('active');
    })
    // 数量加减价格变化
    var $plus = $('.plus'),
        $reduce = $('.reduce'),
        $all_sum = $('.sum');
    $plus.click(function () {
        var $inputVal = $(this).prev('input'),
            $count = parseInt($inputVal.val())+1,
            $obj = $(this).parents('.productRight').find('.reduce'),
            $priceTotalObj = $(this).parents('.productRight').find('.sum_price'),
            $price = $(this).parents('.productRight').find('.price').html(),  //单价
            $priceTotal = $count*parseInt($price.substring(1));
        $inputVal.val($count);
        $priceTotalObj.html('￥'+$priceTotal);
        if($inputVal.val()>1 && $obj.hasClass('reSty')){
            $obj.removeClass('reSty');
        }
    });
    $reduce.click(function () {
        var $inputVal = $(this).next('input'),
            $count = parseInt($inputVal.val())-1,
            $priceTotalObj = $(this).parents('.productRight').find('.sum_price'),
            $price = $(this).parents('.productRight').find('.price').html(),  //单价
            $priceTotal = $count*parseInt($price.substring(1));
        if($inputVal.val()>1){
            $inputVal.val($count);
            $priceTotalObj.html('￥'+$priceTotal);
        }
        if($inputVal.val()==1 && !$(this).hasClass('reSty')){
            $(this).addClass('reSty');
        }
    });
    $all_sum.keyup(function () {
        var $count = 0,
            $priceTotalObj = $(this).parents('.productRight').find('.sum_price'),
            $price = $(this).parents('.productRight').find('.price').html(),  //单价
            $priceTotal = 0;
        if($(this).val()==''){
            $(this).val('1');
        }
        $(this).val($(this).val().replace(/\D|^0/g,''));
        $count = $(this).val();
        $priceTotal = $count*parseInt($price.substring(1));
        $(this).attr('value',$count);
        $priceTotalObj.html('￥'+$priceTotal);
    })

    //尺寸
    $('.size>ul>li').click(function(){
        if (!$(this).hasClass('active')) {
            $('.size>ul>li').removeClass('active');
            $(this).addClass('active');
        }
    })
    // 加入购物车
    $('.main .cart').click(function(){
        alert("已加入购物车~");
        $(this).text("已加入购物车");
    })
})