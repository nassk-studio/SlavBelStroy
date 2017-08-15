<?php echo $header; ?>
<style type="text/css">
    .bg-video {
        height: auto;
        padding: 0;
        z-index: -20;
    }
    .sect {
        height: 500px;
    }
    .sect-1 {
        height: 150px;
        margin-top: -6px;
    }
    .home-page .container {
        padding: 0;
    }
</style>
<div class="home-page">
    <div class="container">
        <div class="row">
            <!-- <div class="bg-opacity"></div> -->
            <div class="col-md-12 bg-video">
            </div>
            <div class="border-home"><h1>Гидроизоляционные <br /> и герметизирующие <br /> материалы</h1></div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-2 sect-1">
            </div>
        </div>
    </div>
    dasdsadas
</div>
</div>
    <script>
      $(document).ready(function() {
        var videobackground = new $.backgroundVideo($('.bg-video'), {
          "align": "centerXY",
          "width": 1920,
          "height": 1080,
          "path": "video/",
          "filename": "v1",
          "types": ["mp4","ogg","webm"],
          "preload": true,
          "autoplay": false,
          "loop": true//true
      });
    });
</script>
<?php echo $footer; ?>