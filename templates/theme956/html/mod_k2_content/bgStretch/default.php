<?php
/**
 * @version		$Id: default.php 834 2011-06-20 07:36:03Z joomlaworks $
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.gr
 * @copyright	Copyright (c) 2006 - 2011 JoomlaWorks, a business unit of Nuevvo Webware Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

/*style="width: ?>"
// no direct access */
defined('_JEXEC') or die('Restricted access');
global $gpath;
$document =& JFactory::getDocument();
?>
<div id="k2ModuleBox<?php echo $module->id; ?>">
<div id="gspinner"></div>

<div id="bgStretch"><img src="<?php foreach ($items as $key=>$item) {if($key==0) echo $item->image;}; ?>" alt="" /></div>
		<?php if(count($items)): ?>
    <div class="bg-nav">
    	<ul>
		<?php foreach ($items as $key=>$item): ?>
            <li class="<?php if($key==0) echo ' active' ?>">
                <?php if($params->get('itemImage') && isset($item->image)): ?>
                <a class="moduleItemImage" href="<?php echo $item->image; ?>" title="<?php echo JText::_('K2_CONTINUE_READING'); ?> &quot;
                    <?php echo K2HelperUtilities::cleanHtml($item->title); ?>&quot;">
                </a>
                <?php endif; ?>
            </li>
        <?php endforeach; ?>
		</ul>
	</div>
    <div id="pagination">
        <ul>
			<?php foreach ($items as $key=>$item): ?>
        	<li class="<?php if($key==0) echo ' active' ?>">
                <?php if($params->get('itemImage') && isset($item->image)): ?>
                <a class="moduleItemImage" href="<?php echo $item->image; ?>"></a>
                <?php endif; ?>
            </li>
        <?php endforeach; ?>
         </ul>
	</div>
    <ul id="caption">
    <?php foreach ($items as $key=>$item): ?>
		<li>
            
    		<!-- Plugins: BeforeDisplay -->
     		<?php echo $item->event->BeforeDisplay; ?>

    		<!-- K2 Plugins: K2BeforeDisplay -->
    		<?php echo $item->event->K2BeforeDisplay; ?>

    		<?php if($params->get('itemAuthorAvatar')): ?>
    			<a class="k2Avatar moduleItemAuthorAvatar" rel="author" href="<?php echo $item->authorLink; ?>">
				<img src="<?php echo $item->authorAvatar; ?>" alt="<?php echo $item->author; ?>" style="width:<?php echo $avatarWidth; ?>px;height:auto;" />
				</a>
    		<?php endif; ?>

   			<?php if($params->get('itemTitle')): ?>
    			<a class="moduleItemTitle" href="<?php echo $item->link; ?>"><?php echo $item->title; ?></a>
    		<?php endif; ?>

    		<?php if($params->get('itemAuthor')): ?>
    			<div class="moduleItemAuthor">
	      			<?php echo K2HelperUtilities::writtenBy($item->authorGender); ?>
                    
					<?php if(isset($item->authorLink)): ?>
						<a rel="author" href="<?php echo $item->authorLink; ?>"><?php echo $item->author; ?></a>
					<?php else: ?>
						<?php echo $item->author; ?>
					<?php endif; ?>
				</div>
			<?php endif; ?>

    		<!-- Plugins: AfterDisplayTitle -->
    		<?php echo $item->event->AfterDisplayTitle; ?>

    		<!-- K2 Plugins: K2AfterDisplayTitle -->
    		<?php echo $item->event->K2AfterDisplayTitle; ?>

    		<!-- Plugins: BeforeDisplayContent -->
    		<?php echo $item->event->BeforeDisplayContent; ?>

    		<!-- K2 Plugins: K2BeforeDisplayContent -->
    		<?php echo $item->event->K2BeforeDisplayContent; ?>

    		<?php if($params->get('itemIntroText')): ?>
      			<div class="itemCaption"><?php echo $item->introtext; ?></div>
   			<?php endif; ?>

    		<?php if($params->get('itemExtraFields') && count($item->extra_fields)): ?>
      			<div class="moduleItemExtraFields">
	      			<b><?php echo JText::_('K2_ADDITIONAL_INFO'); ?></b>
	      				<ul>
	        			<?php foreach ($item->extra_fields as $extraField): ?>
							<li class="type<?php echo ucfirst($extraField->type); ?> group<?php echo $extraField->group; ?>">
								<span class="moduleItemExtraFieldsLabel"><?php echo $extraField->name; ?></span>
								<span class="moduleItemExtraFieldsValue">
									<?php echo ($extraField->type=='date')?JHTML::_('date', $extraField->value, JText::_('K2_DATE_FORMAT_LC')):$extraField->value; ?>
                                </span>
								<div class="clr"></div>
							</li>
	        			<?php endforeach; ?>
	      				</ul>
      			</div>
   			<?php endif; ?>

    		<div class="clr"></div>

    		<?php if($params->get('itemVideo')): ?>
      			<div class="moduleItemVideo">
      				<?php echo $item->video ;?>
      				<span class="moduleItemVideoCaption"><?php echo $item->video_caption ;?></span>
      				<span class="moduleItemVideoCredits"><?php echo $item->video_credits ;?></span>
      			</div>
    		<?php endif; ?>

    		<div class="clr"></div>

    		<!-- Plugins: AfterDisplayContent -->
    		<?php echo $item->event->AfterDisplayContent; ?>

    		<!-- K2 Plugins: K2AfterDisplayContent -->
    		<?php echo $item->event->K2AfterDisplayContent; ?>

    		<?php if($params->get('itemDateCreated')): ?>
    			<span class="moduleItemDateCreated"><?php echo JText::_('K2_WRITTEN_ON') ;?> <?php echo JHTML::_('date', $item->created, JText::_('K2_DATE_FORMAT_LC2')); ?></span>
    		<?php endif; ?>

   			<?php if($params->get('itemCategory')): ?>
    			<?php echo JText::_('K2_IN') ;?> <a class="moduleItemCategory" href="<?php echo $item->categoryLink; ?>"><?php echo $item->categoryname; ?></a>
    		<?php endif; ?>

    		<?php if($params->get('itemTags') && count($item->tags)>0): ?>
      			<div class="moduleItemTags">
      				<b><?php echo JText::_('K2_TAGS'); ?>:</b>
        			<?php foreach ($item->tags as $tag): ?>
        				<a href="<?php echo $tag->link; ?>"><?php echo $tag->name; ?></a>
        			<?php endforeach; ?>
     			</div>
    		<?php endif; ?>

    		<?php if($params->get('itemAttachments') && count($item->attachments)): ?>
				<div class="moduleAttachments">
					<?php foreach ($item->attachments as $attachment): ?>
					<a title="<?php echo $attachment->titleAttribute; ?>" href="<?php echo JRoute::_('index.php?option=com_k2&view=item&task=download&id='.$attachment->id); ?>">
						<?php echo $attachment->title ; ?>
                    </a>
					<?php endforeach;?>
				</div>
   			<?php endif; ?>

			<?php if($params->get('itemCommentsCounter') && $componentParams->get('comments')): ?>		
				<?php if(!empty($item->event->K2CommentsCounter)):?>
					<!-- K2 Plugins: K2CommentsCounter -->
					<?php echo $item->event->K2CommentsCounter; ?>
				<?php else:?>
					<?php if($item->numOfComments>0): ?>
						<a class="moduleItemComments" href="<?php echo $item->link.'#itemCommentsAnchor'; ?>">
							<?php echo $item->numOfComments; ?> <?php if($item->numOfComments>1) echo JText::_('K2_COMMENTS'); else echo JText::_('K2_COMMENT'); ?>
						</a>
					<?php else: ?>
						<a class="moduleItemComments" href="<?php echo $item->link.'#itemCommentsAnchor'; ?>">
							<?php echo JText::_('K2_BE_THE_FIRST_TO_COMMENT'); ?>
						</a>
					<?php endif; ?>
				<?php endif; ?>
			<?php endif; ?>

			<?php if($params->get('itemHits')): ?>
				<span class="moduleItemHits">
					<?php echo JText::_('K2_READ'); ?> <?php echo $item->hits; ?> <?php echo JText::_('K2_TIMES'); ?>
				</span>
			<?php endif; ?>

			
			<?php if($params->get('itemReadMore') && $item->fulltext): ?>
				<div class="moduleItemReadMore-wrapper">
				<a class="moduleItemReadMore" href="<?php echo $item->link; ?>">
					<?php echo JText::_('K2_READ_MORE_SLIDER_THEME'); ?>
					<!-- Read more slider button translation can be found in the '/languages/en-GB/en-GB.tpl_theme###.ini' file -->
				</a>
				</div>
			<?php endif; ?>
			

    		<!-- Plugins: AfterDisplay -->
    		<?php echo $item->event->AfterDisplay; ?>

    		<!-- K2 Plugins: K2AfterDisplay -->
    		<?php echo $item->event->K2AfterDisplay; ?>
	
    	</li>
		<?php endforeach; ?>
        </ul>
     <?php endif; ?>
