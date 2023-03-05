<?php

/**
 * A helper file for Dcat Admin, to provide autocomplete information to your IDE
 *
 * This file should not be included in your code, only analyzed by your IDE!
 *
 * @author jqh <841324345@qq.com>
 */
namespace Dcat\Admin {
    use Illuminate\Support\Collection;

    /**
     * @property Grid\Column|Collection id
     * @property Grid\Column|Collection type
     * @property Grid\Column|Collection maximums
     * @property Grid\Column|Collection executes
     * @property Grid\Column|Collection execute_at
     * @property Grid\Column|Collection end_at
     * @property Grid\Column|Collection status
     * @property Grid\Column|Collection remark
     * @property Grid\Column|Collection cid
     * @property Grid\Column|Collection created_at
     * @property Grid\Column|Collection name
     * @property Grid\Column|Collection version
     * @property Grid\Column|Collection detail
     * @property Grid\Column|Collection updated_at
     * @property Grid\Column|Collection is_enabled
     * @property Grid\Column|Collection parent_id
     * @property Grid\Column|Collection order
     * @property Grid\Column|Collection icon
     * @property Grid\Column|Collection uri
     * @property Grid\Column|Collection extension
     * @property Grid\Column|Collection permission_id
     * @property Grid\Column|Collection menu_id
     * @property Grid\Column|Collection slug
     * @property Grid\Column|Collection http_method
     * @property Grid\Column|Collection http_path
     * @property Grid\Column|Collection role_id
     * @property Grid\Column|Collection user_id
     * @property Grid\Column|Collection value
     * @property Grid\Column|Collection username
     * @property Grid\Column|Collection password
     * @property Grid\Column|Collection avatar
     * @property Grid\Column|Collection remember_token
     * @property Grid\Column|Collection key
     * @property Grid\Column|Collection expiration
     * @property Grid\Column|Collection contents
     * @property Grid\Column|Collection schedule
     * @property Grid\Column|Collection sleep
     * @property Grid\Column|Collection timeout
     * @property Grid\Column|Collection begin_at
     * @property Grid\Column|Collection weigh
     * @property Grid\Column|Collection uuid
     * @property Grid\Column|Collection connection
     * @property Grid\Column|Collection queue
     * @property Grid\Column|Collection payload
     * @property Grid\Column|Collection exception
     * @property Grid\Column|Collection failed_at
     * @property Grid\Column|Collection attempts
     * @property Grid\Column|Collection reserved_at
     * @property Grid\Column|Collection available_at
     * @property Grid\Column|Collection post_unique
     * @property Grid\Column|Collection author_unique
     * @property Grid\Column|Collection link
     * @property Grid\Column|Collection author
     * @property Grid\Column|Collection content
     * @property Grid\Column|Collection imgs
     * @property Grid\Column|Collection comments
     * @property Grid\Column|Collection tags
     * @property Grid\Column|Collection musics
     * @property Grid\Column|Collection videos
     * @property Grid\Column|Collection circle_id
     * @property Grid\Column|Collection post_id
     * @property Grid\Column|Collection deleted_at
     * @property Grid\Column|Collection user_unique
     * @property Grid\Column|Collection email
     * @property Grid\Column|Collection token
     * @property Grid\Column|Collection runoob_id
     * @property Grid\Column|Collection runoob_title
     * @property Grid\Column|Collection runoob_author
     * @property Grid\Column|Collection submission_date
     * @property Grid\Column|Collection test_v
     * @property Grid\Column|Collection qinghang_test
     * @property Grid\Column|Collection qinghang_test2
     * @property Grid\Column|Collection introduce
     * @property Grid\Column|Collection contact_information
     * @property Grid\Column|Collection identity_picture
     * @property Grid\Column|Collection is_examine
     * @property Grid\Column|Collection overrule_content
     * @property Grid\Column|Collection overrule_is_read
     * @property Grid\Column|Collection authentication_state
     * @property Grid\Column|Collection email_verified_at
     * @property Grid\Column|Collection intro
     * @property Grid\Column|Collection pic
     * @property Grid\Column|Collection target_type
     * @property Grid\Column|Collection target_id
     * @property Grid\Column|Collection domain
     * @property Grid\Column|Collection path
     * @property Grid\Column|Collection store_type
     * @property Grid\Column|Collection state
     * @property Grid\Column|Collection object_id
     * @property Grid\Column|Collection chat_content
     * @property Grid\Column|Collection chat_image
     * @property Grid\Column|Collection is_read
     * @property Grid\Column|Collection chat_state
     * @property Grid\Column|Collection circle_name
     * @property Grid\Column|Collection sort
     * @property Grid\Column|Collection circle_introduce
     * @property Grid\Column|Collection head_portrait
     * @property Grid\Column|Collection background_maps
     * @property Grid\Column|Collection plate_id
     * @property Grid\Column|Collection is_top_recommend
     * @property Grid\Column|Collection is_hot
     * @property Grid\Column|Collection circle_state
     * @property Grid\Column|Collection meta_key
     * @property Grid\Column|Collection meta_value
     * @property Grid\Column|Collection posts_id
     * @property Grid\Column|Collection posts_user_id
     * @property Grid\Column|Collection user_name
     * @property Grid\Column|Collection user_avatar
     * @property Grid\Column|Collection comment_agent_id
     * @property Grid\Column|Collection comment_agent_name
     * @property Grid\Column|Collection comment_agent_avatar
     * @property Grid\Column|Collection comment_content
     * @property Grid\Column|Collection comment_img_url
     * @property Grid\Column|Collection comment_id
     * @property Grid\Column|Collection is_sticky
     * @property Grid\Column|Collection comment_state
     * @property Grid\Column|Collection comment_user_id
     * @property Grid\Column|Collection exceptional_price
     * @property Grid\Column|Collection feedback_type
     * @property Grid\Column|Collection feedback_content
     * @property Grid\Column|Collection feedback_reply
     * @property Grid\Column|Collection is_solve
     * @property Grid\Column|Collection feedback_imgs
     * @property Grid\Column|Collection feedback_contact
     * @property Grid\Column|Collection feedback_state
     * @property Grid\Column|Collection size
     * @property Grid\Column|Collection url
     * @property Grid\Column|Collection forward_state
     * @property Grid\Column|Collection unicode16
     * @property Grid\Column|Collection img
     * @property Grid\Column|Collection desc
     * @property Grid\Column|Collection is_admin
     * @property Grid\Column|Collection depth
     * @property Grid\Column|Collection app_id
     * @property Grid\Column|Collection scene
     * @property Grid\Column|Collection code
     * @property Grid\Column|Collection np_id
     * @property Grid\Column|Collection superior_id
     * @property Grid\Column|Collection order_id
     * @property Grid\Column|Collection notice_type
     * @property Grid\Column|Collection order_type
     * @property Grid\Column|Collection order_information
     * @property Grid\Column|Collection order_price
     * @property Grid\Column|Collection order_pay_price
     * @property Grid\Column|Collection order_number
     * @property Grid\Column|Collection order_serial_number
     * @property Grid\Column|Collection parame
     * @property Grid\Column|Collection order_state
     * @property Grid\Column|Collection right
     * @property Grid\Column|Collection config
     * @property Grid\Column|Collection plate_name
     * @property Grid\Column|Collection plate_introduce
     * @property Grid\Column|Collection plate_state
     * @property Grid\Column|Collection posts_content
     * @property Grid\Column|Collection address_id
     * @property Grid\Column|Collection tags_id
     * @property Grid\Column|Collection is_information
     * @property Grid\Column|Collection posts_state
     * @property Grid\Column|Collection is_reward
     * @property Grid\Column|Collection is_blur
     * @property Grid\Column|Collection weight
     * @property Grid\Column|Collection last_reply_at
     * @property Grid\Column|Collection address_name
     * @property Grid\Column|Collection address_detailed
     * @property Grid\Column|Collection latitude
     * @property Grid\Column|Collection longitude
     * @property Grid\Column|Collection address_state
     * @property Grid\Column|Collection goods_id
     * @property Grid\Column|Collection img_url
     * @property Grid\Column|Collection posts_img_state
     * @property Grid\Column|Collection video_url
     * @property Grid\Column|Collection video_thumb_url
     * @property Grid\Column|Collection posts_video_state
     * @property Grid\Column|Collection video_width
     * @property Grid\Column|Collection video_height
     * @property Grid\Column|Collection option1
     * @property Grid\Column|Collection num1
     * @property Grid\Column|Collection option2
     * @property Grid\Column|Collection num2
     * @property Grid\Column|Collection option3
     * @property Grid\Column|Collection num3
     * @property Grid\Column|Collection option4
     * @property Grid\Column|Collection num4
     * @property Grid\Column|Collection option5
     * @property Grid\Column|Collection num5
     * @property Grid\Column|Collection order_good_id
     * @property Grid\Column|Collection product_id
     * @property Grid\Column|Collection amount
     * @property Grid\Column|Collection search_content
     * @property Grid\Column|Collection mobile
     * @property Grid\Column|Collection province
     * @property Grid\Column|Collection city
     * @property Grid\Column|Collection county
     * @property Grid\Column|Collection adds
     * @property Grid\Column|Collection is_check
     * @property Grid\Column|Collection goods_pic
     * @property Grid\Column|Collection goods_name
     * @property Grid\Column|Collection goods_product
     * @property Grid\Column|Collection vip_price
     * @property Grid\Column|Collection price
     * @property Grid\Column|Collection num
     * @property Grid\Column|Collection bg_img
     * @property Grid\Column|Collection is_highlight
     * @property Grid\Column|Collection good_id
     * @property Grid\Column|Collection tk_platform_id
     * @property Grid\Column|Collection dtk_id
     * @property Grid\Column|Collection tag
     * @property Grid\Column|Collection paid_content
     * @property Grid\Column|Collection views
     * @property Grid\Column|Collection buys
     * @property Grid\Column|Collection sku
     * @property Grid\Column|Collection classify_id
     * @property Grid\Column|Collection service_id
     * @property Grid\Column|Collection is_inspiration
     * @property Grid\Column|Collection param_value
     * @property Grid\Column|Collection stock
     * @property Grid\Column|Collection goods_amount
     * @property Grid\Column|Collection discounts_amount
     * @property Grid\Column|Collection order_amount
     * @property Grid\Column|Collection payed
     * @property Grid\Column|Collection serial_number
     * @property Grid\Column|Collection pay_status
     * @property Grid\Column|Collection cost_freight
     * @property Grid\Column|Collection adds_name
     * @property Grid\Column|Collection adds_mobile
     * @property Grid\Column|Collection address
     * @property Grid\Column|Collection express
     * @property Grid\Column|Collection express_no
     * @property Grid\Column|Collection has_virtual
     * @property Grid\Column|Collection user_remark
     * @property Grid\Column|Collection payment_time
     * @property Grid\Column|Collection ship_at
     * @property Grid\Column|Collection confirm_time
     * @property Grid\Column|Collection product
     * @property Grid\Column|Collection recharge
     * @property Grid\Column|Collection quantity
     * @property Grid\Column|Collection poster
     * @property Grid\Column|Collection slideshow_type
     * @property Grid\Column|Collection slideshow_state
     * @property Grid\Column|Collection time
     * @property Grid\Column|Collection inner_id
     * @property Grid\Column|Collection external_id
     * @property Grid\Column|Collection tag_id
     * @property Grid\Column|Collection tags_name
     * @property Grid\Column|Collection tag_introduce
     * @property Grid\Column|Collection pc_background_maps
     * @property Grid\Column|Collection tags_number
     * @property Grid\Column|Collection tags_state
     * @property Grid\Column|Collection condition_type_0
     * @property Grid\Column|Collection condition_type_1
     * @property Grid\Column|Collection condition_num
     * @property Grid\Column|Collection reward_type
     * @property Grid\Column|Collection reward_num
     * @property Grid\Column|Collection user_background_maps
     * @property Grid\Column|Collection user_introduce
     * @property Grid\Column|Collection user_birthday
     * @property Grid\Column|Collection user_mobile
     * @property Grid\Column|Collection weixin_name
     * @property Grid\Column|Collection weixin_openid
     * @property Grid\Column|Collection weixin_unionid
     * @property Grid\Column|Collection weixin_app_openid
     * @property Grid\Column|Collection weixin_mp_openid
     * @property Grid\Column|Collection weixin_web_openid
     * @property Grid\Column|Collection weixin_shop_openid
     * @property Grid\Column|Collection phone
     * @property Grid\Column|Collection country
     * @property Grid\Column|Collection authentication_id
     * @property Grid\Column|Collection is_authentication
     * @property Grid\Column|Collection is_official
     * @property Grid\Column|Collection is_member
     * @property Grid\Column|Collection is_robot
     * @property Grid\Column|Collection gender
     * @property Grid\Column|Collection user_state
     * @property Grid\Column|Collection user_circle_state
     * @property Grid\Column|Collection incre
     * @property Grid\Column|Collection tip
     * @property Grid\Column|Collection balance
     * @property Grid\Column|Collection sum_price
     * @property Grid\Column|Collection withdrawal_price
     * @property Grid\Column|Collection bank_name
     * @property Grid\Column|Collection bank_card
     * @property Grid\Column|Collection object
     * @property Grid\Column|Collection user_follow_id
     * @property Grid\Column|Collection user_follow_state
     * @property Grid\Column|Collection pay
     * @property Grid\Column|Collection online
     * @property Grid\Column|Collection report_type
     * @property Grid\Column|Collection report_message
     * @property Grid\Column|Collection report_imgs
     * @property Grid\Column|Collection contact
     * @property Grid\Column|Collection task_id
     * @property Grid\Column|Collection vote_id
     * @property Grid\Column|Collection vote_option
     * @property Grid\Column|Collection refuse_tip
     * @property Grid\Column|Collection account_at
     * @property Grid\Column|Collection subject_id
     *
     * @method Grid\Column|Collection id(string $label = null)
     * @method Grid\Column|Collection type(string $label = null)
     * @method Grid\Column|Collection maximums(string $label = null)
     * @method Grid\Column|Collection executes(string $label = null)
     * @method Grid\Column|Collection execute_at(string $label = null)
     * @method Grid\Column|Collection end_at(string $label = null)
     * @method Grid\Column|Collection status(string $label = null)
     * @method Grid\Column|Collection remark(string $label = null)
     * @method Grid\Column|Collection cid(string $label = null)
     * @method Grid\Column|Collection created_at(string $label = null)
     * @method Grid\Column|Collection name(string $label = null)
     * @method Grid\Column|Collection version(string $label = null)
     * @method Grid\Column|Collection detail(string $label = null)
     * @method Grid\Column|Collection updated_at(string $label = null)
     * @method Grid\Column|Collection is_enabled(string $label = null)
     * @method Grid\Column|Collection parent_id(string $label = null)
     * @method Grid\Column|Collection order(string $label = null)
     * @method Grid\Column|Collection icon(string $label = null)
     * @method Grid\Column|Collection uri(string $label = null)
     * @method Grid\Column|Collection extension(string $label = null)
     * @method Grid\Column|Collection permission_id(string $label = null)
     * @method Grid\Column|Collection menu_id(string $label = null)
     * @method Grid\Column|Collection slug(string $label = null)
     * @method Grid\Column|Collection http_method(string $label = null)
     * @method Grid\Column|Collection http_path(string $label = null)
     * @method Grid\Column|Collection role_id(string $label = null)
     * @method Grid\Column|Collection user_id(string $label = null)
     * @method Grid\Column|Collection value(string $label = null)
     * @method Grid\Column|Collection username(string $label = null)
     * @method Grid\Column|Collection password(string $label = null)
     * @method Grid\Column|Collection avatar(string $label = null)
     * @method Grid\Column|Collection remember_token(string $label = null)
     * @method Grid\Column|Collection key(string $label = null)
     * @method Grid\Column|Collection expiration(string $label = null)
     * @method Grid\Column|Collection contents(string $label = null)
     * @method Grid\Column|Collection schedule(string $label = null)
     * @method Grid\Column|Collection sleep(string $label = null)
     * @method Grid\Column|Collection timeout(string $label = null)
     * @method Grid\Column|Collection begin_at(string $label = null)
     * @method Grid\Column|Collection weigh(string $label = null)
     * @method Grid\Column|Collection uuid(string $label = null)
     * @method Grid\Column|Collection connection(string $label = null)
     * @method Grid\Column|Collection queue(string $label = null)
     * @method Grid\Column|Collection payload(string $label = null)
     * @method Grid\Column|Collection exception(string $label = null)
     * @method Grid\Column|Collection failed_at(string $label = null)
     * @method Grid\Column|Collection attempts(string $label = null)
     * @method Grid\Column|Collection reserved_at(string $label = null)
     * @method Grid\Column|Collection available_at(string $label = null)
     * @method Grid\Column|Collection post_unique(string $label = null)
     * @method Grid\Column|Collection author_unique(string $label = null)
     * @method Grid\Column|Collection link(string $label = null)
     * @method Grid\Column|Collection author(string $label = null)
     * @method Grid\Column|Collection content(string $label = null)
     * @method Grid\Column|Collection imgs(string $label = null)
     * @method Grid\Column|Collection comments(string $label = null)
     * @method Grid\Column|Collection tags(string $label = null)
     * @method Grid\Column|Collection musics(string $label = null)
     * @method Grid\Column|Collection videos(string $label = null)
     * @method Grid\Column|Collection circle_id(string $label = null)
     * @method Grid\Column|Collection post_id(string $label = null)
     * @method Grid\Column|Collection deleted_at(string $label = null)
     * @method Grid\Column|Collection user_unique(string $label = null)
     * @method Grid\Column|Collection email(string $label = null)
     * @method Grid\Column|Collection token(string $label = null)
     * @method Grid\Column|Collection runoob_id(string $label = null)
     * @method Grid\Column|Collection runoob_title(string $label = null)
     * @method Grid\Column|Collection runoob_author(string $label = null)
     * @method Grid\Column|Collection submission_date(string $label = null)
     * @method Grid\Column|Collection test_v(string $label = null)
     * @method Grid\Column|Collection qinghang_test(string $label = null)
     * @method Grid\Column|Collection qinghang_test2(string $label = null)
     * @method Grid\Column|Collection introduce(string $label = null)
     * @method Grid\Column|Collection contact_information(string $label = null)
     * @method Grid\Column|Collection identity_picture(string $label = null)
     * @method Grid\Column|Collection is_examine(string $label = null)
     * @method Grid\Column|Collection overrule_content(string $label = null)
     * @method Grid\Column|Collection overrule_is_read(string $label = null)
     * @method Grid\Column|Collection authentication_state(string $label = null)
     * @method Grid\Column|Collection email_verified_at(string $label = null)
     * @method Grid\Column|Collection intro(string $label = null)
     * @method Grid\Column|Collection pic(string $label = null)
     * @method Grid\Column|Collection target_type(string $label = null)
     * @method Grid\Column|Collection target_id(string $label = null)
     * @method Grid\Column|Collection domain(string $label = null)
     * @method Grid\Column|Collection path(string $label = null)
     * @method Grid\Column|Collection store_type(string $label = null)
     * @method Grid\Column|Collection state(string $label = null)
     * @method Grid\Column|Collection object_id(string $label = null)
     * @method Grid\Column|Collection chat_content(string $label = null)
     * @method Grid\Column|Collection chat_image(string $label = null)
     * @method Grid\Column|Collection is_read(string $label = null)
     * @method Grid\Column|Collection chat_state(string $label = null)
     * @method Grid\Column|Collection circle_name(string $label = null)
     * @method Grid\Column|Collection sort(string $label = null)
     * @method Grid\Column|Collection circle_introduce(string $label = null)
     * @method Grid\Column|Collection head_portrait(string $label = null)
     * @method Grid\Column|Collection background_maps(string $label = null)
     * @method Grid\Column|Collection plate_id(string $label = null)
     * @method Grid\Column|Collection is_top_recommend(string $label = null)
     * @method Grid\Column|Collection is_hot(string $label = null)
     * @method Grid\Column|Collection circle_state(string $label = null)
     * @method Grid\Column|Collection meta_key(string $label = null)
     * @method Grid\Column|Collection meta_value(string $label = null)
     * @method Grid\Column|Collection posts_id(string $label = null)
     * @method Grid\Column|Collection posts_user_id(string $label = null)
     * @method Grid\Column|Collection user_name(string $label = null)
     * @method Grid\Column|Collection user_avatar(string $label = null)
     * @method Grid\Column|Collection comment_agent_id(string $label = null)
     * @method Grid\Column|Collection comment_agent_name(string $label = null)
     * @method Grid\Column|Collection comment_agent_avatar(string $label = null)
     * @method Grid\Column|Collection comment_content(string $label = null)
     * @method Grid\Column|Collection comment_img_url(string $label = null)
     * @method Grid\Column|Collection comment_id(string $label = null)
     * @method Grid\Column|Collection is_sticky(string $label = null)
     * @method Grid\Column|Collection comment_state(string $label = null)
     * @method Grid\Column|Collection comment_user_id(string $label = null)
     * @method Grid\Column|Collection exceptional_price(string $label = null)
     * @method Grid\Column|Collection feedback_type(string $label = null)
     * @method Grid\Column|Collection feedback_content(string $label = null)
     * @method Grid\Column|Collection feedback_reply(string $label = null)
     * @method Grid\Column|Collection is_solve(string $label = null)
     * @method Grid\Column|Collection feedback_imgs(string $label = null)
     * @method Grid\Column|Collection feedback_contact(string $label = null)
     * @method Grid\Column|Collection feedback_state(string $label = null)
     * @method Grid\Column|Collection size(string $label = null)
     * @method Grid\Column|Collection url(string $label = null)
     * @method Grid\Column|Collection forward_state(string $label = null)
     * @method Grid\Column|Collection unicode16(string $label = null)
     * @method Grid\Column|Collection img(string $label = null)
     * @method Grid\Column|Collection desc(string $label = null)
     * @method Grid\Column|Collection is_admin(string $label = null)
     * @method Grid\Column|Collection depth(string $label = null)
     * @method Grid\Column|Collection app_id(string $label = null)
     * @method Grid\Column|Collection scene(string $label = null)
     * @method Grid\Column|Collection code(string $label = null)
     * @method Grid\Column|Collection np_id(string $label = null)
     * @method Grid\Column|Collection superior_id(string $label = null)
     * @method Grid\Column|Collection order_id(string $label = null)
     * @method Grid\Column|Collection notice_type(string $label = null)
     * @method Grid\Column|Collection order_type(string $label = null)
     * @method Grid\Column|Collection order_information(string $label = null)
     * @method Grid\Column|Collection order_price(string $label = null)
     * @method Grid\Column|Collection order_pay_price(string $label = null)
     * @method Grid\Column|Collection order_number(string $label = null)
     * @method Grid\Column|Collection order_serial_number(string $label = null)
     * @method Grid\Column|Collection parame(string $label = null)
     * @method Grid\Column|Collection order_state(string $label = null)
     * @method Grid\Column|Collection right(string $label = null)
     * @method Grid\Column|Collection config(string $label = null)
     * @method Grid\Column|Collection plate_name(string $label = null)
     * @method Grid\Column|Collection plate_introduce(string $label = null)
     * @method Grid\Column|Collection plate_state(string $label = null)
     * @method Grid\Column|Collection posts_content(string $label = null)
     * @method Grid\Column|Collection address_id(string $label = null)
     * @method Grid\Column|Collection tags_id(string $label = null)
     * @method Grid\Column|Collection is_information(string $label = null)
     * @method Grid\Column|Collection posts_state(string $label = null)
     * @method Grid\Column|Collection is_reward(string $label = null)
     * @method Grid\Column|Collection is_blur(string $label = null)
     * @method Grid\Column|Collection weight(string $label = null)
     * @method Grid\Column|Collection last_reply_at(string $label = null)
     * @method Grid\Column|Collection address_name(string $label = null)
     * @method Grid\Column|Collection address_detailed(string $label = null)
     * @method Grid\Column|Collection latitude(string $label = null)
     * @method Grid\Column|Collection longitude(string $label = null)
     * @method Grid\Column|Collection address_state(string $label = null)
     * @method Grid\Column|Collection goods_id(string $label = null)
     * @method Grid\Column|Collection img_url(string $label = null)
     * @method Grid\Column|Collection posts_img_state(string $label = null)
     * @method Grid\Column|Collection video_url(string $label = null)
     * @method Grid\Column|Collection video_thumb_url(string $label = null)
     * @method Grid\Column|Collection posts_video_state(string $label = null)
     * @method Grid\Column|Collection video_width(string $label = null)
     * @method Grid\Column|Collection video_height(string $label = null)
     * @method Grid\Column|Collection option1(string $label = null)
     * @method Grid\Column|Collection num1(string $label = null)
     * @method Grid\Column|Collection option2(string $label = null)
     * @method Grid\Column|Collection num2(string $label = null)
     * @method Grid\Column|Collection option3(string $label = null)
     * @method Grid\Column|Collection num3(string $label = null)
     * @method Grid\Column|Collection option4(string $label = null)
     * @method Grid\Column|Collection num4(string $label = null)
     * @method Grid\Column|Collection option5(string $label = null)
     * @method Grid\Column|Collection num5(string $label = null)
     * @method Grid\Column|Collection order_good_id(string $label = null)
     * @method Grid\Column|Collection product_id(string $label = null)
     * @method Grid\Column|Collection amount(string $label = null)
     * @method Grid\Column|Collection search_content(string $label = null)
     * @method Grid\Column|Collection mobile(string $label = null)
     * @method Grid\Column|Collection province(string $label = null)
     * @method Grid\Column|Collection city(string $label = null)
     * @method Grid\Column|Collection county(string $label = null)
     * @method Grid\Column|Collection adds(string $label = null)
     * @method Grid\Column|Collection is_check(string $label = null)
     * @method Grid\Column|Collection goods_pic(string $label = null)
     * @method Grid\Column|Collection goods_name(string $label = null)
     * @method Grid\Column|Collection goods_product(string $label = null)
     * @method Grid\Column|Collection vip_price(string $label = null)
     * @method Grid\Column|Collection price(string $label = null)
     * @method Grid\Column|Collection num(string $label = null)
     * @method Grid\Column|Collection bg_img(string $label = null)
     * @method Grid\Column|Collection is_highlight(string $label = null)
     * @method Grid\Column|Collection good_id(string $label = null)
     * @method Grid\Column|Collection tk_platform_id(string $label = null)
     * @method Grid\Column|Collection dtk_id(string $label = null)
     * @method Grid\Column|Collection tag(string $label = null)
     * @method Grid\Column|Collection paid_content(string $label = null)
     * @method Grid\Column|Collection views(string $label = null)
     * @method Grid\Column|Collection buys(string $label = null)
     * @method Grid\Column|Collection sku(string $label = null)
     * @method Grid\Column|Collection classify_id(string $label = null)
     * @method Grid\Column|Collection service_id(string $label = null)
     * @method Grid\Column|Collection is_inspiration(string $label = null)
     * @method Grid\Column|Collection param_value(string $label = null)
     * @method Grid\Column|Collection stock(string $label = null)
     * @method Grid\Column|Collection goods_amount(string $label = null)
     * @method Grid\Column|Collection discounts_amount(string $label = null)
     * @method Grid\Column|Collection order_amount(string $label = null)
     * @method Grid\Column|Collection payed(string $label = null)
     * @method Grid\Column|Collection serial_number(string $label = null)
     * @method Grid\Column|Collection pay_status(string $label = null)
     * @method Grid\Column|Collection cost_freight(string $label = null)
     * @method Grid\Column|Collection adds_name(string $label = null)
     * @method Grid\Column|Collection adds_mobile(string $label = null)
     * @method Grid\Column|Collection address(string $label = null)
     * @method Grid\Column|Collection express(string $label = null)
     * @method Grid\Column|Collection express_no(string $label = null)
     * @method Grid\Column|Collection has_virtual(string $label = null)
     * @method Grid\Column|Collection user_remark(string $label = null)
     * @method Grid\Column|Collection payment_time(string $label = null)
     * @method Grid\Column|Collection ship_at(string $label = null)
     * @method Grid\Column|Collection confirm_time(string $label = null)
     * @method Grid\Column|Collection product(string $label = null)
     * @method Grid\Column|Collection recharge(string $label = null)
     * @method Grid\Column|Collection quantity(string $label = null)
     * @method Grid\Column|Collection poster(string $label = null)
     * @method Grid\Column|Collection slideshow_type(string $label = null)
     * @method Grid\Column|Collection slideshow_state(string $label = null)
     * @method Grid\Column|Collection time(string $label = null)
     * @method Grid\Column|Collection inner_id(string $label = null)
     * @method Grid\Column|Collection external_id(string $label = null)
     * @method Grid\Column|Collection tag_id(string $label = null)
     * @method Grid\Column|Collection tags_name(string $label = null)
     * @method Grid\Column|Collection tag_introduce(string $label = null)
     * @method Grid\Column|Collection pc_background_maps(string $label = null)
     * @method Grid\Column|Collection tags_number(string $label = null)
     * @method Grid\Column|Collection tags_state(string $label = null)
     * @method Grid\Column|Collection condition_type_0(string $label = null)
     * @method Grid\Column|Collection condition_type_1(string $label = null)
     * @method Grid\Column|Collection condition_num(string $label = null)
     * @method Grid\Column|Collection reward_type(string $label = null)
     * @method Grid\Column|Collection reward_num(string $label = null)
     * @method Grid\Column|Collection user_background_maps(string $label = null)
     * @method Grid\Column|Collection user_introduce(string $label = null)
     * @method Grid\Column|Collection user_birthday(string $label = null)
     * @method Grid\Column|Collection user_mobile(string $label = null)
     * @method Grid\Column|Collection weixin_name(string $label = null)
     * @method Grid\Column|Collection weixin_openid(string $label = null)
     * @method Grid\Column|Collection weixin_unionid(string $label = null)
     * @method Grid\Column|Collection weixin_app_openid(string $label = null)
     * @method Grid\Column|Collection weixin_mp_openid(string $label = null)
     * @method Grid\Column|Collection weixin_web_openid(string $label = null)
     * @method Grid\Column|Collection weixin_shop_openid(string $label = null)
     * @method Grid\Column|Collection phone(string $label = null)
     * @method Grid\Column|Collection country(string $label = null)
     * @method Grid\Column|Collection authentication_id(string $label = null)
     * @method Grid\Column|Collection is_authentication(string $label = null)
     * @method Grid\Column|Collection is_official(string $label = null)
     * @method Grid\Column|Collection is_member(string $label = null)
     * @method Grid\Column|Collection is_robot(string $label = null)
     * @method Grid\Column|Collection gender(string $label = null)
     * @method Grid\Column|Collection user_state(string $label = null)
     * @method Grid\Column|Collection user_circle_state(string $label = null)
     * @method Grid\Column|Collection incre(string $label = null)
     * @method Grid\Column|Collection tip(string $label = null)
     * @method Grid\Column|Collection balance(string $label = null)
     * @method Grid\Column|Collection sum_price(string $label = null)
     * @method Grid\Column|Collection withdrawal_price(string $label = null)
     * @method Grid\Column|Collection bank_name(string $label = null)
     * @method Grid\Column|Collection bank_card(string $label = null)
     * @method Grid\Column|Collection object(string $label = null)
     * @method Grid\Column|Collection user_follow_id(string $label = null)
     * @method Grid\Column|Collection user_follow_state(string $label = null)
     * @method Grid\Column|Collection pay(string $label = null)
     * @method Grid\Column|Collection online(string $label = null)
     * @method Grid\Column|Collection report_type(string $label = null)
     * @method Grid\Column|Collection report_message(string $label = null)
     * @method Grid\Column|Collection report_imgs(string $label = null)
     * @method Grid\Column|Collection contact(string $label = null)
     * @method Grid\Column|Collection task_id(string $label = null)
     * @method Grid\Column|Collection vote_id(string $label = null)
     * @method Grid\Column|Collection vote_option(string $label = null)
     * @method Grid\Column|Collection refuse_tip(string $label = null)
     * @method Grid\Column|Collection account_at(string $label = null)
     * @method Grid\Column|Collection subject_id(string $label = null)
     */
    class Grid {}

