/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : document

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-18 21:33:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for check_info
-- ----------------------------
DROP TABLE IF EXISTS `check_info`;
CREATE TABLE `check_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `all_legs` varchar(255) DEFAULT '正常' COMMENT '四肢',
  `arthrosis` varchar(255) DEFAULT '正常' COMMENT '关节',
  `assay_check` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `blood_pressure` int(11) DEFAULT NULL,
  `check_result` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `chest_check` varchar(255) DEFAULT NULL,
  `college` varchar(255) NOT NULL,
  `color_or_code` varchar(255) DEFAULT '无' COMMENT '彩色图案及编码',
  `correct_left_view` double DEFAULT NULL,
  `correct_right_view` double DEFAULT NULL,
  `culture_level` varchar(255) DEFAULT NULL,
  `ear_sick` varchar(255) DEFAULT '无' COMMENT '耳疾',
  `foot` varchar(255) DEFAULT '无' COMMENT '平足',
  `glandula_thyroidea` varchar(255) DEFAULT '无' COMMENT '甲状腺',
  `grade` varchar(255) NOT NULL,
  `growth` varchar(255) DEFAULT '正常' COMMENT '发育营养',
  `heart` varchar(255) DEFAULT '正常' COMMENT '心脏及血管',
  `height` double DEFAULT NULL,
  `history_check` varchar(255) DEFAULT '无' COMMENT '既往医史',
  `hypodontia` varchar(255) DEFAULT '无' COMMENT '缺齿',
  `left_audition` double DEFAULT NULL,
  `left_view` double DEFAULT NULL,
  `liver` varchar(255) DEFAULT '正常' COMMENT '肝',
  `lung` varchar(255) DEFAULT '正常' COMMENT '肺及呼吸道',
  `lymph` varchar(255) DEFAULT '无' COMMENT '淋巴',
  `major` varchar(255) NOT NULL,
  `mind` varchar(255) DEFAULT '正常' COMMENT '神经及精神',
  `name` varchar(255) NOT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `native_place` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `other_check` varchar(255) DEFAULT NULL,
  `other_eyes_sick` varchar(255) DEFAULT '无' COMMENT '其他眼疾',
  `other_internal_sick` varchar(255) DEFAULT '无' COMMENT '其他内科疾病',
  `other_sense_sick` varchar(255) DEFAULT '无' COMMENT '其他五官疾病',
  `other_surgery_sick` varchar(255) DEFAULT '无' COMMENT '其他外科疾病',
  `paranasal_sinus` varchar(255) DEFAULT '无' COMMENT '鼻窦',
  `photo` varchar(255) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `pulse` int(11) DEFAULT NULL,
  `real_age` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `right_audition` double DEFAULT NULL,
  `right_view` double DEFAULT NULL,
  `sealer` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `sign_for_assay` varchar(255) DEFAULT NULL,
  `sign_for_chest` varchar(255) DEFAULT NULL,
  `sign_for_ear` varchar(255) DEFAULT NULL,
  `sign_for_eyes` varchar(255) DEFAULT NULL,
  `sign_for_internal` varchar(255) DEFAULT NULL,
  `sign_for_mouth` varchar(255) DEFAULT NULL,
  `sign_for_result` varchar(255) DEFAULT NULL,
  `sign_for_surgery` varchar(255) DEFAULT NULL,
  `single_color_judge` varchar(255) DEFAULT '无' COMMENT '单色识别',
  `skin` varchar(255) DEFAULT '正常' COMMENT '皮肤',
  `smell` varchar(255) DEFAULT '正常' COMMENT '嗅觉',
  `spine_backbone` varchar(255) DEFAULT '正常' COMMENT '脊柱',
  `spleen` varchar(255) DEFAULT '正常' COMMENT '脾',
  `stammer` varchar(255) DEFAULT '无' COMMENT '口吃',
  `stu_no` varchar(255) NOT NULL,
  `suggest_for_check` varchar(255) DEFAULT NULL,
  `throat` varchar(255) DEFAULT '正常' COMMENT '咽喉',
  `tooth_place` varchar(255) DEFAULT '正常' COMMENT '齿槽',
  `tooth_sick` varchar(255) DEFAULT '无' COMMENT '龋齿',
  `user_id` int(11) NOT NULL,
  `waistline` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `work_place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of check_info
-- ----------------------------
INSERT INTO `check_info` VALUES ('1', '2019-04-18 18:42:30', '0000-00-00 00:00:00', '正常', '正常', null, null, null, null, null, null, '信息科学与工程学院', '无', null, null, null, '无', '无', '无', '一班', '正常', '正常', null, '无', '无', null, null, '正常', '正常', '无', '物联网工程', '正常', '彭于晏', null, null, null, null, '无', '无', '无', '无', '无', null, null, null, null, null, null, null, null, '男', null, null, null, null, null, null, null, null, '无', '正常', '正常', '正常', '正常', '无', '631507030103', null, '正常', '正常', '无', '1', null, null, null);

-- ----------------------------
-- Table structure for health_document
-- ----------------------------
DROP TABLE IF EXISTS `health_document`;
CREATE TABLE `health_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(255) DEFAULT NULL,
  `book` varchar(255) DEFAULT NULL,
  `content` longtext,
  `description` text,
  `is_published` int(11) DEFAULT NULL,
  `publish_data` datetime DEFAULT NULL,
  `visit_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of health_document
