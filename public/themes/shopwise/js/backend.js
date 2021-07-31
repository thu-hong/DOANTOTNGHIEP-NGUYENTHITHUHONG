!function(e){"use strict";e.ajaxSetup({headers:{"X-CSRF-TOKEN":e('meta[name="csrf-token"]').attr("content")}}),window.botbleCookieNewsletter=function(){var t="botble_cookie_newsletter",o=e("div[data-session-domain]").data("session-domain"),s=e("#newsletter-modal");function a(e){!function(e,t,s){var a=new Date;a.setTime(a.getTime()+24*s*60*60*1e3),document.cookie="botble_cookie_newsletter=1;expires="+a.toUTCString()+";domain="+o+";path=/"}(0,0,e)}function r(e){return-1!==document.cookie.split("; ").indexOf(e+"=1")}return r(t)||setTimeout((function(){s.modal("show",{},500)}),5e3),s.on("hidden.bs.modal",(function(){!r(t)&&e("#dont_show_again").is(":checked")?a(3):a(1/24)})),{newsletterWithCookies:a,hideCookieDialog:function(){s.modal("hide",{},500)}}}();var t=function(t){e(".newsletter-error-message").html(t).show()},o=function(t){e(".newsletter-success-message").html(t).show()},s=function(o){var s="";e.each(o,(function(e,t){""!==s&&(s+="<br />"),s+=t})),t(s)};window.showAlert=function(t,o){if(t&&""!==o){var s=Math.floor(1e3*Math.random()),a='<div class="alert '.concat(t,' alert-dismissible" id="').concat(s,'">\n                            <span class="close ion-close" data-dismiss="alert" aria-label="close"></span>\n                            <i class="ion-')+("alert-success"===t?"checkmark-circled":"alert-circled")+' message-icon"></i>\n                            '.concat(o,"\n                        </div>");e("#alert-container").append(a).ready((function(){window.setTimeout((function(){e("#alert-container #".concat(s)).remove()}),6e3)}))}},e(document).ready((function(){e(document).on("click",".newsletter-form button[type=submit]",(function(a){a.preventDefault(),a.stopPropagation();var r=e(this);r.addClass("button-loading"),e(".newsletter-success-message").html("").hide(),e(".newsletter-error-message").html("").hide(),e.ajax({type:"POST",cache:!1,url:r.closest("form").prop("action"),data:new FormData(r.closest("form")[0]),contentType:!1,processData:!1,success:function(e){r.removeClass("button-loading"),"undefined"!=typeof refreshRecaptcha&&refreshRecaptcha(),e.error?t(e.message):(window.botbleCookieNewsletter.newsletterWithCookies(30),r.closest("form").find("input[type=email]").val(""),o(e.message),setTimeout((function(){r.closest(".modal-body").find('button[data-dismiss="modal"]').trigger("click")}),2e3))},error:function(o){var a;"undefined"!=typeof refreshRecaptcha&&refreshRecaptcha(),r.removeClass("button-loading"),void 0!==(a=o).errors&&a.errors.length?s(a.errors):void 0!==a.responseJSON?void 0!==a.responseJSON.errors?422===a.status&&s(a.responseJSON.errors):void 0!==a.responseJSON.message?t(a.responseJSON.message):e.each(a.responseJSON,(function(o,s){e.each(s,(function(e,o){t(o)}))})):t(a.statusText)}})}))})),e(document).ready((function(){e(document).on("change",".switch-currency",(function(){e(this).closest("form").submit()})),e(document).on("change",".product-filter-item",(function(){e(this).closest("form").submit()})),e(document).on("click",".js-add-to-wishlist-button",(function(t){t.preventDefault();var o=e(this);o.addClass("button-loading"),e.ajax({url:o.prop("href"),method:"POST",success:function(t){if(t.error)return o.removeClass("button-loading"),window.showAlert("alert-danger",t.message),!1;window.showAlert("alert-success",t.message),e(".btn-wishlist span").text(t.data.count),o.removeClass("button-loading").removeClass("js-add-to-wishlist-button").addClass("js-remove-from-wishlist-button active")},error:function(){o.removeClass("button-loading")}})})),e(document).on("click",".js-remove-from-wishlist-button",(function(t){t.preventDefault();var o=e(this);o.addClass("button-loading"),e.ajax({url:o.prop("href"),method:"DELETE",success:function(t){if(t.error)return o.removeClass("button-loading"),window.showAlert("alert-danger",t.message),!1;window.showAlert("alert-success",t.message),e(".btn-wishlist span").text(t.data.count),o.closest("tr").remove(),o.removeClass("button-loading").removeClass("js-remove-from-wishlist-button active").addClass("js-add-to-wishlist-button")},error:function(){o.removeClass("button-loading")}})})),e(document).on("click",".add-to-cart-button",(function(t){t.preventDefault();var o=e(this);o.prop("disabled",!0).addClass("button-loading"),e.ajax({url:o.prop("href"),method:"POST",data:{id:o.data("id")},dataType:"json",success:function(t){if(o.prop("disabled",!1).removeClass("button-loading").addClass("active"),t.error)return window.showAlert("alert-danger",t.message),!1;window.showAlert("alert-success",t.message),"checkout"===o.prop("name")&&void 0!==t.data.next_url?window.location.href=t.data.next_url:e.ajax({url:window.siteUrl+"/ajax/cart",method:"GET",success:function(t){t.error||(e(".cart_box").html(t.data.html),e(".btn-shopping-cart span").text(t.data.count))}})},error:function(){o.prop("disabled",!1).removeClass("button-loading")}})})),e(document).on("click",".remove-cart-button",(function(t){t.preventDefault(),e(".confirm-remove-item-cart").data("url",e(this).prop("href")),e("#remove-item-modal").modal("show")})),e(document).on("click",".confirm-remove-item-cart",(function(t){t.preventDefault();var o=e(this);o.prop("disabled",!0).addClass("button-loading"),e.ajax({url:o.data("url"),method:"GET",success:function(t){if(o.prop("disabled",!1).removeClass("button-loading"),t.error)return!1;o.closest(".modal").modal("hide"),e(".form--shopping-cart").length&&e(".form--shopping-cart").load(window.location.href+" .form--shopping-cart > *"),e.ajax({url:window.siteUrl+"/ajax/cart",method:"GET",success:function(t){t.error||(e(".cart_box").html(t.data.html),e(".btn-shopping-cart span").text(t.data.count))}})},error:function(){o.prop("disabled",!1).removeClass("button-loading")}})})),window.onBeforeChangeSwatches=function(){e(".add-to-cart-form button[type=submit]").prop("disabled",!0).addClass("btn-disabled")},window.onChangeSwatchesSuccess=function(t){if(e(".add-to-cart-form .error-message").hide(),e(".add-to-cart-form .success-message").hide(),t.error)e(".add-to-cart-form button[type=submit]").prop("disabled",!0).addClass("btn-disabled"),e(".number-items-available").html('<span class="text-danger">('+t.message+")</span>").show(),e("#hidden-product-id").val("");else{e(".add-to-cart-form").find(".error-message").hide(),e(".product_price .product-sale-price-text").text(t.data.display_sale_price),t.data.sale_price!==t.data.price?(e(".product_price .product-price-text").text(t.data.display_price).show(),e(".product_price .on_sale .on_sale_percentage_text").text(t.data.sale_percentage).show(),e(".product_price .show").hide()):(e(".product_price .product-price-text").text(t.data.sale_percentage).hide(),e(".product_price .on_sale .on_sale_percentage_text").text(t.data.sale_percentage).hide(),e(".product_price .on_sale").hide()),e(".product_description #product-sku").text(t.data.sku),e("#hidden-product-id").val(t.data.id),e(".add-to-cart-form button[type=submit]").prop("disabled",!1).removeClass("btn-disabled"),e(".number-items-available").html('<span class="text-success">('+t.message+")</span>").show();var o="";t.data.image_with_sizes.thumb.forEach((function(e,s){o+='<div class="item"><a href="#" class="product_gallery_item '+(0===s?"active":"")+'" data-image="'+t.data.image_with_sizes.origin[s]+'" data-zoom-image="'+t.data.image_with_sizes.origin[s]+'"><img src="'+e+'" alt="image"/></a></div>'}));var s=e(".slick_slider");s.slick("unslick"),s.html(o),s.slick({rtl:"rtl"===e("body").prop("dir"),arrows:s.data("arrows"),dots:s.data("dots"),infinite:s.data("infinite"),centerMode:s.data("center-mode"),vertical:s.data("vertical"),fade:s.data("fade"),cssEase:s.data("css-ease"),autoplay:s.data("autoplay"),verticalSwiping:s.data("vertical-swiping"),autoplaySpeed:s.data("autoplay-speed"),speed:s.data("speed"),pauseOnHover:s.data("pause-on-hover"),draggable:s.data("draggable"),slidesToShow:s.data("slides-to-show"),slidesToScroll:s.data("slides-to-scroll"),asNavFor:s.data("as-nav-for"),focusOnSelect:s.data("focus-on-select"),responsive:s.data("responsive")}),e(window).trigger("resize");var a=e("#product_img");a.prop("src",t.data.image_with_sizes.origin[0]).data("zoom-image",t.data.image_with_sizes.origin[0]);var r=!1;(r=!r)?a.length>0&&a.elevateZoom({cursor:"crosshair",easing:!0,gallery:"pr_item_gallery",zoomType:"inner",galleryActiveClass:"active"}):(e.removeData(a,"elevateZoom"),e(".zoomContainer:last-child").remove())}};var s=function(t,o){if(void 0===t.errors||_.isArray(t.errors))if(void 0!==t.responseJSON)if(void 0!==t.responseJSON.errors&&422===t.status)a(t.responseJSON.errors,o);else if(void 0!==t.responseJSON.message)e(o).find(".error-message").html(t.responseJSON.message).show();else{var s="";e.each(t.responseJSON,(function(t,o){e.each(o,(function(e,t){s+=t+"<br />"}))})),e(o).find(".error-message").html(s).show()}else e(o).find(".error-message").html(t.statusText).show();else a(t.errors,o)},a=function(t,o){var s="";e.each(t,(function(e,t){s+=t+"<br />"})),e(o).find(".success-message").html("").hide(),e(o).find(".error-message").html("").hide(),e(o).find(".error-message").html(s).show()};e(document).on("click",".add-to-cart-form button[type=submit]",(function(t){t.preventDefault(),t.stopPropagation();var o=e(this);e("#hidden-product-id").val()?(o.prop("disabled",!0).addClass("btn-disabled").addClass("button-loading"),o.closest("form").find(".error-message").hide(),o.closest("form").find(".success-message").hide(),e.ajax({type:"POST",cache:!1,url:o.closest("form").prop("action"),data:new FormData(o.closest("form")[0]),contentType:!1,processData:!1,success:function(t){if(o.prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading"),t.error)return o.closest("form").find(".error-message").html(t.message).show(),!1;o.closest("form").find(".success-message").html(t.message).show(),"checkout"===o.prop("name")&&void 0!==t.data.next_url?window.location.href=t.data.next_url:e.ajax({url:window.siteUrl+"/ajax/cart",method:"GET",success:function(t){t.error||(e(".cart_box").html(t.data.html),e(".btn-shopping-cart span").text(t.data.count))}})},error:function(e){o.prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading"),s(e,o.closest("form"))}})):o.prop("disabled",!0).addClass("btn-disabled")})),e(document).on("change",".submit-form-on-change",(function(){e(this).closest("form").submit()})),e(document).on("click",".form-review-product button[type=submit]",(function(a){var r=this;a.preventDefault(),a.stopPropagation(),e(this).prop("disabled",!0).addClass("btn-disabled").addClass("button-loading"),e.ajax({type:"POST",cache:!1,url:e(this).closest("form").prop("action"),data:new FormData(e(this).closest("form")[0]),contentType:!1,processData:!1,success:function(s){s.error?t(s.message):(e(r).closest("form").find("select").val(0),e(r).closest("form").find("textarea").val(""),o(s.message),setTimeout((function(){window.location.reload()}),1500)),e(r).prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading")},error:function(t){e(r).prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading"),s(t,e(r).closest("form"))}})}))})),e(".form-coupon-wrapper .coupon-code").keypress((function(t){if(13===t.keyCode)return e(".apply-coupon-code").trigger("click"),t.preventDefault(),t.stopPropagation(),!1})),e(document).on("click",".btn-apply-coupon-code",(function(t){t.preventDefault();var o=e(t.currentTarget);o.prop("disabled",!0).addClass("btn-disabled").addClass("button-loading"),e.ajax({url:o.data("url"),type:"POST",data:{coupon_code:o.closest(".form-coupon-wrapper").find(".coupon-code").val()},headers:{"X-CSRF-TOKEN":e('meta[name="csrf-token"]').attr("content")},success:function(t){t.error?(e(".coupon-error-msg .text-danger").text(t.message),o.prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading")):e(".form--shopping-cart").load(window.location.href+"?applied_coupon=1 .form--shopping-cart > *",(function(){o.prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading")}))},error:function(t){void 0!==t.responseJSON?"undefined"!==t.responseJSON.errors?e.each(t.responseJSON.errors,(function(t,o){e.each(o,(function(t,o){e(".coupon-error-msg .text-danger").text(o)}))})):void 0!==t.responseJSON.message&&e(".coupon-error-msg .text-danger").text(t.responseJSON.message):e(".coupon-error-msg .text-danger").text(t.status.text),o.prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading")}})})),e(document).on("click",".btn-remove-coupon-code",(function(t){t.preventDefault();var o=e(t.currentTarget);o.prop("disabled",!0).addClass("btn-disabled").addClass("button-loading"),e.ajax({url:o.data("url"),type:"POST",headers:{"X-CSRF-TOKEN":e('meta[name="csrf-token"]').attr("content")},success:function(t){t.error?(e(".coupon-error-msg .text-danger").text(t.message),o.prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading")):e(".form--shopping-cart").load(window.location.href+" .form--shopping-cart > *",(function(){o.prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading")}))},error:function(t){void 0!==t.responseJSON?"undefined"!==t.responseJSON.errors?e.each(t.responseJSON.errors,(function(t,o){e.each(o,(function(t,o){e(".coupon-error-msg .text-danger").text(o)}))})):void 0!==t.responseJSON.message&&e(".coupon-error-msg .text-danger").text(t.responseJSON.message):e(".coupon-error-msg .text-danger").text(t.status.text),o.prop("disabled",!1).removeClass("btn-disabled").removeClass("button-loading")}})}))}(jQuery);