    class MiniGrid extends Grid {}

    /**
     * @property Show\Field|Collection id
     * @property Show\Field|Collection type
     * @property Show\Field|Collection maximums
     * @property Show\Field|Collection executes
     * @property Show\Field|Collection execute_at
     * @property Show\Field|Collection end_at
     * @property Show\Field|Collection status
     * @property Show\Field|Collection remark
     * @property Show\Field|Collection cid
     * @property Show\Field|Collection created_at
     * @property Show\Field|Collection name
     * @property Show\Field|Collection version
     * @property Show\Field|Collection detail
     * @property Show\Field|Collection updated_at
     * @property Show\Field|Collection is_enabled
     * @property Show\Field|Collection parent_id
     * @property Show\Field|Collection order
     * @property Show\Field|Collection icon
     * @property Show\Field|Collection uri
     * @property Show\Field|Collection extension
     * @property Show\Field|Collection permission_id
     * @property Show\Field|Collection menu_id
     * @property Show\Field|Collection slug
     * @property Show\Field|Collection http_method
     * @property Show\Field|Collection http_path
     * @property Show\Field|Collection role_id
     * @property Show\Field|Collection user_id
     * @property Show\Field|Collection value
     * @property Show\Field|Collection username
     * @property Show\Field|Collection password
     * @property Show\Field|Collection avatar
     * @property Show\Field|Collection remember_token
     * @property Show\Field|Collection key
     * @property Show\Field|Collection expiration
     * @property Show\Field|Collection contents
     * @property Show\Field|Collection schedule
     * @property Show\Field|Collection sleep
     * @property Show\Field|Collection timeout
     * @property Show\Field|Collection begin_at
     * @property Show\Field|Collection weigh
     * @property Show\Field|Collection uuid
     * @property Show\Field|Collection connection
     * @property Show\Field|Collection queue
     * @property Show\Field|Collection payload
     * @property Show\Field|Collection exception
     * @property Show\Field|Collection failed_at
     * @property Show\Field|Collection attempts
     * @property Show\Field|Collection reserved_at
     * @property Show\Field|Collection available_at
     * @property Show\Field|Collection post_unique
     * @property Show\Field|Collection author_unique
     * @property Show\Field|Collection link
     * @property Show\Field|Collection author
     * @property Show\Field|Collection content
     * @property Show\Field|Collection imgs
     * @property Show\Field|Collection comments
     * @property Show\Field|Collection tags
     * @property Show\Field|Collection musics
     * @property Show\Field|Collection videos
     * @property Show\Field|Collection circle_id
     * @property Show\Field|Collection post_id
     * @property Show\Field|Collection deleted_at
     * @property Show\Field|Collection user_unique
     * @property Show\Field|Collection email
     * @property Show\Field|Collection token
     * @property Show\Field|Collection runoob_id
     * @property Show\Field|Collection runoob_title
     * @property Show\Field|Collection runoob_author
     * @property Show\Field|Collection submission_date
     * @property Show\Field|Collection test_v
     * @property Show\Field|Collection qinghang_test
     * @property Show\Field|Collection qinghang_test2
     * @property Show\Field|Collection introduce
     * @property Show\Field|Collection contact_information
     * @property Show\Field|Collection identity_picture
     * @property Show\Field|Collection is_examine
     * @property Show\Field|Collection overrule_content
     * @property Show\Field|Collection overrule_is_read
     * @property Show\Field|Collection authentication_state
     * @property Show\Field|Collection email_verified_at
     * @property Show\Field|Collection intro
     * @property Show\Field|Collection pic
     * @property Show\Field|Collection target_type
     * @property Show\Field|Collection target_id
     * @property Show\Field|Collection domain
     * @property Show\Field|Collection path
     * @property Show\Field|Collection store_type
     * @property Show\Field|Collection state
     * @property Show\Field|Collection object_id
     * @property Show\Field|Collection chat_content
     * @property Show\Field|Collection chat_image
     * @property Show\Field|Collection is_read
     * @property Show\Field|Collection chat_state
     * @property Show\Field|Collection circle_name
     * @property Show\Field|Collection sort
     * @property Show\Field|Collection circle_introduce
     * @property Show\Field|Collection head_portrait
     * @property Show\Field|Collection background_maps
     * @property Show\Field|Collection plate_id
     * @property Show\Field|Collection is_top_recommend
     * @property Show\Field|Collection is_hot
     * @property Show\Field|Collection circle_state
     * @property Show\Field|Collection meta_key
     * @property Show\Field|Collection meta_value
     * @property Show\Field|Collection posts_id
     * @property Show\Field|Collection posts_user_id
     * @property Show\Field|Collection user_name
     * @property Show\Field|Collection user_avatar
     * @property Show\Field|Collection comment_agent_id
     * @property Show\Field|Collection comment_agent_name
     * @property Show\Field|Collection comment_agent_avatar
     * @property Show\Field|Collection comment_content
     * @property Show\Field|Collection comment_img_url
     * @property Show\Field|Collection comment_id
     * @property Show\Field|Collection is_sticky
     * @property Show\Field|Collection comment_state
     * @property Show\Field|Collection comment_user_id
     * @property Show\Field|Collection exceptional_price
     * @property Show\Field|Collection feedback_type
     * @property Show\Field|Collection feedback_content
     * @property Show\Field|Collection feedback_reply
     * @property Show\Field|Collection is_solve
     * @property Show\Field|Collection feedback_imgs
     * @property Show\Field|Collection feedback_contact
     * @property Show\Field|Collection feedback_state
     * @property Show\Field|Collection size
     * @property Show\Field|Collection url
     * @property Show\Field|Collection forward_state
     * @property Show\Field|Collection unicode16
     * @property Show\Field|Collection img
     * @property Show\Field|Collection desc
     * @property Show\Field|Collection is_admin
     * @property Show\Field|Collection depth
     * @property Show\Field|Collection app_id
     * @property Show\Field|Collection scene
     * @property Show\Field|Collection code
     * @property Show\Field|Collection np_id
     * @property Show\Field|Collection superior_id
     * @property Show\Field|Collection order_id
     * @property Show\Field|Collection notice_type
     * @property Show\Field|Collection order_type
     * @property Show\Field|Collection order_information
     * @property Show\Field|Collection order_price
     * @property Show\Field|Collection order_pay_price
     * @property Show\Field|Collection order_number
     * @property Show\Field|Collection order_serial_number
     * @property Show\Field|Collection parame
     * @property Show\Field|Collection order_state
     * @property Show\Field|Collection right
     * @property Show\Field|Collection config
     * @property Show\Field|Collection plate_name
     * @property Show\Field|Collection plate_introduce
     * @property Show\Field|Collection plate_state
     * @property Show\Field|Collection posts_content
     * @property Show\Field|Collection address_id
     * @property Show\Field|Collection tags_id
     * @property Show\Field|Collection is_information
     * @property Show\Field|Collection posts_state
     * @property Show\Field|Collection is_reward
     * @property Show\Field|Collection is_blur
     * @property Show\Field|Collection weight
     * @property Show\Field|Collection last_reply_at
     * @property Show\Field|Collection address_name
     * @property Show\Field|Collection address_detailed
     * @property Show\Field|Collection latitude
     * @property Show\Field|Collection longitude
     * @property Show\Field|Collection address_state
     * @property Show\Field|Collection goods_id
     * @property Show\Field|Collection img_url
     * @property Show\Field|Collection posts_img_state
     * @property Show\Field|Collection video_url
     * @property Show\Field|Collection video_thumb_url
     * @property Show\Field|Collection posts_video_state
     * @property Show\Field|Collection video_width
     * @property Show\Field|Collection video_height
     * @property Show\Field|Collection option1
     * @property Show\Field|Collection num1
     * @property Show\Field|Collection option2
     * @property Show\Field|Collection num2
     * @property Show\Field|Collection option3
     * @property Show\Field|Collection num3
     * @property Show\Field|Collection option4
     * @property Show\Field|Collection num4
     * @property Show\Field|Collection option5
     * @property Show\Field|Collection num5
     * @property Show\Field|Collection order_good_id
     * @property Show\Field|Collection product_id
     * @property Show\Field|Collection amount
     * @property Show\Field|Collection search_content
     * @property Show\Field|Collection mobile
     * @property Show\Field|Collection province
     * @property Show\Field|Collection city
     * @property Show\Field|Collection county
     * @property Show\Field|Collection adds
     * @property Show\Field|Collection is_check
     * @property Show\Field|Collection goods_pic
     * @property Show\Field|Collection goods_name
     * @property Show\Field|Collection goods_product
     * @property Show\Field|Collection vip_price
     * @property Show\Field|Collection price
     * @property Show\Field|Collection num
     * @property Show\Field|Collection bg_img
     * @property Show\Field|Collection is_highlight
     * @property Show\Field|Collection good_id
     * @property Show\Field|Collection tk_platform_id
     * @property Show\Field|Collection dtk_id
     * @property Show\Field|Collection tag
     * @property Show\Field|Collection paid_content
     * @property Show\Field|Collection views
     * @property Show\Field|Collection buys
     * @property Show\Field|Collection sku
     * @property Show\Field|Collection classify_id
     * @property Show\Field|Collection service_id
     * @property Show\Field|Collection is_inspiration
     * @property Show\Field|Collection param_value
     * @property Show\Field|Collection stock
     * @property Show\Field|Collection goods_amount
     * @property Show\Field|Collection discounts_amount
     * @property Show\Field|Collection order_amount
     * @property Show\Field|Collection payed
     * @property Show\Field|Collection serial_number
     * @property Show\Field|Collection pay_status
     * @property Show\Field|Collection cost_freight
     * @property Show\Field|Collection adds_name
     * @property Show\Field|Collection adds_mobile
     * @property Show\Field|Collection address
     * @property Show\Field|Collection express
     * @property Show\Field|Collection express_no
     * @property Show\Field|Collection has_virtual
     * @property Show\Field|Collection user_remark
     * @property Show\Field|Collection payment_time
     * @property Show\Field|Collection ship_at
     * @property Show\Field|Collection confirm_time
     * @property Show\Field|Collection product
     * @property Show\Field|Collection recharge
     * @property Show\Field|Collection quantity
     * @property Show\Field|Collection poster
     * @property Show\Field|Collection slideshow_type
     * @property Show\Field|Collection slideshow_state
     * @property Show\Field|Collection time
     * @property Show\Field|Collection inner_id
     * @property Show\Field|Collection external_id
     * @property Show\Field|Collection tag_id
     * @property Show\Field|Collection tags_name
     * @property Show\Field|Collection tag_introduce
     * @property Show\Field|Collection pc_background_maps
     * @property Show\Field|Collection tags_number
     * @property Show\Field|Collection tags_state
     * @property Show\Field|Collection condition_type_0
     * @property Show\Field|Collection condition_type_1
     * @property Show\Field|Collection condition_num
     * @property Show\Field|Collection reward_type
     * @property Show\Field|Collection reward_num
     * @property Show\Field|Collection user_background_maps
     * @property Show\Field|Collection user_introduce
     * @property Show\Field|Collection user_birthday
     * @property Show\Field|Collection user_mobile
     * @property Show\Field|Collection weixin_name
     * @property Show\Field|Collection weixin_openid
     * @property Show\Field|Collection weixin_unionid
     * @property Show\Field|Collection weixin_app_openid
     * @property Show\Field|Collection weixin_mp_openid
     * @property Show\Field|Collection weixin_web_openid
     * @property Show\Field|Collection weixin_shop_openid
     * @property Show\Field|Collection phone
     * @property Show\Field|Collection country
     * @property Show\Field|Collection authentication_id
     * @property Show\Field|Collection is_authentication
     * @property Show\Field|Collection is_official
     * @property Show\Field|Collection is_member
     * @property Show\Field|Collection is_robot
     * @property Show\Field|Collection gender
     * @property Show\Field|Collection user_state
     * @property Show\Field|Collection user_circle_state
     * @property Show\Field|Collection incre
     * @property Show\Field|Collection tip
     * @property Show\Field|Collection balance
     * @property Show\Field|Collection sum_price
     * @property Show\Field|Collection withdrawal_price
     * @property Show\Field|Collection bank_name
     * @property Show\Field|Collection bank_card
     * @property Show\Field|Collection object
     * @property Show\Field|Collection user_follow_id
     * @property Show\Field|Collection user_follow_state
     * @property Show\Field|Collection pay
     * @property Show\Field|Collection online
     * @property Show\Field|Collection report_type
     * @property Show\Field|Collection report_message
     * @property Show\Field|Collection report_imgs
     * @property Show\Field|Collection contact
     * @property Show\Field|Collection task_id
     * @property Show\Field|Collection vote_id
     * @property Show\Field|Collection vote_option
     * @property Show\Field|Collection refuse_tip
     * @property Show\Field|Collection account_at
     * @property Show\Field|Collection subject_id
     *
     * @method Show\Field|Collection id(string $label = null)
     * @method Show\Field|Collection type(string $label = null)
     * @method Show\Field|Collection maximums(string $label = null)
     * @method Show\Field|Collection executes(string $label = null)
     * @method Show\Field|Collection execute_at(string $label = null)
     * @method Show\Field|Collection end_at(string $label = null)
     * @method Show\Field|Collection status(string $label = null)
     * @method Show\Field|Collection remark(string $label = null)
     * @method Show\Field|Collection cid(string $label = null)
     * @method Show\Field|Collection created_at(string $label = null)
     * @method Show\Field|Collection name(string $label = null)
     * @method Show\Field|Collection version(string $label = null)
     * @method Show\Field|Collection detail(string $label = null)
     * @method Show\Field|Collection updated_at(string $label = null)
     * @method Show\Field|Collection is_enabled(string $label = null)
     * @method Show\Field|Collection parent_id(string $label = null)
     * @method Show\Field|Collection order(string $label = null)
     * @method Show\Field|Collection icon(string $label = null)
     * @method Show\Field|Collection uri(string $label = null)
     * @method Show\Field|Collection extension(string $label = null)
     * @method Show\Field|Collection permission_id(string $label = null)
     * @method Show\Field|Collection menu_id(string $label = null)
     * @method Show\Field|Collection slug(string $label = null)
     * @method Show\Field|Collection http_method(string $label = null)
     * @method Show\Field|Collection http_path(string $label = null)
     * @method Show\Field|Collection role_id(string $label = null)
     * @method Show\Field|Collection user_id(string $label = null)
     * @method Show\Field|Collection value(string $label = null)
     * @method Show\Field|Collection username(string $label = null)
     * @method Show\Field|Collection password(string $label = null)
     * @method Show\Field|Collection avatar(string $label = null)
     * @method Show\Field|Collection remember_token(string $label = null)
     * @method Show\Field|Collection key(string $label = null)
     * @method Show\Field|Collection expiration(string $label = null)
     * @method Show\Field|Collection contents(string $label = null)
     * @method Show\Field|Collection schedule(string $label = null)
     * @method Show\Field|Collection sleep(string $label = null)
     * @method Show\Field|Collection timeout(string $label = null)
     * @method Show\Field|Collection begin_at(string $label = null)
     * @method Show\Field|Collection weigh(string $label = null)
     * @method Show\Field|Collection uuid(string $label = null)
     * @method Show\Field|Collection connection(string $label = null)
     * @method Show\Field|Collection queue(string $label = null)
     * @method Show\Field|Collection payload(string $label = null)
     * @method Show\Field|Collection exception(string $label = null)
     * @method Show\Field|Collection failed_at(string $label = null)
     * @method Show\Field|Collection attempts(string $label = null)
     * @method Show\Field|Collection reserved_at(string $label = null)
     * @method Show\Field|Collection available_at(string $label = null)
     * @method Show\Field|Collection post_unique(string $label = null)
     * @method Show\Field|Collection author_unique(string $label = null)
     * @method Show\Field|Collection link(string $label = null)
     * @method Show\Field|Collection author(string $label = null)
     * @method Show\Field|Collection content(string $label = null)
     * @method Show\Field|Collection imgs(string $label = null)
     * @method Show\Field|Collection comments(string $label = null)
     * @method Show\Field|Collection tags(string $label = null)
     * @method Show\Field|Collection musics(string $label = null)
     * @method Show\Field|Collection videos(string $label = null)
     * @method Show\Field|Collection circle_id(string $label = null)
     * @method Show\Field|Collection post_id(string $label = null)
     * @method Show\Field|Collection deleted_at(string $label = null)
     * @method Show\Field|Collection user_unique(string $label = null)
     * @method Show\Field|Collection email(string $label = null)
     * @method Show\Field|Collection token(string $label = null)
     * @method Show\Field|Collection runoob_id(string $label = null)
     * @method Show\Field|Collection runoob_title(string $label = null)
     * @method Show\Field|Collection runoob_author(string $label = null)
     * @method Show\Field|Collection submission_date(string $label = null)
     * @method Show\Field|Collection test_v(string $label = null)
     * @method Show\Field|Collection qinghang_test(string $label = null)
     * @method Show\Field|Collection qinghang_test2(string $label = null)
     * @method Show\Field|Collection introduce(string $label = null)
     * @method Show\Field|Collection contact_information(string $label = null)
     * @method Show\Field|Collection identity_picture(string $label = null)
     * @method Show\Field|Collection is_examine(string $label = null)
     * @method Show\Field|Collection overrule_content(string $label = null)
     * @method Show\Field|Collection overrule_is_read(string $label = null)
     * @method Show\Field|Collection authentication_state(string $label = null)
     * @method Show\Field|Collection email_verified_at(string $label = null)
     * @method Show\Field|Collection intro(string $label = null)
     * @method Show\Field|Collection pic(string $label = null)
     * @method Show\Field|Collection target_type(string $label = null)
     * @method Show\Field|Collection target_id(string $label = null)
     * @method Show\Field|Collection domain(string $label = null)
     * @method Show\Field|Collection path(string $label = null)
     * @method Show\Field|Collection store_type(string $label = null)
     * @method Show\Field|Collection state(string $label = null)
     * @method Show\Field|Collection object_id(string $label = null)
     * @method Show\Field|Collection chat_content(string $label = null)
     * @method Show\Field|Collection chat_image(string $label = null)
     * @method Show\Field|Collection is_read(string $label = null)
     * @method Show\Field|Collection chat_state(string $label = null)
     * @method Show\Field|Collection circle_name(string $label = null)
     * @method Show\Field|Collection sort(string $label = null)
     * @method Show\Field|Collection circle_introduce(string $label = null)
     * @method Show\Field|Collection head_portrait(string $label = null)
     * @method Show\Field|Collection background_maps(string $label = null)
     * @method Show\Field|Collection plate_id(string $label = null)
     * @method Show\Field|Collection is_top_recommend(string $label = null)
     * @method Show\Field|Collection is_hot(string $label = null)
     * @method Show\Field|Collection circle_state(string $label = null)
     * @method Show\Field|Collection meta_key(string $label = null)
     * @method Show\Field|Collection meta_value(string $label = null)
     * @method Show\Field|Collection posts_id(string $label = null)
     * @method Show\Field|Collection posts_user_id(string $label = null)
     * @method Show\Field|Collection user_name(string $label = null)
     * @method Show\Field|Collection user_avatar(string $label = null)
     * @method Show\Field|Collection comment_agent_id(string $label = null)
     * @method Show\Field|Collection comment_agent_name(string $label = null)
     * @method Show\Field|Collection comment_agent_avatar(string $label = null)
     * @method Show\Field|Collection comment_content(string $label = null)
     * @method Show\Field|Collection comment_img_url(string $label = null)
     * @method Show\Field|Collection comment_id(string $label = null)
     * @method Show\Field|Collection is_sticky(string $label = null)
     * @method Show\Field|Collection comment_state(string $label = null)
     * @method Show\Field|Collection comment_user_id(string $label = null)
     * @method Show\Field|Collection exceptional_price(string $label = null)
     * @method Show\Field|Collection feedback_type(string $label = null)
     * @method Show\Field|Collection feedback_content(string $label = null)
     * @method Show\Field|Collection feedback_reply(string $label = null)
     * @method Show\Field|Collection is_solve(string $label = null)
     * @method Show\Field|Collection feedback_imgs(string $label = null)
     * @method Show\Field|Collection feedback_contact(string $label = null)
     * @method Show\Field|Collection feedback_state(string $label = null)
     * @method Show\Field|Collection size(string $label = null)
     * @method Show\Field|Collection url(string $label = null)
     * @method Show\Field|Collection forward_state(string $label = null)
     * @method Show\Field|Collection unicode16(string $label = null)
     * @method Show\Field|Collection img(string $label = null)
     * @method Show\Field|Collection desc(string $label = null)
     * @method Show\Field|Collection is_admin(string $label = null)
     * @method Show\Field|Collection depth(string $label = null)
     * @method Show\Field|Collection app_id(string $label = null)
     * @method Show\Field|Collection scene(string $label = null)
     * @method Show\Field|Collection code(string $label = null)
     * @method Show\Field|Collection np_id(string $label = null)
     * @method Show\Field|Collection superior_id(string $label = null)
     * @method Show\Field|Collection order_id(string $label = null)
     * @method Show\Field|Collection notice_type(string $label = null)
     * @method Show\Field|Collection order_type(string $label = null)
     * @method Show\Field|Collection order_information(string $label = null)
     * @method Show\Field|Collection order_price(string $label = null)
     * @method Show\Field|Collection order_pay_price(string $label = null)
     * @method Show\Field|Collection order_number(string $label = null)
     * @method Show\Field|Collection order_serial_number(string $label = null)
     * @method Show\Field|Collection parame(string $label = null)
     * @method Show\Field|Collection order_state(string $label = null)
     * @method Show\Field|Collection right(string $label = null)
     * @method Show\Field|Collection config(string $label = null)
     * @method Show\Field|Collection plate_name(string $label = null)
     * @method Show\Field|Collection plate_introduce(string $label = null)
     * @method Show\Field|Collection plate_state(string $label = null)
     * @method Show\Field|Collection posts_content(string $label = null)
     * @method Show\Field|Collection address_id(string $label = null)
     * @method Show\Field|Collection tags_id(string $label = null)
     * @method Show\Field|Collection is_information(string $label = null)
     * @method Show\Field|Collection posts_state(string $label = null)
     * @method Show\Field|Collection is_reward(string $label = null)
     * @method Show\Field|Collection is_blur(string $label = null)
     * @method Show\Field|Collection weight(string $label = null)
     * @method Show\Field|Collection last_reply_at(string $label = null)
     * @method Show\Field|Collection address_name(string $label = null)
     * @method Show\Field|Collection address_detailed(string $label = null)
     * @method Show\Field|Collection latitude(string $label = null)
     * @method Show\Field|Collection longitude(string $label = null)
     * @method Show\Field|Collection address_state(string $label = null)
     * @method Show\Field|Collection goods_id(string $label = null)
     * @method Show\Field|Collection img_url(string $label = null)
     * @method Show\Field|Collection posts_img_state(string $label = null)
     * @method Show\Field|Collection video_url(string $label = null)
     * @method Show\Field|Collection video_thumb_url(string $label = null)
     * @method Show\Field|Collection posts_video_state(string $label = null)
     * @method Show\Field|Collection video_width(string $label = null)
     * @method Show\Field|Collection video_height(string $label = null)
     * @method Show\Field|Collection option1(string $label = null)
     * @method Show\Field|Collection num1(string $label = null)
     * @method Show\Field|Collection option2(string $label = null)
     * @method Show\Field|Collection num2(string $label = null)
     * @method Show\Field|Collection option3(string $label = null)
     * @method Show\Field|Collection num3(string $label = null)
     * @method Show\Field|Collection option4(string $label = null)
     * @method Show\Field|Collection num4(string $label = null)
     * @method Show\Field|Collection option5(string $label = null)
     * @method Show\Field|Collection num5(string $label = null)
     * @method Show\Field|Collection order_good_id(string $label = null)
     * @method Show\Field|Collection product_id(string $label = null)
     * @method Show\Field|Collection amount(string $label = null)
     * @method Show\Field|Collection search_content(string $label = null)
     * @method Show\Field|Collection mobile(string $label = null)
     * @method Show\Field|Collection province(string $label = null)
     * @method Show\Field|Collection city(string $label = null)
     * @method Show\Field|Collection county(string $label = null)
     * @method Show\Field|Collection adds(string $label = null)
     * @method Show\Field|Collection is_check(string $label = null)
     * @method Show\Field|Collection goods_pic(string $label = null)
     * @method Show\Field|Collection goods_name(string $label = null)
     * @method Show\Field|Collection goods_product(string $label = null)
     * @method Show\Field|Collection vip_price(string $label = null)
     * @method Show\Field|Collection price(string $label = null)
     * @method Show\Field|Collection num(string $label = null)
     * @method Show\Field|Collection bg_img(string $label = null)
     * @method Show\Field|Collection is_highlight(string $label = null)
     * @method Show\Field|Collection good_id(string $label = null)
     * @method Show\Field|Collection tk_platform_id(string $label = null)
     * @method Show\Field|Collection dtk_id(string $label = null)
     * @method Show\Field|Collection tag(string $label = null)
     * @method Show\Field|Collection paid_content(string $label = null)
     * @method Show\Field|Collection views(string $label = null)
     * @method Show\Field|Collection buys(string $label = null)
     * @method Show\Field|Collection sku(string $label = null)
     * @method Show\Field|Collection classify_id(string $label = null)
     * @method Show\Field|Collection service_id(string $label = null)
     * @method Show\Field|Collection is_inspiration(string $label = null)
     * @method Show\Field|Collection param_value(string $label = null)
     * @method Show\Field|Collection stock(string $label = null)
     * @method Show\Field|Collection goods_amount(string $label = null)
     * @method Show\Field|Collection discounts_amount(string $label = null)
     * @method Show\Field|Collection order_amount(string $label = null)
     * @method Show\Field|Collection payed(string $label = null)
     * @method Show\Field|Collection serial_number(string $label = null)
     * @method Show\Field|Collection pay_status(string $label = null)
     * @method Show\Field|Collection cost_freight(string $label = null)
     * @method Show\Field|Collection adds_name(string $label = null)
     * @method Show\Field|Collection adds_mobile(string $label = null)
     * @method Show\Field|Collection address(string $label = null)
     * @method Show\Field|Collection express(string $label = null)
     * @method Show\Field|Collection express_no(string $label = null)
     * @method Show\Field|Collection has_virtual(string $label = null)
     * @method Show\Field|Collection user_remark(string $label = null)
     * @method Show\Field|Collection payment_time(string $label = null)
     * @method Show\Field|Collection ship_at(string $label = null)
     * @method Show\Field|Collection confirm_time(string $label = null)
     * @method Show\Field|Collection product(string $label = null)
     * @method Show\Field|Collection recharge(string $label = null)
     * @method Show\Field|Collection quantity(string $label = null)
     * @method Show\Field|Collection poster(string $label = null)
     * @method Show\Field|Collection slideshow_type(string $label = null)
     * @method Show\Field|Collection slideshow_state(string $label = null)
     * @method Show\Field|Collection time(string $label = null)
     * @method Show\Field|Collection inner_id(string $label = null)
     * @method Show\Field|Collection external_id(string $label = null)
     * @method Show\Field|Collection tag_id(string $label = null)
     * @method Show\Field|Collection tags_name(string $label = null)
     * @method Show\Field|Collection tag_introduce(string $label = null)
     * @method Show\Field|Collection pc_background_maps(string $label = null)
     * @method Show\Field|Collection tags_number(string $label = null)
     * @method Show\Field|Collection tags_state(string $label = null)
     * @method Show\Field|Collection condition_type_0(string $label = null)
     * @method Show\Field|Collection condition_type_1(string $label = null)
     * @method Show\Field|Collection condition_num(string $label = null)
     * @method Show\Field|Collection reward_type(string $label = null)
     * @method Show\Field|Collection reward_num(string $label = null)
     * @method Show\Field|Collection user_background_maps(string $label = null)
     * @method Show\Field|Collection user_introduce(string $label = null)
     * @method Show\Field|Collection user_birthday(string $label = null)
     * @method Show\Field|Collection user_mobile(string $label = null)
     * @method Show\Field|Collection weixin_name(string $label = null)
     * @method Show\Field|Collection weixin_openid(string $label = null)
     * @method Show\Field|Collection weixin_unionid(string $label = null)
     * @method Show\Field|Collection weixin_app_openid(string $label = null)
     * @method Show\Field|Collection weixin_mp_openid(string $label = null)
     * @method Show\Field|Collection weixin_web_openid(string $label = null)
     * @method Show\Field|Collection weixin_shop_openid(string $label = null)
     * @method Show\Field|Collection phone(string $label = null)
     * @method Show\Field|Collection country(string $label = null)
     * @method Show\Field|Collection authentication_id(string $label = null)
     * @method Show\Field|Collection is_authentication(string $label = null)
     * @method Show\Field|Collection is_official(string $label = null)
     * @method Show\Field|Collection is_member(string $label = null)
     * @method Show\Field|Collection is_robot(string $label = null)
     * @method Show\Field|Collection gender(string $label = null)
     * @method Show\Field|Collection user_state(string $label = null)
     * @method Show\Field|Collection user_circle_state(string $label = null)
     * @method Show\Field|Collection incre(string $label = null)
     * @method Show\Field|Collection tip(string $label = null)
     * @method Show\Field|Collection balance(string $label = null)
     * @method Show\Field|Collection sum_price(string $label = null)
     * @method Show\Field|Collection withdrawal_price(string $label = null)
     * @method Show\Field|Collection bank_name(string $label = null)
     * @method Show\Field|Collection bank_card(string $label = null)
     * @method Show\Field|Collection object(string $label = null)
     * @method Show\Field|Collection user_follow_id(string $label = null)
     * @method Show\Field|Collection user_follow_state(string $label = null)
     * @method Show\Field|Collection pay(string $label = null)
     * @method Show\Field|Collection online(string $label = null)
     * @method Show\Field|Collection report_type(string $label = null)
     * @method Show\Field|Collection report_message(string $label = null)
     * @method Show\Field|Collection report_imgs(string $label = null)
     * @method Show\Field|Collection contact(string $label = null)
     * @method Show\Field|Collection task_id(string $label = null)
     * @method Show\Field|Collection vote_id(string $label = null)
     * @method Show\Field|Collection vote_option(string $label = null)
     * @method Show\Field|Collection refuse_tip(string $label = null)
     * @method Show\Field|Collection account_at(string $label = null)
     * @method Show\Field|Collection subject_id(string $label = null)
     */
    class Show {}

    /**
     * @method \Dcat\Admin\Extension\EasySku\SkuField sku(...$params)
     */
    class Form {}

}

namespace Dcat\Admin\Grid {
    /**
     * @method $this code(...$params)
     */
    class Column {}

    /**
     
     */
    class Filter {}
}

namespace Dcat\Admin\Show {
    /**
     
     */
    class Field {}
}
