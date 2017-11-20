.class public Lcom/google/android/apps/lightcycle/util/MetadataUtils;
.super Ljava/lang/Object;
.source "MetadataUtils.java"


# static fields
.field private static final EXIF_TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field private static final EXIF_TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field private static final META_CROPPED_AREA_FULL_PANO_HEIGHT:Ljava/lang/String; = "full_pano_height"

.field private static final META_CROPPED_AREA_FULL_PANO_WIDTH:Ljava/lang/String; = "full_pano_width"

.field private static final META_CROPPED_AREA_IMAGE_HEIGHT:Ljava/lang/String; = "cropped_area_height"

.field private static final META_CROPPED_AREA_IMAGE_WIDTH:Ljava/lang/String; = "cropped_area_width"

.field private static final META_CROPPED_AREA_LEFT:Ljava/lang/String; = "cropped_area_left"

.field private static final META_CROPPED_AREA_TOP:Ljava/lang/String; = "cropped_area_top"

.field private static final META_FIRST_PHOTO_TIME:Ljava/lang/String; = "first_photo_time"

.field private static final META_LAST_PHOTO_TIME:Ljava/lang/String; = "last_photo_time"

.field private static final META_LOC_ALTITUDE:Ljava/lang/String; = "location_altitude"

.field private static final META_LOC_LATITUDE:Ljava/lang/String; = "location_latitude"

.field private static final META_LOC_LONGITUDE:Ljava/lang/String; = "location_longitude"

.field private static final META_LOC_PROVIDER:Ljava/lang/String; = "location_provider"

.field private static final META_LOC_TIMESTAMP:Ljava/lang/String; = "location_time"

.field private static final META_POSE_HEADING:Ljava/lang/String; = "pose_heading"

.field private static final META_POSE_YAW_CORRECTION:Ljava/lang/String; = "yaw_correction_deg"

.field private static final META_SOURCE_PHOTOS_COUNT:Ljava/lang/String; = "source_photos_count"