-- ----------------------------
INSERT INTO `health_document` VALUES ('1', '2019-04-18 18:06:29', '2019-04-18 18:09:17', '梦幻小小丫 ', '	 好闺蜜，一定要幸福', '<p>        <strong>总以为</strong><a href=\"http://www.duwenzhang.com/huati/shijian/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\"><strong>时间</strong></a><strong>很长，我们有的是时间玩乐。总以为我们还是小</strong><a href=\"http://www.duwenzhang.com/huati/haizi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\"><strong>孩子</strong></a><strong>，一天到晚还会形影不离。总以为我们是闺蜜，说不完的话题有的是时间聊。但是我们却忘记了一件重要的事，我们已长大，我们也会分离。</strong></p><p>当我们还处在懵懂无知的状态时，事态炎凉逼迫着我们走向了<a href=\"http://www.duwenzhang.com/huati/chengshu/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">成熟</a>的轨道。只是太匆匆，我们还没来得及对过去，对<a href=\"http://www.duwenzhang.com/huati/qingchun/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">青春</a>，对自己说声再见，就向憧憬的明天招了手。</p><p>小时候，我们是伙伴，天天腻在一起有说有笑，做着<a href=\"http://www.duwenzhang.com/huati/tongnian/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">童年</a>最<a href=\"http://www.duwenzhang.com/huati/meihao/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">美好</a>的梦。那时候，还不知道闺蜜的真正意义，只是强烈的<a href=\"http://www.duwenzhang.com/huati/ganjue/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">感觉</a>身边有你真好。</p><p>一起上学，放学。一起游玩，做游戏。一起摸爬滚打。形影不离地牵着彼此的手走过青春的足迹。虽然<a href=\"http://www.duwenzhang.com/wenzhang/xiaoyuanwenzhang/zhongxuexiaoyuan/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">中学</a>时光过去了十载之久，但是我们上学的情景仿佛就发生在昨天。</p><p>学校离家远，我们唯一的交通工具就是老式的脚踏车。那时候，对于我们而言，每天能骑着脚踏车去学校就是一件很<a href=\"http://www.duwenzhang.com/huati/xingfu/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">幸福</a>的事，毕竟在当时条件有限。常常宅在家，自我感觉都发霉了，唯有出去透透气。骑着电动车经过去往学校的道路，那些过往如碎片立即拼凑到了一起呈现于我的脑海。我和闺蜜的背影瞬间感觉如此清晰：我骑着简便的脚踏车带着闺蜜争分夺秒飞奔学校，<a href=\"http://www.duwenzhang.com/huati/xihuan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">喜欢</a>那种“快马飞驰”的快感，一心只想着按时到校；喜欢那种“悠闲自乐”的释怀，途中与闺蜜肆无忌惮地畅谈；喜欢那种“沿途风景”的欣赏，道路两旁的田园风光给予我愉悦的<a href=\"http://www.duwenzhang.com/wenzhang/xinqingriji/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">心情</a>。不管是刮风下雨，还是下雪天，都无法阻挡我们前进的步伐。飞奔学校的路上，我载她一会儿，她载我一会儿，边飞边聊天，忙得不亦乐乎，不知不觉之中就到了学校。这段贮藏<a href=\"http://www.duwenzhang.com/huati/xinling/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">心灵</a>深处最<a href=\"http://www.duwenzhang.com/huati/kuaile/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">快乐</a>的时光其实就是在最<a href=\"http://www.duwenzhang.com/huati/pingdan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">平淡</a>的日子里骑着简便的脚踏车带着闺蜜像疯子似的豪放不羁。除了周日外，这是我们每天必走的行程，也是我们朝夕相处最美好的时光。</p><p>后来我们长大了。每一次的心灵触动，每一次的<a href=\"http://www.duwenzhang.com/huati/zhenqing/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">真情</a>流露，每一次的情绪宣泄，都令彼此心心相系。但凡一个表情，一句话语便能听出彼此的心事。这种超乎伙伴的情谊渐渐升华成闺蜜。我们住进了一个叫做<a href=\"http://www.duwenzhang.com/huati/youyi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">友谊</a>的小船里，向着壮丽的岸边靠近。</p><p>我们不再是小孩子了，经过几年的闯荡，各自都有了自己的见解。长大的<a href=\"http://www.duwenzhang.com/huati/fannao/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">烦恼</a>犹如乱麻困扰着彼此，不管是家事还是私事，都会有那么一段失落的阶段，然而如今的我们就处于这种棱角未磨平又不知所措的阶段。长大的蜕变总要在经历过什么之后才会有所转变，面对种种困惑，本身<a href=\"http://www.duwenzhang.com/huati/mimang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">迷茫</a>的我望着未来更加迷茫，满眼惆怅地看不到前方。每当我们相对攀谈，她却总能有所觉察，然后将她多年来的阅历一一向我诉说。那些生动的叙述如同条条法规时刻警醒着我，让无知的我受益匪浅，收集着她积累下来的经验，汲取着其中的精髓，让自己慢慢地<a href=\"http://www.duwenzhang.com/wenzhang/shenghuosuibi/chengzhang/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">成长</a>。其实她那双炯炯有神的眼睛里偶尔也会带些<a href=\"http://www.duwenzhang.com/huati/youshang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">忧伤</a>，而我则会成为她第一个倾诉对象，静静地聆听她的心声，不打扰，不多言，默默地守护在她身边，只要她需要一个空间倾诉，我随时都在。虽然有些懵懂，但却像是她提前给我上了一课。我们总是聊着聊着不经意间就到了该<a href=\"http://www.duwenzhang.com/huati/likai/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">离开</a>的时候，意犹未尽的话题才会嗄然断片。</p><p>或许就是这种<a href=\"http://www.duwenzhang.com/huati/danchun/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">单纯</a>的交谈以及这种无所顾忌的谈心，让两颗本就心系彼此的心更加相融。在彼此需要的时候，恰好都在，这种不拘谨且轻松的情谊刚刚好。</p><p>&nbsp;      <a href=\"http://www.duwenzhang.com/wenzhang/renshengzheli/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">人生</a>难遇一<a href=\"http://www.duwenzhang.com/huati/zhiji/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">知己</a>，她可能就是上天派到我身边的<a href=\"http://www.duwenzhang.com/huati/tianshi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">天使</a>，我也有幸成为她<a href=\"http://www.duwenzhang.com/huati/shengming/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">生命</a>中的知音。当我们彼此吐露完心事，就会豁然开朗得各就各位，向着美好的明天继续迈进。</p><p>毕业后的我们选择了不同的道路，我在沿海城市青岛奋力拼搏，争取上进博得好的出路，她则在济宁报了专业，争取好就业。我们就这样为了更好的<a href=\"http://www.duwenzhang.com/wenzhang/shenghuosuibi/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">生活</a>第一次分别。</p><p>一起住惯了，到了别的城市自然不适应，想家想<a href=\"http://www.duwenzhang.com/huati/fumu/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">父母</a>更想这个可以说知心话的朋友。那时通讯设施还不先进，彼此的联系中断过。但在<a href=\"http://www.duwenzhang.com/huati/neixin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">内心</a>深处还会时常<a href=\"http://www.duwenzhang.com/huati/xiangnian/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">想念</a>，然而那份想念也唯有延伸到每一次的放假。逢假回家，我们便情不自禁地跑到彼此的家里相约，滔滔不绝地谈笑风生。</p><p>曾以为中间的不联系会使我们再次见面尴尬，之间有隔阂或者见了面不知该如何说起。这些实质性的假想并没有在我们身上应验。我们的见面依然如初般轻松自在，坐在一起有说有笑，问着彼此的近况，憧憬着彼此的未来，就仿佛两人从未分别过一样。两人最好的相处莫过于久别重逢后的依然如故。最触动心灵的是：不管分别多久，我们依然很熟悉。</p><p>时光荏苒，我们已长大，不得不分开。我工作在外，她工作在家。即便如此，也不能割舍我们之间的情谊。偶尔通个电话，聊聊家常，诉说下心事，就好像彼此陪在身边一样。</p><p>曾记得我前年学车那会儿，她也报了名学车。我们竟如此的默契。我的学车之旅并没有她那么顺畅，几经波折，那段日子郁闷到了极点。她在老家学的，考试很顺利，没用多久便把驾照拿下来了。而我在外学车相当不容易，简直糟糕透顶，考试通过率极低，<a href=\"http://www.duwenzhang.com/huati/xingyun/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">幸运</a>之神总和我擦肩而过。每当我和她通电话，就要长篇大论地诉苦一番，她便语重心长地安慰我。被教练挨批是常有的事，我还好，不过时常心生烦躁不悦，自己练得不好了或者练得不到位了，那所谓的自尊就会受伤，自然就有些小情绪堵塞心田。此刻便会拨通闺蜜的号倾诉一番，电话的那头虎口婆心的劝慰总能令我内心暖洋洋，所有的烦忧随着超声波都抛到九霄云外了。我一言她一语的回应着，互相将各自的教练教法讲给对方听，又互相采纳着对方的建议，互相鼓励着彼此一起加油，<a href=\"http://www.duwenzhang.com/huati/nuli/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">努力</a>将最好的自己呈现在庄严的考场上。她那些絮叨的话语如同<a href=\"http://www.duwenzhang.com/huati/muqin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">妈妈</a>的复读机，但就这恰到好处的抚慰让我感觉自己不再是孤军奋战，还好有你。复活的自己学会放空自己，放下包袱，重拾起信心，在闺蜜的鼓舞下圆满结束了学车之旅。</p><p>      成长中的我们总是在困惑：生活是什么？幸福又是什么？迷迷糊糊中我们闯进了青年的大门，在那里我们历经工作中的琐碎，生活中的<a href=\"http://www.duwenzhang.com/huati/wunai/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">无奈</a>，以及人世间的各种沧桑，跌跌撞撞中寻到了人生中最<a href=\"http://www.duwenzhang.com/huati/wenxin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">温馨</a>的归属。</p><p>     幸福的大门就这样为我们打开了。虽然我们还在迷茫中奔跑，但是终究逃不出<a href=\"http://www.duwenzhang.com/huati/mingyun/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">命运</a>的包围圈。幸福，真的就摆在了眼前。</p><p>我的好闺蜜，结婚了。在她经历过漫长的<a href=\"http://www.duwenzhang.com/wenzhang/aiqingwenzhang/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">爱情</a>长跑后，终于找到了人生伴侣。那一刻，她站在舞台的中央，神采飞扬地向着美好的明天宣誓，一道亮丽的风景线让这个隆重的节日变得更加庄严。我站在她的旁边，看着她满脸绽放着灿烂的<a href=\"http://www.duwenzhang.com/huati/xiaorong/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">笑容</a>，不禁为她喝彩。欢呼声和着掌声汇成祝福的话语，愿她从此刻的起点起飞，带着满满的爱去创造属于他们最美的家。</p><p>我的好闺蜜，祝福你在人生最艰难的抉择中找到了满意的答卷。恭喜你脱单<a href=\"http://www.duwenzhang.com/huati/chenggong/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">成功</a>，扬起了幸福的旗帜。未来的路愿你更加勇敢，闺蜜我永远是你<a href=\"http://www.duwenzhang.com/huati/jianqiang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">坚强</a>的后盾。</p><p>我的好闺蜜，当幸福来敲门，我虽然有千万个舍不得，但我还是要松开你的手，把你送到幸福的手里。因为那里才是你的家，那里才会有幸福。</p><p>我的好闺蜜，当一切再也回不去，但至少我们有<a href=\"http://www.duwenzhang.com/huati/huiyi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">回忆</a>，虽然你已成为人妻，但依然是我最亲密的<a href=\"http://www.duwenzhang.com/huati/jiemei/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">姐妹</a>。因为我们是闺蜜，我们是家人。</p><p>我的好闺蜜，当我们已长大，虽然注定是这样分离的结局，但至少我们年轻过，相聚过。因为世间有聚散，世间无<a href=\"http://www.duwenzhang.com/huati/wanmei/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">完美</a>。</p><p>我的好闺蜜，恰逢如此喜庆隆重的日子，告别<a href=\"http://www.duwenzhang.com/huati/danshen/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">单身</a>生活的你更该欢喜，愿得一人心，白首不相离。</p><p>我的好闺蜜，一定要狠狠的幸福！明天依然会很美好。当你踏上红地毯，就意味着你<a href=\"http://www.duwenzhang.com/huati/yongyou/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">拥有</a>了<a href=\"http://www.duwenzhang.com/huati/wennuan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">温暖</a>的避风港湾，你不再是一个人<a href=\"http://www.duwenzhang.com/huati/fendou/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">奋斗</a>，而是有了可以<a href=\"http://www.duwenzhang.com/huati/yikao/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">依靠</a>的肩膀。人生最幸福的事便是找到了另  一半，这幅拼图才算完整。</p><p>       我的好闺蜜，一定要狠狠的幸福！生活依然很美好。当他牵起你的手走过红地毯，便意味着以后的生活你们要携手前进。不管顺境还是逆境，你们都要时刻十指紧扣，共同面对。人生最快乐的事便是有你有我，生活才不会乏味。</p><p>其实有些事不明白，长大了便一目了然。就比如我们不知道所谓的爱情是什么，当找到了人生伴侣之后，仿佛一切都不必解释了。依靠且陪伴，或许就是人们对于爱情的心灵慰藉吧。</p><p>我的好闺蜜，茫茫人海，找寻郎君的旅途中深知其滋味，但在品味中寻到自己的如意郎君，便是人生最美好的收获。愿你们永远相亲相爱，相扶到老。</p><p>好闺蜜，一定要幸福。一定要狠狠的幸福！</p>', '　 总以为时间很长，我们有的是时间玩乐。总以为我们还是小孩子，一天到晚还会形影不离。总以为我们是闺蜜，说不完的话题有的是时间聊。但是我们却忘记了一件重要的事，我们已长大，我们也会分离。', '1', '2019-04-18 18:06:29', '39448');
INSERT INTO `health_document` VALUES ('2', '2019-04-18 18:11:34', '0000-00-00 00:00:00', '赋得古原草 ', '只道情深，奈何缘浅', '<p>“<a href=\"http://www.duwenzhang.com/wenzhang/renshengzheli/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">人生</a>若只如初见，何事秋分悲画扇。”第一次见到这句诗是上课的时候，我坐在他身后，从他的书中飘出来一张白纸落到我的脚边，那是我看过写的最好看的字，工整又不失张扬，给人一种特别舒适的<a href=\"http://www.duwenzhang.com/huati/ganjue/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">感觉</a>。有一种不舍得还给他的感觉，我轻轻的拍了一下他：“同学，这个是你的吧？”他回头盯着我手里的纸片，那张整齐排列的五官映入我的眼帘，他反映了一会儿，“啊！是的，谢谢！”他继续听课了，我很庆幸他并没有发现我的脸涨得通红。后来听宿舍里的人说他叫张扬，爱打篮球，是个大才子。</p><p>“阿嚏，阿嚏。”一向有鼻炎的我坐在教室里吊扇的正下方，吹的<a href=\"http://www.duwenzhang.com/huati/shijian/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">时间</a>久了，自然有点吃不消。“给你。”旁边一个长相乖巧的男生递过来一包纸巾，“我叫李想，来自安徽芜湖，我从班长那儿看了我们班花名册，就咱俩是同乡，你叫许紫菲对吧？”“嗯嗯，我们家是安徽亳州。”我特别激动，初到这个新环境，竟然有人已经对我有所耳闻，还是有些小得意的。然后我们俩就像是给家乡搞宣传一样，把我们那儿，所有的好吃的好玩的都聊了个遍，感觉很过瘾。</p><p>刚入学，对其他人也不太认识，我一进教室李想就向我招招手，他已经给我占好了桌位。有一次起床晚了忘记吃早餐，然而我那<a href=\"http://www.duwenzhang.com/huati/cuiruo/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">脆弱</a>的小胃可受不了啊！痛得我，趴在桌上捂着肚子脸色苍白，连说话的力气都没有。吓得李想从那以后每天都给我准备一份早餐，我都不好意思了。一天早上我又踏着上课铃声走进教室坐下，“快吃早餐吧！一会儿该凉了！”李想说。我从钱包里拿出一百块钱塞给他给他，“来，这两个月的早餐钱。”他不肯收，“你要不收，今后就不要给我买早餐了。”他没有收。从那以后李想没有再给我带早餐了，我也每天尽量早起五分钟去买早餐，但是李想的包里总是不断零食。每到快放学的时候，李想就特别屁颠的从书包里拿出面包，饼干之类的零食说：“来，紫菲，肯定饿了吧？”然后我们就像两只老鼠一样，把头塞进桌兜里偷吃。</p><p>其实，我想说，我们宿舍里都是女汉子。王艳拉着我说走篮球社纳新呢，我们去报名，学长可都是又高又帅又有型的呢。我很不屑的用食指点着王艳的脑袋说：“你个大花痴！”转眼我们就到了，王艳毫不犹豫的报了名，她签名字的时候，我看见我又看见了那工整又跋扈的两个字“张扬”，他也报名了。“给”王艳写完名字把笔递给我，我犹豫了一下，“哎呀！你就当是陪我去嘛！”王艳撒起了娇。“好吧！”然后我也报了名。</p><p>“紫菲，你快点，一会我们俩该去迟到了”王艳催我。今天篮球社第一次召集大家训练，我特别熟练的把长发挽起来，显得很清爽。然后我们就向体育场飞奔过去。我们去到，还没开始训练，男生们在一块打球。张扬穿着那件黄色的球衣特别显眼，他就钻进我的眼里出不来了。每一个投篮都是那么帅气，我在心里为他鼓掌呐喊。突然张扬手里的球向我飞奔过来，砸到我的头上，我感觉头很懵，就蹲下了，张扬跑过来关切地说：“美女，对不起啊，没事儿吧？”我心里窃喜，他叫我们美女耶！“奥，没事没事。”</p><p>刚开学大家总归是客客气气的，过了一段时间大家都玩得很熟了。眼看张扬一个帅气的三步上篮，运球，跳，准备投的时候被一个跳起的瘦高个挡了一下，投偏了，没有进。“张扬，你是猪吗？看不见他从这边拦你啊？”我大声嚷着。“许紫菲，你懂个毛线，闭嘴！”张扬大汗淋漓，晚霞的余光照到他身上感觉好像他整个人都在发光。他掀起黄色球衣一次性盖在脸上擦掉脸上汗珠，我就默默的关注着他，做他的小粉丝，只有我自己清楚我有多么崇拜他。我<a href=\"http://www.duwenzhang.com/huati/xihuan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">喜欢</a>他的霸道，喜欢他和我斗嘴。</p><p>这时我的电话响了，是李想，我们说好晚上一块去补作业，因为明天要交了，其实也就是我拿他的作业copy一份。“嗯，我这边就要结束了，我在这边等你。”来到自习室，我就拿起作业狂抄，“你有没有不懂的？我来给你讲讲。”“谢谢我们的<a href=\"http://www.duwenzhang.com/wenzhang/xiaoyuanwenzhang/daxueshenghuo/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">大学</a>霸，这些我都会做只是懒得耗费时间罢了。”我三下五除二写完了。如释重负的说“走吧！”“现在就走？”他有些疑惑，“不然呆在这里干什么？”“那我送你回去吧！”他有些不舍。回宿舍的路上，他一直问：“紫菲，你要不要吃这个？紫菲要不我给你买个冰激凌吃吧？”我们就一人舔着一个冰激凌走向宿舍。“我是第一次有男生送我感觉怪怪的。”“那今后我每天都送你好不好？”他认真的看着我。“哎呀！干嘛？我长这么安全，根本不用送好吗？”我装傻的说。我们一直没有说话，到了楼下，我说：“我上去了啊，谢谢你的冰激凌。”</p><p>从那以后，每天篮球训练，李想也都会去捧场，他总是拎一大兜矿泉水，等大家训练累了休息的时候分给大家喝，“给，张扬”李想扔过去一瓶矿泉水，张扬接住，他们俩是一个宿舍的，玩得很铁。我兴冲冲跑去拿一瓶正准备拧开。“紫菲，这个是给你准备的。”李想把手中已经拧松的脉动递给我。“哎，李想，大家待遇怎么不一样啊？”王艳一脸坏笑的看着我。我使劲掐了她一下：“死丫头，来来来，咱俩换换。”我抢过她手中的矿泉水。我注意到张扬的脸铁青着，不说话，拿一瓶矿泉水浇到头上。王艳拿着脉动很得意的递到张扬面前说：“来，张队长辛苦，给您！”张扬很用力的推开王艳“我不喝！”然后就大步走开了。</p><p>回去的路上王艳一脸坏笑说：“紫菲，你说我们每天形影不离的，你跟李想什么时候好的，我怎么一开始没看出来啊！快给我招了。”然后就开始挠我痒痒。“哎呀，艳子，你别闹了。我们俩是老乡，你不要乱说，李想他个老好人对谁都好。”“那他怎么不给我买脉动啊？”王艳有点吃醋的说。“好，那我就你们牵牵牵线让他每天都给我们王大小姐买脉动好不好？”“我才不要呢，我已经有我们家张扬张大队长了，你们家脉动还是留着自己喝吧！”王艳脸上洋溢着<a href=\"http://www.duwenzhang.com/huati/xingfu/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">幸福</a>和憧憬。我的心里一紧张，有点支支吾吾的说“你喜欢张扬啊？”“对啊，紫菲，你不感觉队长特别帅吗？每一个投篮，运球，啊！真是太帅了。”王艳两眼放光的样子看着远方说。我敲了她脑袋一下，“看你一副流口水的样子，好像要吃了让人家张扬一样。”王艳一路上都在给我讲张扬怎样怎样的令她神魂颠倒，我没有听进去。我<a href=\"http://www.duwenzhang.com/huati/neixin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">内心</a>一阵悸动，怎么可以这样，我最好的闺蜜竟然喜欢我心底的那个小心翼翼珍藏的他。</p><p>张扬打完球，一边察汗一边冲我走过来，小心脏在砰砰狂跳，我在想要怎样跟他打招呼呢！“给你，张扬。”艳子递给张扬一瓶脉动。“谢谢！”张扬冲艳子笑笑，艳子害羞的低下了头。我就站在旁边看着他们，艳子回过神来说：“来来来，紫菲，我给你买了你最喜欢的果粒奶优。”我接过来，没有说话。燕子是一个勇敢大方奔放的女生，自从那次他给我说他喜欢张扬，现在，每次训练完，她都热情跑到小卖铺去买水。“张队长，那个三步上篮我怎么都学不会，不是多一步就是少一步，一会儿你再教教我吧？”王艳一脸期待的看着张扬。“嗯，好！”“那个，艳子，你跟着张扬好好练，我就不等你了，我先回去了。”我看出了艳子的小计谋。</p><p>从那以后我就找各种理由请病假不去参加篮球培训，也不去上课，就那样蜗在宿舍里。李想给我打电话问我是不是病了，说要来带我去医院，我说没事，就是懒得上课。李想托艳子给我拎了一大兜苹果，还有各种感冒药。过了几天，李想问我感冒好了没有，我说好了好了，怕他又给我买药。好了就要多出来走走，不能老是蜗在宿舍里。我们去了图书馆，我一头扎进书堆里，各种类型的小说书一本接着一本，不停地看，像是疯了一样。李想摸摸我的头说，你这脑子不会烧坏了吧？</p><p>到了吃饭时间，我也不愿意去，李想说你想吃什么，我去给你买回来。我说随便吧！我又继续钻进我的小说世界里去了，“嘿”有人突然跳出来重重的拍了我一下，吓得我“啊！”一声大叫出来，周围其他人都分分抬头看我，我脸刷的一下红了。张扬特别得意：“怎么样，许爱妃，你的病好了没？”他给我起的外号，他说我的名字，许紫菲，倒过来念是许妃子，今后就叫我许爱妃了。“张扬，你有病啊？吓死我了。”在其他人面前他是一个酷酷的队长，在我面前他像是一个赖皮一样，总是爱捉弄我，并引以为乐。“怎么样啊！最近都不来训练，本来就底子差还不好好训练。”“哼……本小姐就是不用训练也照样虐你。”我夸下海口。“唉吆喂，走吧！练练去。”张扬晃手中的篮球向我挑衅。我不甘示弱，放下书，跟着他来到篮球场。</p><p>我抢过球，在篮下不停的投，不停地捡球，再投，完全不顾张扬。我浑身出满了汗，但是仍然在继续投。“紫菲，你怎么了？累了就歇一会。”张扬抢过篮球关切地说，他从没见过我这样，像脱缰的野马一样，拼命投球。“不累”我去抢张扬手里的球，他的手臂很长，他双手举起球，右手一勾，球进了。他抱住我，“到底怎么了？紫菲，你这样对自己我很心疼。”我在他怀里挣扎，他抱得更紧了，“有什么事你给我说啊！”你知道喜欢的人不能喜欢是什么感觉吗？”他在我额头上深深的亲了一下，靠在他宽大的怀抱中，我感觉特别踏实，我真想时光能够停留在那里。“我不管你喜欢的是谁，但今后只能喜欢我，因为我喜欢你。”这是我听过最霸道的告白。他送我回宿舍，半路他的大手主动来握住我的小手，很<a href=\"http://www.duwenzhang.com/huati/wennuan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">温暖</a>，但是我甩开了。我们就这样左右并排走着，离得很远，我扭捏着有点不好意思。</p><p>他跑去给我买了粥和饼，“赶快吃吧！肯定饿坏了！”他关切的看着我。我真的感觉像是做梦一样，回到宿舍，艳子跑过来关切地说：“怎么现在才吃晚饭？一天没有见你，想死你了。我要抱抱！”我的心里感觉像是做了亏心事，和艳子一直像是亲<a href=\"http://www.duwenzhang.com/huati/jiemei/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">姐妹</a>一样，我们无话不说，<a href=\"http://www.duwenzhang.com/huati/xingge/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">性格</a>相仿的我们很合得来。我从刚才那个<a href=\"http://www.duwenzhang.com/huati/tianmi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">甜蜜</a>的梦中醒来，心里像是压一块大石头一样，堵得慌。左手是<a href=\"http://www.duwenzhang.com/wenzhang/youqingwenzhang/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">友情</a>，右手是<a href=\"http://www.duwenzhang.com/wenzhang/aiqingwenzhang/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">爱情</a>。洗刷完躺到床上，李想和我聊天，李想是一个特别特别好的人，无可挑剔，对我关心之至，大暖男一枚。聊了好久，我的心也不堵了，就睡觉了。梦中，我们四个人都是特别亲密的好朋友，我们<a href=\"http://www.duwenzhang.com/huati/chunjie/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">纯洁</a>透明的<a href=\"http://www.duwenzhang.com/huati/youyi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">友谊</a>不参杂任何杂质。</p><p>往后的日子里我特别乖，每天按时去上课，乖乖的坐在艳子和李想中间认真听课，然后去图书馆认真完成作业。只是没有再去篮球社团打球了，见着张扬也是绕道走像是没看见一样。我已经决定为了艳子我要灭了心中那窜类似爱情的小火苗。下课了，张扬就在门口堵着我，“张扬”艳子兴冲冲的跑上去，“陈紫菲，你过来一下！”张扬有点严肃。“艳子，你先去等我一会，估计是我这几天没有去篮球社训练，也没有请假，惹队长不高兴了。”我趴到艳子耳边悄悄的跟她说。艳子点点头先走了。“那我也先走了”李想感觉自己有点多余识趣地走了。“你这几天为什么躲着我？”张扬还是特别严肃。“我没有啊，咱俩以前交集也不是很多，也没怎么说话啊！”我装作无所谓的样子看着地面说。“好，那你为什么不去参加篮球培训，而且还不请假？”张扬更加愤怒了。“姐不想去了，行不行，我要退了篮球社。”我有点恶狠狠的又有点不忍心<a href=\"http://www.duwenzhang.com/huati/shanghai/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">伤害</a>张扬。“好，我再问你最后一个问题，你那天晚上有没有接受我？”张扬抱着最后一丝<a href=\"http://www.duwenzhang.com/huati/xiwang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">希望</a>，眼睛特别渴望的看着我。“没有啊！怕你太<a href=\"http://www.duwenzhang.com/huati/shangxin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">伤心</a>，安慰你的。”我<a href=\"http://www.duwenzhang.com/huati/yanshen/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">眼神</a>飘忽，没有敢直视他。张扬愣了一会，平静下来问我：“那你喜欢的人是李想对不对？”“对”说完我面无表情的转身走了，可是转过身的我却已泪流满面。</p><p>我在心里安慰自己，如果我和张扬在一块了，那么根据李想的性格，一定会恨死张扬，他俩就不能做好哥们了，而且我也没有脸见艳子了。如果燕子和张扬在一块的话，那么大家都还是好朋友。上课的时候，我依然和李想艳子坐一块，我知道张扬在暗中监视我，所以我就和李想装作很亲密。而且果然奏效，很快张扬就对外声称艳子是他<a href=\"http://www.duwenzhang.com/huati/nvpengyou/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">女朋友</a>了。</p><p>我像平时一样和李想一块去食堂吃饭，他像平时一样细心体贴的给我剥鸡蛋。吃过饭我们准备返回图书馆，我怕自己的心静下来，会感觉特别<a href=\"http://www.duwenzhang.com/huati/kongxu/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">空虚</a>和委屈，最近就一只躲在图书馆看书。李想最近和我说话我总是能够听出一种<a href=\"http://www.duwenzhang.com/huati/aimei/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">暧昧</a>的感觉。回图书馆的路上，他竟然拉起我的手，“紫菲，我喜欢你，你可以做我女朋友吗？我听张扬说你也喜欢我，是真的吗？”我的脸上一阵发烫，没有回答他，也没有甩开他的手。当时就是，不想让李想伤心<a href=\"http://www.duwenzhang.com/huati/nanguo/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">难过</a>。就这样，李想每天都约我或者是去图书馆，或者是去公园。他以为我是默认了，<a href=\"http://www.duwenzhang.com/huati/shanliang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">善良</a><a href=\"http://www.duwenzhang.com/huati/danchun/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">单纯</a>的我只是不懂得拒绝。有时候我感觉李想大多是一个一块玩耍的好伙伴，而不像是<a href=\"http://www.duwenzhang.com/huati/nanpengyou/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">男朋友</a>，他真的是各方面都很好，对我的好也是无可挑剔，我总是觉得我对他缺一种感觉。我们在一块玩的时候还挺愉快的，双子座和双鱼座是很好玩伴，但是恋人指数偏低。当时感觉傻乎乎的，懵懵懂懂的，上课不能做亲密动作，只要有熟人在就不能拉手。为此我们还立下字句，双方还摁手印签名了呢！两个人凑一块就变成了两个逗比。艳子每天不在宿舍，晚上回来的时候就跟拉着我说：“紫菲，你知道吗，今天我和张扬一块去坐摩天轮了呢，给你看我们拍的照片。”我看见照片上他们俩笑得都很<a href=\"http://www.duwenzhang.com/huati/kaixin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">开心</a>。心里有一种莫名的<a href=\"http://www.duwenzhang.com/huati/beishang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">悲伤</a>。</p><p>放暑假了，我是很期待这个暑假的，在学校里待的够了，想换个环境。李想去火车站送我上车，一路上特别的不舍，我说没事的我们可以打电话，聊QQ。回家之后，我们每天晚上都打电话，聊的今天干什么了，聊到没有话了，还是不挂电话。我给我<a href=\"http://www.duwenzhang.com/huati/muqin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">妈妈</a>说，有个男<a href=\"http://www.duwenzhang.com/huati/haizi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">孩子</a>追我，我不知道怎么拒绝。妈妈说：“那你要知道自己到底喜不喜欢他，现在都上大学了，妈妈也不管你了，可是你要跟着自己的心走，既然都说不知道如何拒绝，那你肯定是不那么喜欢他了？”“他的人特别好，对所有人都好。”我说：“傻孩子，世界上好人多了，他们要是都喜欢你，你该怎么办呢？喜欢一个人的感觉就是就算全世界都不喜欢他，你也会站在他的身后崇拜他。在你的心中他是一个太阳般的人，是最<a href=\"http://www.duwenzhang.com/huati/wanmei/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">完美</a>的人。”妈妈说完，我的脑海里浮现了李想投中球之后嘚瑟的冲我一笑的场景。</p><p>李想再给我打电话，我们总是说不几句，我就想各种借口，我先洗澡，我妈叫我刷碗呢，然后就挂了，再打过来我就说我有一点困了。李想是那种特别迁就我，体贴的人。并不是妈妈那样说我才对李想疏远的，而是每次打电话的话题总是千篇一律，让我感觉如同爵蜡。我用我的小技俩推脱了有一个礼拜，每次打电话就只说了几句。李想问我：“紫菲，你是不是想和我<a href=\"http://www.duwenzhang.com/huati/fenshou/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">分手</a>了？你说为什么？”我没有说话，“你不想说话，好，你如果是想和我分手，就直接回答我：是 就行了。”我犹豫了，他也不说话，就这样静静的，过了好久，我小声的“嗯”了一声。然后他就默默的挂了电话，我再也打不通。他总是这样，给我想要的，哪怕我想要跟他分开，他也会撕心裂肺的<a href=\"http://www.duwenzhang.com/huati/manzu/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">满足</a>我。</p><p>开学了，今年我们大三了，时间过得真快。回到学校，进教室的时候我的心里砰砰砰的，好像是做了亏心事一样既害怕见到李想，又有点想看到他。我偷偷地看着他，他瘦了许多，整个人也都像霜打的茄子一样，萎靡不振的。他找过我一次，“紫菲，我们不闹了好不好？”我不知道怎么回答他，他看出了我的答案。走的时候给我留下了一大堆好吃的，回到宿舍，翻看他买的零食，我哭了，全都是我爱吃的。他没有再来找过我，他好像消失了一样，我知道自己有多么残忍，自责也无济于事。从此他对我就就鸡犬之声相闻，老死不肯往来。开学之后，艳子每次回宿舍总是眼睛红红的，看样子张扬又惹她生气了。没多久他俩也分手了。</p><p>时间过得不急不慢，百<a href=\"http://www.duwenzhang.com/huati/wuliao/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">无聊</a>赖的我喜欢泡图书馆，一泡就是一整天，大学，我可没少啃图书馆的书。上课的时候，李想总是故意躲着我。张扬喜欢盯着我看，碍于艳子，我也总是避着他。快毕业的我们还是比较忙的，写完论文，答辩过后，我们就要毕业了。</p><p>有些人，一辈子都不可能会在一起，但可以在心里藏一辈子。毕业那天晚上你问“如果我们能在恰当时间，恰当的地点，恰当的场合，相遇在一起，会不会在一起相恋？”</p><p>“时光恍若隔世，或许会吧，只是没有如果！”我抬起头，仰望着星空说。</p><p>泪光滑过你的脸颊，在夜空发黄的灯光照耀下，显得晶莹剔透，“我懂了！”你转过身，背向着我说。</p><p>“人生若之如初见，何处秋风悲画屏。”彼岸豆蔻，谁许谁地老天荒？此去经年，谁伴谁天涯海角？只道是情深似海，奈何缘浅于此。你说“我们在最美的季节相遇，却没有在最美的季节相恋。”我说“情深与此，奈何缘浅！”只道一声君安，勿忘！</p>', '只道情深，奈何缘浅', '1', '2019-04-18 18:11:34', '68470');
INSERT INTO `health_document` VALUES ('3', '2019-04-18 18:12:11', '0000-00-00 00:00:00', '王福光 ', '明天，你好', '<p>清晨，打开一扇窗，那暖暖的阳光，熙熙的春风，迎面扑来。那空气的清新，花草的芳香，山含情，水含笑，春儿“叽喳叽喳”的闹。又是一年新春时，一岁年龄一岁人，一岁年长一岁心。</p><p><a href=\"http://www.duwenzhang.com/wenzhang/renshengzheli/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">人生</a>天地间，匆匆复匆匆。夏虫不可语冰，千江有水千江月，万里无云万里天。别人给的糖，甜过一阵就涩了；委屈时靠的肩膀，<a href=\"http://www.duwenzhang.com/huati/yanlei/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">眼泪</a>流完后也就<a href=\"http://www.duwenzhang.com/huati/likai/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">离开</a>了。而当有一天，我们发现自己炒的菜最香，自己种的果最甜，自己抹掉眼泪那才算是<a href=\"http://www.duwenzhang.com/wenzhang/shenghuosuibi/chengzhang/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">成长</a>，自己翻过山峦才算到过天空，那么你就会清楚的知道，<a href=\"http://www.duwenzhang.com/huati/xingfu/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">幸福</a>需要自己经营，我们想要的人生，也只能自己给自己，那不妨自己对明天的自己说声：“明天，你好。”</p><p>“君子山岳定，小人丝毫争。”与其战胜敌人一万次，不如战胜自己一次。我们可能在整个春天里找不到一朵花，也可能在一朵花上发现了整个春天。人生从来就没有真正的绝境，而只有对处境<a href=\"http://www.duwenzhang.com/huati/juewang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">绝望</a>的人。别人<a href=\"http://www.duwenzhang.com/huati/yongyou/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">拥有</a>的，不必羡慕；只要<a href=\"http://www.duwenzhang.com/huati/nuli/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">努力</a>，<a href=\"http://www.duwenzhang.com/huati/shijian/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">时间</a>都会给你。树儿，在秋天释空了所有落叶，但只要那春天一到，却又会依然枝繁叶茂。那么，只要<a href=\"http://www.duwenzhang.com/huati/shengming/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">生命</a>还握在我们手心，<a href=\"http://www.duwenzhang.com/wenzhang/shenghuosuibi/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">生活</a>就没有真正的绝望，那一时半刻的成败<a href=\"http://www.duwenzhang.com/huati/deshi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">得失</a>对于我们一生来说，那又算得了什么呢？但如果心累了，那不妨就休息一下，毕竟<a href=\"http://www.duwenzhang.com/huati/linghun/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">灵魂</a>的修复才是我们人生永不干枯的渴望。只是，我们不得不翘首<a href=\"http://www.duwenzhang.com/huati/xiwang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">希望</a>，对明天的自己从心底轻声说句：“明天，你好。”</p><p>人一生的幸福，一半要争，一半要随。这争，不是与他人，而是与困苦；随，也不是那随波逐流，而是知止而后安。一切安排都是最好的安排，毕竟那人生的味道，总是苦里藏着甜，甜里含着苦。兴许，那岁月本就是一颗纵横交错的巨树，而生命也亦不过是其中飞进飞出的小鸟。而如果那一天，你遭遇了人生的冷风冻雨，你的心已经不堪忍受，那么，也请你稍微等一等、候一候，你也要清楚的知道，这颗巨树也正在生活的背风处为你积极营造出一种春天的气象，并已开始一点一点慢慢的接近你靠拢你。那么，只要你努力了，那塞翁失马，焉知非福。</p><p>那，既然这样，那就不要管<a href=\"http://www.duwenzhang.com/huati/xianshi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">现实</a>有多么惨不忍睹，我们也要持之以恒地<a href=\"http://www.duwenzhang.com/huati/xiangxin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">相信</a>，这也只不过是黎明前短暂的黑暗罢了。那，我们既不要惶恐眼前的难关迈不过去，也不要担心此刻的付出没有回报。因为那向日葵看不到太阳也会照样开放，生活看不到希望我们依然要学会坚持。</p><p>“不雨花犹落，无风絮自飞。”昨天越来越多，明天越来越少，那我们不妨给时光一份浅浅的回眸，给<a href=\"http://www.duwenzhang.com/huati/xinling/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">心灵</a>一份淡淡的安暖。笑看风云变化，淡观世态炎凉；得失安然、宠辱不惊；随遇而安、宁静致远；水深火热讴<a href=\"http://www.duwenzhang.com/huati/mingyun/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">命运</a>，风口浪尖舞人生。毕竟，车到山前必有路，船到桥头自然直。生命不止、<a href=\"http://www.duwenzhang.com/huati/xinnian/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">信念</a>不息，我心<a href=\"http://www.duwenzhang.com/huati/jianqiang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">坚强</a>岁月怎恙？</p><p>那么，无论我们遭受了多少艰辛，经历了多少苦难，只要心中还怀着一粒信念的种子，那么总有一天，她就能帮助我们走出困境，让生命重新开花结果。但如果想改变我们的人生，那么首先就是要改变我们的<a href=\"http://www.duwenzhang.com/huati/xintai/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">心态</a>。因为“谁能以最深刻的内容<a href=\"http://www.duwenzhang.com/huati/chongshi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">充实</a>每个瞬间，谁就是在无限地延长自己的生命。”</p><p><a href=\"http://www.duwenzhang.com/huati/pingfan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">平凡</a>是生活的底蕴，困苦是人生的注脚。而我们却常常感慨岁月不居，生命多艰，品味的也只是当下的苦涩，<a href=\"http://www.duwenzhang.com/huati/mimang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">迷茫</a>的也只是目前人生的朝向。既然这个世界有花好月圆、风华正茂、两情相许；那么也应有花败月残、红颜易老、人各东西。那我们就不要管它雨丝风片，还是烟波画船，不如为自己点燃一盏心灯，开启一扇心窗，勇于面对、乐于承受、与生活同鸣、与苦难共舞，那岂不又是一种滋味呢？</p><p>但或许，只要心中想着花开，那么时时就会“面朝大海，春暖花开”。那不妨，就让我们把每一个黎明当作是生命的开始，把每一个黄昏亦作是生命的小节。“菩提本无树，明镜亦非台。本来无一物，何处惹尘埃。”只有心里装有阳光的人，才能感受到那现实的阳光。如果连自己都常常苦着脸，那生活又怎能如何<a href=\"http://www.duwenzhang.com/huati/meihao/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">美好</a>呢？毕竟生活始终是一面镜子，你若对她笑，她便会对你笑。那倒不如就在道路的两旁，随时播种，随时开花吧。毕竟那所有的悲，终究也会为我们留下那一丝欢乐，那所有的<a href=\"http://www.duwenzhang.com/huati/yihan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">遗憾</a>也终会为我们留下那<a href=\"http://www.duwenzhang.com/huati/wanmei/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">完美</a>的角落。</p><p>明天，你好。</p><p>越努力，越<a href=\"http://www.duwenzhang.com/huati/xingyun/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">幸运</a>。那就不要等明天向我们走来，让我们走向明天吧。而有时，我们却都像那没有伞的<a href=\"http://www.duwenzhang.com/huati/haizi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">孩子</a>，时时都必须保持着努力奔跑的姿态。那么，与其探索世界到底有多大，不如思考自己的心到底能有多宽。也许那世界的模样，也只不过是那心底的倒影；世界的美好，更是来自那份心地的光明与悲悯。我们可以在<a href=\"http://www.duwenzhang.com/huati/fannao/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">烦恼</a>中经过，但却不能在烦恼中<a href=\"http://www.duwenzhang.com/huati/mishi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">迷失</a>。</p><p>人生重在选择，但无论如何选择，只要是自己的选择，那就根本不存在对错与<a href=\"http://www.duwenzhang.com/huati/houhui/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">后悔</a>。毕竟，过去的你不会让现在的你满意，现在的你也不会让未来的你满意。那么，既然当初有胆量去选择，那么我们同样也该有<a href=\"http://www.duwenzhang.com/huati/yongqi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">勇气</a>把后果来承受。况且那一个人的长大，也便是敢于惨烈地面对自己：在选择前，有一张真诚坚定的脸；在选择后，有一颗绝不改变的心。</p><p>那么，就不要总抱怨自己，因为人生终究是一场漫长的对抗，有些人笑在开始，有些人却赢在最后。因为命运不会偏爱谁，兴许就看你能够追逐多久，坚持几时。因为你今天的努力，就是你那幸运的伏笔。当下的付出，就是那明日的花开。芬芳过往，岁月静好。人不能靠<a href=\"http://www.duwenzhang.com/wenzhang/xinqingriji/\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">心情</a>活着，而要靠心态去生活。</p><p>天空，毕竟不是每天都放晴；生活，也不是时时都是欢喜。那向日葵因为经历了风雨，所以站在阳光下才会更显得灿烂。人只有尝尽了百味才方觉得甜更甜。那偶尔隐匿的阳光，再来时益更<a href=\"http://www.duwenzhang.com/huati/wennuan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">温暖</a>；扑朔迷离的希望，再出现时益更令人惊喜。</p><p><a href=\"http://www.duwenzhang.com/huati/kuaile/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">快乐</a>是树缝里的阳光，斑驳地洒落在生活的角落中；烦恼是那屋外的微风，从窗外悄无声息地溜进来。我们无须为了阳光而砍伐树木，也不必为了宁静而紧闭窗扉。我们一直是在快乐与烦恼的缠绕中前行的，那再大的快乐，也会沉淀为过往，再大的烦恼也只能点缀成碎片。得志不得意，<a href=\"http://www.duwenzhang.com/huati/shibai/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">失败</a>不失态，那兴许才是最好的抉择。那，就不如保持一颗<a href=\"http://www.duwenzhang.com/huati/leguan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">乐观</a>的心态，也许走着走着天就亮了，爱着爱着幸福她就来了。</p><p>不是每种花都能结果，但每种花都有自己的花季。那么，只要我们心态是正确的，那就不如自己安慰一下自己，自己对明天的自己说声：“明天，你好。”</p>', ' 清晨，打开一扇窗，那暖暖的阳光，熙熙的春风，迎面扑来。那空气的清新，花草的芳香，山含情，水含笑，春儿“叽喳叽喳”的闹。又是一年新春时，一岁年龄一岁人，一岁年长一岁心。', '1', '2019-04-18 18:12:11', '3233');
INSERT INTO `health_document` VALUES ('4', '2019-04-18 18:12:49', '0000-00-00 00:00:00', '罂粟花儿', '那时，我太胆小', '<p><a href=\"http://www.duwenzhang.com/huati/shijian/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">时间</a>总是悄无声息的向前奔跑着，却把<a href=\"http://www.duwenzhang.com/huati/huiyi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">回忆</a>不小心落在了后面。陌生的街道上，偶尔似曾相识的<a href=\"http://www.duwenzhang.com/huati/weixiao/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">微笑</a>却总让我心里一阵悸动，想起你。</p><p>第一次见你是高中刚入学那会儿。彼此陌生的同学从各个镇上汇聚到市里二中上学。<a href=\"http://www.duwenzhang.com/huati/laoshi/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">老师</a>按照身高和成绩分座位，成绩好的和成绩差得坐在一起，大概是想让大家一起进步的意思。我的个子在班上也算是高的了，自然被分到了最后一排。你被老师分到了我前面的坐着。按说你跟我还高点吧，不过还好，我还是可以看得见黑板的。再说，坐在我身边的还是个女生，这也是我不愿换座位的原因。后来我和同桌还成为了最好的朋友。</p><p>我本来我就不是一个爱讲话的人，更极少和男生讲话。若是在公众场合，我讲几句话就会脸红。我们本该无交集的。也许不是你唐突的请教我一个题目，也许就不会有后来。</p><p>你在班上总是一位极其活跃的同学。上课总是积极回答老师的问题，下课后和大家打成一片，也爱唱流行歌曲，后来你还教大家唱周杰伦的歌呢。当然也有缺点，那就是上课<a href=\"http://www.duwenzhang.com/huati/xihuan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">喜欢</a>在下面吃零食，也爱讲悄悄话。我坐在你后面可是看得一清二楚啊。说来也怪，你在下面没怎么听讲，但是老师一提你问，你还是可以正确无误的回答得上来，实在是到现在也还是让我佩服。所以老师也还是蛮喜欢的你的。而我确实不爱讲话，安静的可怕，甚至没有我大家也不会注意的人。</p><p>一次，下课后，你突然转过身问我刚刚老师讲的数学题，着实把我下了一跳。你怎么会问我了，天知道，我那时数学可是一塌糊涂啊。我支支吾吾说，老师的刚讲的我也不太懂，正在抄笔记。你说了句，你听课不是很认真么。那你笔记做好了给我看一下啊。我说好。你继续出去跟其他同学玩去了。如果你当时稍微注意一下，那时我的脸早就红了，我可以<a href=\"http://www.duwenzhang.com/huati/ganjue/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">感觉</a>到我的脸正在发着烧。这该死的脸，总是不听我的控制，无缘无故的红。当然还是有点<a href=\"http://www.duwenzhang.com/huati/xurong/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">虚荣</a>心作祟，我把那次的笔记做的格外的认真。自那以后我笔记做的都很认真。因为我不知道你什么时候会向我借笔记。后来，你经常没事就和后面的我们说话。因为你太活跃了，同桌就有点烦了，而我当时却不这么认为。我感觉你的话语总是会让我喜笑颜开。每次你还没走进教室，我都可以感觉到是你来了。而且我会不自觉的注意你的一言一行。</p><p>学校要举行秋季运动会了，我知道你报名了。你知道吗，为什么偶尔你可以在早上的操场碰到我？其实，不是偶尔， 而是我知道你报名后天天都在早上晨跑，因为我知道你会出现在那里。</p><p>我记得那天比赛，3000米的长跑马上就轮到你了，广播上叫着你的名字，你却不知道跑到哪里去了，操场上不见你的影子。操场上的我心急如焚，暗暗着急，心想你有可能还在教室，我一口气跑到教学楼四楼，却发现你不在那里。我又折回操场，幸好你在那里已经做好预备姿态了。我跟着班级其他几个同学在轨道旁边大声喊着加油，声音很大却被噪杂的说话声淹没了。最后，大家也累了就坐在地上看。而我，也不知为什么，也许是想鼓励你吧，在轨道外脱去外套让好友帮我拿着，袖子往胳膊肘上一捋，就跟在你旁边跑着，嘴里大声喊着你的名字加油，这声音震撼着我耳朵，却淹没在了热闹的人群。你向一个斗士一样，随着耳边呼呼的风声，朝着<a href=\"http://www.duwenzhang.com/huati/mubiao/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">目标</a>奔跑着。你的好友在<a href=\"http://www.duwenzhang.com/huati/zhongdian/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">终点</a>迎接着你。那天我记得你后来的成绩是全校第二名。多么值得高兴的日期啊！也许，那天并没有任何人注意到我，但是我的心里却自顾自的欢乐起来！</p><p>我好像真的喜欢上你了，可是在那个时候谈<a href=\"http://www.duwenzhang.com/huati/lianai/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">恋爱</a>是不允许的，而且我也不可能向你<a href=\"http://www.duwenzhang.com/huati/biaobai/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">表白</a>。我更<a href=\"http://www.duwenzhang.com/huati/xiwang/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">希望</a>男生向我表白。况且在我看来那时如果谈恋爱，太自私了，花着<a href=\"http://www.duwenzhang.com/huati/fumu/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">父母</a>的钱，还不好好学习。为此那时的我经常感到深深的自责，脑袋却不听话的经常冒出你的样子。</p><p>后来为了给高考的学生腾出考场，男生的宿舍要给那些外校生住。老师说让男生把书本放到女生宿舍。不然等我们放完假回来，书本可能会丢。那时，我的心里很希望你会向我提出请求把书本放在我那儿。可是直到那天下午你还没有跟我说。我最终还是没有耐住性子。乘着下午第三节课下课后，我在教室外的走廊对你说，你的书本要不要放到我那里啊，我那里有空的地方？还没问完，你说，你已经有地方放了。我的脸红了起来，当时我感觉这就是一场赤裸裸的表白，里面更多的是我自作多情的成分。估计那时你也觉得有些不好意思吧，看见我脸红了，也跟着红了起来。</p><p>在后来调了位子，我们隔得远了，说话的机会也就变少了。我虽然想跟你说话，但是我不愿主动去找你，而且我又不喜欢说话。一次偶然间，听你的朋友说你的<a href=\"http://www.duwenzhang.com/huati/nvpengyou/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">女朋友</a>怎么怎么了。我心里突然间的<a href=\"http://www.duwenzhang.com/huati/nanguo/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">难过</a>起来，原来你是有女朋友的，而我却那么的自作多情。</p><p>在后来，经过一次分班，我们不在同一个班了，我在一班，你在二班。我们的教室仅隔着一道走廊，可我感觉这隔着的不仅仅是一道走廊，而是两颗心的距离。你还是会整天嘻嘻哈哈的往我们班上跑，找你的好朋友说话，当然也包括女生。可是，却没有找过我，除非面碰面了，互相问候一下。也许在你看来我们仅仅是前后桌的关系，而我却把你刻在了心里。我无数次告诉自己别在自作多情了，可是记忆总是与我作对。</p><p>在后来，听说你辍学了，这怎么可能，我为了求证下一才，跨过了自从分班后就再也没有跨过的走廊去找你，却发现整个班级的的同学都在，唯独缺了你。若我知道及时，我真想豁出去去劝你读书。我始终不曾<a href=\"http://www.duwenzhang.com/huati/xiangxin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">相信</a>一个那么成绩优异的人说不读书就不读书了，我相信你一定是有什么苦衷。</p><p>在后来的后来，就再也没有你的消息了。而我也该为自己拼搏一回了，马上就高三了。我的日子也这样波澜不惊的过着，虽然我还是偶尔会想起你。</p><p>也许你至今都不曾知道有个人曾经喜欢过你。但那个会在世界的某个角落一直祝福你，希望你过得<a href=\"http://www.duwenzhang.com/huati/kaixin/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">开心</a><a href=\"http://www.duwenzhang.com/huati/xingfu/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">幸福</a>！若<a href=\"http://www.duwenzhang.com/huati/qingchun/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">青春</a>可以放肆一些，我愿意大胆一回，在你<a href=\"http://www.duwenzhang.com/huati/likai/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">离开</a>之前向你轻轻吐出：我喜欢你！也许就不会给青春留下<a href=\"http://www.duwenzhang.com/huati/yihan/index1.html\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">遗憾</a>了吧。</p>', '时间总是悄无声息的向前奔跑着，却把回忆不小心落在了后面。陌生的街道上，偶尔似曾相识的微笑却总让我心里一阵悸动，想起你。', '0', null, '78052');

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `permission` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('1', '2019-04-16 16:29:34', '2019-04-16 16:47:44', 'iconfont icon-ai-user', '个人信息', '0', '1', '1', '0', '/selfInfo');
INSERT INTO `resources` VALUES ('2', '2019-04-16 16:30:06', '2019-04-16 16:48:17', 'iconfont icon-tubiaozhizuomoban', '健康知识阅读', '0', '1', '4', '0', '/knowledge');
INSERT INTO `resources` VALUES ('3', '2019-04-16 16:30:31', '2019-04-16 16:47:55', 'iconfont icon-gerendangan', '个人健康档案', '0', '1', '2', '0', '/selfHealth');
INSERT INTO `resources` VALUES ('4', '2019-04-16 16:31:03', '2019-04-16 16:48:27', 'iconfont icon-danganguanli', '健康档案管理', '0', '1', '5', '0', '/healthManage');
INSERT INTO `resources` VALUES ('5', '2019-04-16 16:31:25', '2019-04-16 16:48:09', 'iconfont icon-jianyi', '健康建议', '0', '1', '3', '0', '/healthSuggest');
INSERT INTO `resources` VALUES ('6', '2019-04-16 16:31:44', '2019-04-16 16:48:49', 'iconfont icon-yonghuguanli', '用户信息管理', '0', '1', '7', '0', '/users');
INSERT INTO `resources` VALUES ('7', '2019-04-16 16:32:04', '2019-04-16 16:48:56', 'iconfont icon-quanxianguanli', '权限管理', '0', '1', '8', '0', '/permission');
INSERT INTO `resources` VALUES ('8', '2019-04-16 16:32:23', '2019-04-16 16:48:40', 'iconfont icon-navicon-jsgl', '角色管理', '0', '1', '6', '0', '/roleManage');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '2019-04-16 16:32:52', '2019-04-18 17:56:10', '拥有系统最高权限', '管理员');
INSERT INTO `role` VALUES ('2', '2019-04-16 16:32:59', '2019-04-18 17:56:31', '重庆交通大学学生', '学生');
INSERT INTO `role` VALUES ('3', '2019-04-16 16:33:06', '2019-04-18 17:57:03', '每个学员相应的辅导员', '辅导员');
INSERT INTO `role` VALUES ('4', '2019-04-18 17:57:33', '2019-04-18 17:57:49', '医院的医生们', '五官科医生');
INSERT INTO `role` VALUES ('5', '2019-04-18 19:43:00', '2019-04-18 19:44:58', '内科医生', '内科医生');
INSERT INTO `role` VALUES ('6', '2019-04-18 19:43:15', '2019-04-18 19:45:04', '外科的医生', '外科医生');
INSERT INTO `role` VALUES ('7', '2019-04-18 19:44:48', '2019-04-18 19:45:18', '填写体检表的最后内容的医生角色', '其他科医生');

