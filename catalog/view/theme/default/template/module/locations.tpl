<?php if($locations){ ?>
<style type="text/css">
#map-box{
    width: 100%;
    height: 500px;
}
</style>
<h3 class="map_title"><?php echo $heading_title; ?></h3>
<div id="map-box"></div>
<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<script type="text/javascript">
<!--
    ymaps.ready(function(){
        var officeMap = new ymaps.Map("map-box", {
            center: [<?php echo $city_lat; ?>, <?php echo $city_lon; ?>],
            zoom: 10,
        });
        officeMap.behaviors.disable('scrollZoom');
        myGeoObjects = [];
    
    <?php $i=0; foreach($locations as $loc){ ?>
        myGeoObjects[<?php echo $i; ?>] = new ymaps.GeoObject({
            geometry: { type: "Point", coordinates: [<?php echo $loc['geocode']; ?>] },
            properties: {
                clusterCaption: '<?php echo $loc['name']; ?>',
                balloonContentBody: '<?php echo $loc['address'].'<br>'.$loc['telephone'].'<br>'.$loc['open'].'<br>'.$loc['comment']; ?>'
            }
        });
    <?php $i++; } ?>
    
        var clusterer = new ymaps.Clusterer({ clusterDisableClickZoom: true });
        clusterer.add(myGeoObjects);
        officeMap.geoObjects.add(clusterer);

    });
-->
</script>
<?php } ?>