.field private static final TAG:Ljava/lang/String; = "LightCycle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDoubleToDegreeFormat(D)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # D

    .prologue
    const/4 v5, 0x2

    .line 417
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4, v5}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "str":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "splits":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 420
    const/4 v3, 0x0

    .line 423
    :goto_0
    return-object v3

    .line 422
    :cond_0
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 423
    .local v0, "second":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getFirstJpegFileInDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "directory"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Lcom/google/android/apps/lightcycle/util/MetadataUtils$1;

    invoke-direct {v2}, Lcom/google/android/apps/lightcycle/util/MetadataUtils$1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 158
    .local v1, "imageFiles":[Ljava/io/File;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 159
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 161
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadMetadataFromFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "metadataFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    .line 380
    const/4 v3, 0x0

    .line 382
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 386
    .local v5, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 387
    const-string v7, ","

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "pair":[Ljava/lang/String;
    array-length v7, v2

    if-ne v7, v9, :cond_0

    .line 391
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 394
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v5    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 399
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v3, :cond_1

    .line 401
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_2
    move-object v5, v6

    .line 404
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-object v5

    .line 399
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz v4, :cond_3

    .line 401
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_4
    move-object v3, v4

    .line 404
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 396
    .end local v1    # "line":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 399
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    if-eqz v3, :cond_4

    .line 401
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_6
    move-object v5, v6

    .line 404
    goto :goto_3

    .line 399
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v3, :cond_5

    .line 401
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 404
    :cond_5
    :goto_8
    throw v6

    .line 402
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v6

    goto :goto_4

    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    goto :goto_2

    .local v0, "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_6

    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    goto :goto_8

    .line 399
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 396
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 394
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private static parseDateStamp(Ljava/util/Map$Entry;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 471
    :goto_0
    return-object v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "LightCycle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse date failed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,value:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseDouble(Ljava/util/Map$Entry;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 455
    :goto_0
    return-object v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "LightCycle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse double failed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,value:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 439
    :goto_0
    return-object v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "LightCycle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse integer failed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,value:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static writeExif(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 28
    .param p0, "imageFile"    # Ljava/lang/String;
    .param p1, "srcImageFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "metaValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v9, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 175
    .local v9, "exif":Landroid/media/ExifInterface;
    if-eqz p1, :cond_1

    .line 178
    new-instance v20, Landroid/media/ExifInterface;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 179
    .local v20, "srcExif":Landroid/media/ExifInterface;
    const-string v22, "Make"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 180
    .local v18, "make":Ljava/lang/String;
    const-string v22, "Make"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v18    # "make":Ljava/lang/String;
    .end local v20    # "srcExif":Landroid/media/ExifInterface;
    :goto_0
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 185
    .local v19, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 187
    const-string v22, "ImageWidth"

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v22, "ImageLength"

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 192
    .local v5, "dateTime":Ljava/util/Date;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v22, "yyyy:MM:dd HH:mm:ss"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .local v10, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "dateTimeStr":Ljava/lang/String;
    const-string v22, "DateTime"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v22, "DateTimeOriginal"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v22, "DateTimeDigitized"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v22, "Model"

    sget-object v23, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-eqz p2, :cond_9

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "altitude":Ljava/lang/Double;
    const/4 v14, 0x0

    .line 201
    .local v14, "latitude":Ljava/lang/Double;
    const/16 v17, 0x0

    .line 202
    .local v17, "longitude":Ljava/lang/Double;
    const/4 v3, 0x0

    .line 203
    .local v3, "date":Ljava/util/Date;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 204
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "location_altitude"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 205
    invoke-static {v8}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseDouble(Ljava/util/Map$Entry;)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1

    .line 182
    .end local v2    # "altitude":Ljava/lang/Double;
    .end local v3    # "date":Ljava/util/Date;
    .end local v5    # "dateTime":Ljava/util/Date;
    .end local v6    # "dateTimeStr":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "format":Ljava/text/SimpleDateFormat;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "latitude":Ljava/lang/Double;
    .end local v17    # "longitude":Ljava/lang/Double;
    .end local v19    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const-string v22, "Make"

    sget-object v23, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 243
    .end local v9    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v7

    .line 244
    .local v7, "e":Ljava/io/IOException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Write exif failed :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 246
    .end local v7    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 206
    .restart local v2    # "altitude":Ljava/lang/Double;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v5    # "dateTime":Ljava/util/Date;
    .restart local v6    # "dateTimeStr":Ljava/lang/String;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "exif":Landroid/media/ExifInterface;
    .restart local v10    # "format":Ljava/text/SimpleDateFormat;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v14    # "latitude":Ljava/lang/Double;
    .restart local v17    # "longitude":Ljava/lang/Double;
    .restart local v19    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "location_latitude"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 207
    invoke-static {v8}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseDouble(Ljava/util/Map$Entry;)Ljava/lang/Double;

    move-result-object v14

    goto :goto_1

    .line 208
    :cond_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "location_longitude"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 209
    invoke-static {v8}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseDouble(Ljava/util/Map$Entry;)Ljava/lang/Double;

    move-result-object v17

    goto :goto_1

    .line 210
    :cond_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "location_provider"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 211
    const-string v23, "GPSProcessingMethod"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 213
    :cond_5
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "location_time"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 214
    invoke-static {v8}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseDateStamp(Ljava/util/Map$Entry;)Ljava/util/Date;

    move-result-object v3

    goto/16 :goto_1

    .line 217
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    if-eqz v2, :cond_7

    .line 218
    const-string v23, "GPSAltitudeRef"

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpg-double v22, v24, v26

    if-gez v22, :cond_a

    const-string v22, "1"

    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_7
    if-eqz v14, :cond_8

    if-eqz v17, :cond_8

    .line 222
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->convertDoubleToDegreeFormat(D)Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, "latStr":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_b

    const-string v12, "N"

    .line 224
    .local v12, "latRef":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->convertDoubleToDegreeFormat(D)Ljava/lang/String;

    move-result-object v16

    .line 225
    .local v16, "lngStr":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_c

    const-string v15, "E"

    .line 226
    .local v15, "lngRef":Ljava/lang/String;
    :goto_5
    if-eqz v13, :cond_8

    if-eqz v16, :cond_8

    .line 227
    const-string v22, "GPSLatitude"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v22, "GPSLatitudeRef"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v22, "GPSLongitude"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v22, "GPSLongitudeRef"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .end local v12    # "latRef":Ljava/lang/String;
    .end local v13    # "latStr":Ljava/lang/String;
    .end local v15    # "lngRef":Ljava/lang/String;
    .end local v16    # "lngStr":Ljava/lang/String;
    :cond_8
    if-eqz v3, :cond_9

    .line 234
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v22, "yyyy:MM:dd"

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 235
    .local v4, "dateFormatter":Ljava/text/SimpleDateFormat;
    const-string v22, "GPSDateStamp"

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v22, "HH:mm:ss"

    invoke-direct/range {v21 .. v22}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    .local v21, "timeFormatter":Ljava/text/SimpleDateFormat;
    const-string v22, "GPSTimeStamp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v2    # "altitude":Ljava/lang/Double;
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormatter":Ljava/text/SimpleDateFormat;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "latitude":Ljava/lang/Double;
    .end local v17    # "longitude":Ljava/lang/Double;
    .end local v21    # "timeFormatter":Ljava/text/SimpleDateFormat;
    :cond_9
    invoke-virtual {v9}, Landroid/media/ExifInterface;->saveAttributes()V

    goto/16 :goto_2

    .line 218
    .restart local v2    # "altitude":Ljava/lang/Double;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v14    # "latitude":Ljava/lang/Double;
    .restart local v17    # "longitude":Ljava/lang/Double;
    :cond_a
    const-string v22, "0"

    goto/16 :goto_3

    .line 223
    .restart local v13    # "latStr":Ljava/lang/String;
    :cond_b
    const-string v12, "S"

    goto :goto_4

    .line 225
    .restart local v12    # "latRef":Ljava/lang/String;
    .restart local v16    # "lngStr":Ljava/lang/String;
    :cond_c
    const-string v15, "W"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public static writeMetadataFile(Ljava/lang/String;Ljava/util/List;)Z
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 78
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    .line 118
    :goto_0
    return v5

    .line 81
    :cond_1
    const/4 v3, 0x0

    .line 83
    .local v3, "metadataFile":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v3    # "metadataFile":Ljava/io/FileWriter;
    .local v4, "metadataFile":Ljava/io/FileWriter;
    :try_start_1
    const-string v8, "%s,%d\n"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "first_photo_time"

    aput-object v10, v9, v5

    const/4 v10, 0x1

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;

    iget-wide v11, v5, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->timestamp:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 86
    const-string v8, "%s,%d\n"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "last_photo_time"

    aput-object v10, v9, v5

    const/4 v10, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;

    iget-wide v11, v5, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->timestamp:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 88
    const-string v5, "%s,%d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "source_photos_count"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 90
    const-string v8, "%s,%d\n"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "pose_heading"

    aput-object v10, v9, v5

    const/4 v10, 0x1

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;

    iget v5, v5, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->poseHeading:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;

    iget-object v2, v5, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->location:Landroid/location/Location;

    .line 94
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_4

    .line 95
    const-string v5, "%s,%f\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "location_altitude"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 97
    const-string v5, "%s,%f\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "location_latitude"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 99
    const-string v5, "%s,%f\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "location_longitude"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 101
    const-string v5, "%s,%s\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "location_provider"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 103
    const-string v5, "%s,%d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "location_time"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    .end local v2    # "location":Landroid/location/Location;
    :cond_2
    if-eqz v4, :cond_3

    .line 115
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    move v5, v6

    .line 118
    goto/16 :goto_0

    .line 92
    .restart local v2    # "location":Landroid/location/Location;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 109
    .end local v1    # "i":I
    .end local v2    # "location":Landroid/location/Location;
    .end local v4    # "metadataFile":Ljava/io/FileWriter;
    .restart local v3    # "metadataFile":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not write metadata file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    if-eqz v3, :cond_5

    .line 115
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_4
    move v5, v7

    .line 118
    goto/16 :goto_0

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_6

    .line 115
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 118
    :cond_6
    :goto_6
    throw v5

    .line 116
    .end local v3    # "metadataFile":Ljava/io/FileWriter;
    .restart local v1    # "i":I
    .restart local v4    # "metadataFile":Ljava/io/FileWriter;
    :catch_1
    move-exception v5

    goto :goto_2

    .end local v1    # "i":I
    .end local v4    # "metadataFile":Ljava/io/FileWriter;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "metadataFile":Ljava/io/FileWriter;
    :catch_2
    move-exception v5

    goto :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_6

    .line 113
    .end local v3    # "metadataFile":Ljava/io/FileWriter;
    .restart local v4    # "metadataFile":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "metadataFile":Ljava/io/FileWriter;
    .restart local v3    # "metadataFile":Ljava/io/FileWriter;
    goto :goto_5

    .line 109
    .end local v3    # "metadataFile":Ljava/io/FileWriter;
    .restart local v4    # "metadataFile":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "metadataFile":Ljava/io/FileWriter;
    .restart local v3    # "metadataFile":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method public static writeMetadataIntoJpegFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "imageFile"    # Ljava/lang/String;
    .param p1, "metadataFile"    # Ljava/lang/String;
    .param p2, "sessionPath"    # Ljava/lang/String;
    .param p3, "isPanorama"    # Z

    .prologue
    .line 134
    if-eqz p0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->loadMetadataFromFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 138
    .local v0, "metaValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->getFirstJpegFileInDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "srcImageFile":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->writeExif(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    invoke-static {p0, p3, v0}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->writeXmpMetadata(Ljava/lang/String;ZLjava/util/Map;)V

    goto :goto_0
.end method

.method private static writeXmpMetadata(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 27
    .param p0, "imageFile"    # Ljava/lang/String;
    .param p1, "isPanorama"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "metaValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v22

    .line 259
    .local v22, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "UsePanoramaViewer"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "ProjectionType"

    const-string v25, "equirectangular"

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    if-eqz p2, :cond_12

    .line 265
    const/4 v9, 0x0

    .line 266
    .local v9, "croppedAreaWidth":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 267
    .local v6, "croppedAreaHeight":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 268
    .local v5, "croppedAreaFullPanoWidth":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 269
    .local v4, "croppedAreaFullPanoHeight":Ljava/lang/Integer;
    const/4 v8, 0x0

    .line 270
    .local v8, "croppedAreaTop":Ljava/lang/Integer;
    const/4 v7, 0x0

    .line 271
    .local v7, "croppedAreaLeft":Ljava/lang/Integer;
    const/4 v12, 0x0

    .line 272
    .local v12, "firstPhotoDate":Ljava/util/Date;
    const/16 v16, 0x0

    .line 273
    .local v16, "lastPhotoDate":Ljava/util/Date;
    const/16 v20, 0x0

    .line 274
    .local v20, "sourcePhotosCount":Ljava/lang/Integer;
    const/16 v18, 0x0

    .line 275
    .local v18, "poseHeading":Ljava/lang/Integer;
    const/16 v19, 0x0

    .line 276
    .local v19, "poseYawCorrection":Ljava/lang/Integer;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 277
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "full_pano_width"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 278
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 279
    :cond_1
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "full_pano_height"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 281
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 282
    :cond_2
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "cropped_area_width"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 283
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 284
    :cond_3
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "cropped_area_height"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 285
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 286
    :cond_4
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "cropped_area_top"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 287
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 288
    :cond_5
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "cropped_area_left"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 289
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    .line 290
    :cond_6
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "first_photo_time"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 291
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseDateStamp(Ljava/util/Map$Entry;)Ljava/util/Date;

    move-result-object v12

    goto/16 :goto_0

    .line 292
    :cond_7
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "last_photo_time"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 293
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseDateStamp(Ljava/util/Map$Entry;)Ljava/util/Date;

    move-result-object v16

    goto/16 :goto_0

    .line 294
    :cond_8
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "source_photos_count"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 295
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v20

    goto/16 :goto_0

    .line 296
    :cond_9
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "pose_heading"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 297
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_0

    .line 298
    :cond_a
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "yaw_correction_deg"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 299
    invoke-static {v11}, Lcom/google/android/apps/lightcycle/util/MetadataUtils;->parseInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v19

    goto/16 :goto_0

    .line 302
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    if-eqz v9, :cond_c

    if-eqz v6, :cond_c

    .line 303
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "CroppedAreaImageHeightPixels"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "CroppedAreaImageWidthPixels"

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    :cond_c
    if-eqz v5, :cond_d

    if-eqz v4, :cond_d

    .line 309
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "FullPanoHeightPixels"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "FullPanoWidthPixels"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    :cond_d
    if-eqz v8, :cond_e

    if-eqz v7, :cond_e

    .line 317
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "CroppedAreaTopPixels"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 319
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "CroppedAreaLeftPixels"

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    :cond_e
    if-eqz v12, :cond_f

    .line 323
    new-instance v21, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    const-string v23, "GMT"

    invoke-static/range {v23 .. v23}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    .line 325
    .local v21, "xmpDate":Lcom/adobe/xmp/XMPDateTime;
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "FirstPhotoDate"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    .end local v21    # "xmpDate":Lcom/adobe/xmp/XMPDateTime;
    :cond_f
    if-eqz v16, :cond_10

    .line 329
    new-instance v21, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    const-string v23, "GMT"

    invoke-static/range {v23 .. v23}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    .line 331
    .restart local v21    # "xmpDate":Lcom/adobe/xmp/XMPDateTime;
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "LastPhotoDate"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)V

    .line 334
    .end local v21    # "xmpDate":Lcom/adobe/xmp/XMPDateTime;
    :cond_10
    if-eqz v20, :cond_11

    .line 335
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "SourcePhotosCount"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    :cond_11
    if-eqz v18, :cond_12

    if-eqz v19, :cond_12

    .line 339
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "PoseHeadingDegrees"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x2d0

    move/from16 v25, v0

    move/from16 v0, v25

    rem-int/lit16 v0, v0, 0x168

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-interface/range {v22 .. v26}, Lcom/adobe/xmp/XMPMeta;->setPropertyDouble(Ljava/lang/String;Ljava/lang/String;D)V

    .line 346
    .end local v4    # "croppedAreaFullPanoHeight":Ljava/lang/Integer;
    .end local v5    # "croppedAreaFullPanoWidth":Ljava/lang/Integer;
    .end local v6    # "croppedAreaHeight":Ljava/lang/Integer;
    .end local v7    # "croppedAreaLeft":Ljava/lang/Integer;
    .end local v8    # "croppedAreaTop":Ljava/lang/Integer;
    .end local v9    # "croppedAreaWidth":Ljava/lang/Integer;
    .end local v12    # "firstPhotoDate":Ljava/util/Date;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "lastPhotoDate":Ljava/util/Date;
    .end local v18    # "poseHeading":Ljava/lang/Integer;
    .end local v19    # "poseYawCorrection":Ljava/lang/Integer;
    .end local v20    # "sourcePhotosCount":Ljava/lang/Integer;
    :cond_12
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 347
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 349
    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 350
    .local v15, "imageWidth":I
    move-object/from16 v0, v17

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 355
    .local v14, "imageHeight":I
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "LargestValidInteriorRectLeft"

    const/16 v25, 0x0

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "LargestValidInteriorRectTop"

    const/16 v25, 0x0

    invoke-interface/range {v22 .. v25}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "LargestValidInteriorRectWidth"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2, v15}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    const-string v23, "http://ns.google.com/photos/1.0/panorama/"

    const-string v24, "LargestValidInteriorRectHeight"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2, v14}, Lcom/adobe/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/xmp/XmpUtil;->writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    move-result v23

    if-nez v23, :cond_13

    .line 365
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Write XMP meta to file failed:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v14    # "imageHeight":I
    .end local v15    # "imageWidth":I
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_13
    :goto_1
    return-void

    .line 367
    :catch_0
    move-exception v10

    .line 368
    .local v10, "e":Lcom/adobe/xmp/XMPException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Set xmp property failed:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Lcom/adobe/xmp/XMPException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