-- ----------------------------
-- Table structure for role_resource_bind
-- ----------------------------
DROP TABLE IF EXISTS `role_resource_bind`;
CREATE TABLE `role_resource_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `resource_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resource_bind
-- ----------------------------
INSERT INTO `role_resource_bind` VALUES ('1', '2019-04-16 16:33:20', '0000-00-00 00:00:00', '1', '1');
INSERT INTO `role_resource_bind` VALUES ('2', '2019-04-16 16:33:26', '0000-00-00 00:00:00', '2', '1');
INSERT INTO `role_resource_bind` VALUES ('3', '2019-04-16 16:33:34', '0000-00-00 00:00:00', '3', '1');
INSERT INTO `role_resource_bind` VALUES ('4', '2019-04-16 16:33:40', '0000-00-00 00:00:00', '4', '1');
INSERT INTO `role_resource_bind` VALUES ('5', '2019-04-16 16:33:45', '0000-00-00 00:00:00', '5', '1');
INSERT INTO `role_resource_bind` VALUES ('6', '2019-04-16 16:33:50', '0000-00-00 00:00:00', '6', '1');
INSERT INTO `role_resource_bind` VALUES ('7', '2019-04-16 16:33:55', '0000-00-00 00:00:00', '7', '1');
INSERT INTO `role_resource_bind` VALUES ('8', '2019-04-16 16:34:03', '0000-00-00 00:00:00', '8', '1');

-- ----------------------------
-- Table structure for suggestion
-- ----------------------------
DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `check_info_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `is_read` int(11) DEFAULT '0',
  `office` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suggestion
-- ----------------------------

-- ----------------------------
-- Table structure for system_info
-- ----------------------------
DROP TABLE IF EXISTS `system_info`;
CREATE TABLE `system_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `notice` varchar(255) DEFAULT NULL,
  `system_name` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_info
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `birth` datetime DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `stu_no` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `culture_level` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `native_place` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `work_place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2019-04-16 16:34:42', '2019-04-16 16:36:49', null, '信息科学与工程学院', '一班', '物联网工程', '彭于晏', '7bc28863477b00f47251c8ec7df8e5b5', '1', '男', '631507030103', 'admin', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('2', '2019-04-18 19:57:48', '2019-04-18 19:58:50', null, '音乐学院', '三年六班', '音乐', '周杰伦', 'b222d8bab4e5b50480d3522d2b45d3e4', '2', '男', '631507030104', '631507030104', null, null, null, null, null, null);