</div>

<?php
$document->addScript($gpath."/js/bgStretch.js");
?>

<script type="text/javascript">
$(function(){
	for(s=0;s<$('#caption li').length;s++){
		for(z=0;z<$('#caption li').eq(s).find('.itemCaption div').length;z++){
			var captionItemLength=$('#caption li').eq(s).find('.itemCaption div').eq(z).text().length
			var ch = []
			for(i=0;i<captionItemLength;i++){
				ch[i] = $('#caption li').eq(s).find('.itemCaption div').eq(z).text().charAt(i);
				ch[i]=$('<span></span>').text(ch[i])
			}
			$('#caption li').eq(s).find('.itemCaption div').eq(z).text('')
			for(i=0;i<captionItemLength;i++){
				$('#caption li').eq(s).find('.itemCaption div').eq(z).append(ch[i])
			}
		}
		$('#caption li').eq(s).hide()
	}
})
$(window).load(function(){
	var $slider_ul_id = $('#bgStretch'); //Please define slider items list ID
		var itemMaxLength=0
		$('#caption li').each(function(){
			if( $(this).find('.itemCaption span').length>itemMaxLength){itemMaxLength=$(this).find('.itemCaption span').length}
		})
	function hideCaption(n){
		if(!($.browser.msie&&$.browser.version<9)){
			$('#caption li .moduleItemReadMore').stop().animate({opacity:0})
			var caption_counter_hide = 0
			var setTimeout_caption_animate_hide=setTimeout(function() {caption_animate_hide(n)}, 50)
			function interval_caption_animate_hide(){
				clearTimeout(setTimeout_caption_animate_hide)
				var setTimeout_caption_animate_hide=setTimeout(function() {caption_animate_hide(n)}, 50)
			}
			function caption_animate_hide(n) {
				if(caption_counter_hide<itemMaxLength){
					$('#caption li').each(function(){
						caption_animate($(this).find('.itemCaption span').eq(caption_counter_hide),0)
						
					})
					interval_caption_animate_hide()
					caption_counter_hide++
				}
				else{
				$('#caption li').css({zIndex:1}).hide()
					clearTimeout(setTimeout_caption_animate_hide)
					showCaption(n)
				}
			}
			caption_animate_hide(n)
		}
		else{
			$('#caption li').css({zIndex:1}).hide()
			caption_animate_hide(n)
		}
	}
	function caption_animate(elem,op_val){
		elem.stop().animate({opacity:op_val},100)
	}
	function showCaption(n){
		$('#caption li').eq(n).css({zIndex:2}).show()
		if(!($.browser.msie&&$.browser.version<9)){
			$('#caption li').eq(n).find('.moduleItemReadMore').stop().animate({opacity:1})
			clearTimeout(setTimeout_caption_animate_show)
			var caption_counter_show = 0
			var setTimeout_caption_animate_show=setTimeout(function() {caption_animate_show(n)}, 50)
			function interval_caption_animate_show(){
				clearTimeout(setTimeout_caption_animate_show)
				var setTimeout_caption_animate_show=setTimeout(function() {caption_animate_show(n)}, 50)
			}
			function caption_animate_show(n) {
				if(caption_counter_show<$('#caption li').eq(n).find('.itemCaption span').length){
					caption_animate($('#caption li').eq(n).find('.itemCaption span').eq(caption_counter_show),1)
					interval_caption_animate_show()
					caption_counter_show++
				}
			}
			caption_animate_show(n)
		}
	}
	var old_n = 0
	$slider_ul_id.bgStretch({
		navs:$('#pagination').navs({autoPlay:10000}).navs(function(n){
			if(n==old_n&&n==0){
				old_n=1
				hideCaption(n)
			}
			else if(n>0){
				old_n=0
				hideCaption(n)
			}
		})
	})
	.sImg({
		spinner:$('<div class="spinner"></div>').css({opacity:.7}).hide()
	})
	$.when('.wrapper')
	.then(function(){
		$('#gspinner')
		.fadeOut()
	})
	
});
</script>