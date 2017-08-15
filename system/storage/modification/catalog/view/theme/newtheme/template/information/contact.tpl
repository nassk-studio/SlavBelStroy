<?php echo $header; ?>
<style type="text/css">
  .col-map {
    padding: 0;
  }
.contact-container {
  padding: 0;
}

</style>

<div class="container contact-container">
<div class="row">
<div class="col-md-offset-2 col-md-10 col-map">
<div id="map" style="width: 100%; height: 500px;"></div>
</div>
</div>
<!--   <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul> -->
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="col-md-offset-2 col-md-10">
      <?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
<!--             <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?> -->

<!-- Вёрстка -->

            <div class="col-md-5">
            <strong><?php echo $store; ?></strong><br />
              <h1>Адрес:</h1>
              <address>
              <?php echo $address; ?>
              </address>
              <span><?php echo $email; ?></span>
              <br />
              <strong><?php echo $text_telephone; ?></strong><br>
              <h2>Телефоны</h2>
              <div class="telephone-row first">
              <div class="telephone-col">
              <a>Отдел опт. продаж</a>
              <?php echo $telephone; ?><br />

					<!--additional-phones-->
					<!--additional-phones-->
				
              <?php echo $telephone2; ?><br />
              <?php echo $telephone3; ?><br />
              <?php echo $telephone4; ?><br />
              <a>Отдел розн. продаж</a>
              <?php echo $telephone5; ?><br />
              <?php echo $telephone6; ?><br />
              <?php echo $telephone7; ?><br />
              </div>
              </div>
              <div class="telephone-col">
              <a>Директор</a>
              <?php echo $telephone8; ?><br />
              <?php echo $telephone9; ?><br />
              <a>Бухгалтерия</a>
              <?php echo $telephone10; ?><br />
              <br />
              </div>
            </div>
    <div class="col-md-5">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="Ваше имя" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="E-mail" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-10">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
            </div>
          </div>
          <?php echo $captcha; ?>
        </fieldset>
        <div class="buttons">
          <div class="">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
    </div>
<!-- Вёрстка -->


<!--               <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <?php echo $fax; ?>
              <?php } ?> -->
            
<!--             <div class="col-sm-3">
              <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <?php echo $open; ?><br />
              <br />
              <?php } ?>
              <?php if ($comment) { ?>
              <strong><?php echo $text_comment; ?></strong><br />
              <?php echo $comment; ?>
              <?php } ?>
            </div> -->
          </div>
        </div>
      </div>
      <!-- <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-10">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
            </div>
          </div>
          <?php echo $captcha; ?>
        </fieldset>
        <div class="buttons">
          <div class="pull-right">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form> -->
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
