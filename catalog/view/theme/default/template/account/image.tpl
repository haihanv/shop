<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
  
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  
  </div>
  <h1><?php echo $text_image; ?></h1>
  <div class="customer-image">
  <?php if($images) { ?>
	<table width="100%" cellpadding="0" cellspacing="0">
		<tr>
			<th width="50%"><?php echo $text_customer_image; ?></th>
			<th><?php echo $text_date_added; ?></th>
		</tr>
		<?php foreach($images as $image) { ?>
		<tr>
			<td><img src="<?php echo $image['image']; ?>" /></td>
			<td><?php echo $image['date_added']; ?></td>
		</tr>
		<?php } ?>
	</table>
  <?php }else { ?>
  	<?php echo $text_no_image; ?>
  <?php } ?>
  </div>

<?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 