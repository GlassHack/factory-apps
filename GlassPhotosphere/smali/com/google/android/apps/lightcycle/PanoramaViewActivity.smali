.class public Lcom/google/android/apps/lightcycle/PanoramaViewActivity;
.super Landroid/app/Activity;
.source "PanoramaViewActivity.java"


# static fields
.field private static final DOGFOOD_URL:Ljava/lang/String; = "https://panoramas.googleplex.com"

.field public static final FILENAME_EXTRA:Ljava/lang/String; = "filename"

.field private static final GOO_GL:Ljava/lang/String; = "http://goo.gl/"

.field private static final PANO_URL_PARAM:Ljava/lang/String; = "pano"

.field private static final SHORT_URL:Ljava/lang/String; = "https://panoramas.googleplex.com/s/"

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_FILE_NAME:Ljava/lang/String; = "temp_pano.jpg"


# instance fields
.field protected mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->loadAndShowUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fetchSharedPanoFile(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 5
    .param p1, "landingPageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p2, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getMediumSizePanoUrlFromLandingPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "mediumSizePanoUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->showLoadingErrorAndExit()V

    .line 441
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "temp_pano.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 418
    .local v2, "tempFile":Ljava/io/File;
    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Ljava/lang/String;Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 440
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static getMediumSizePanoUrlFromLandingPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "landingPageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 456
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .local v2, "landingPageUri":Ljava/net/URI;
    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 466
    .local v7, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v5, 0x0

    .line 467
    .local v5, "panoBaseUrl":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    .line 468
    .local v6, "parameter":Lorg/apache/http/NameValuePair;
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pano"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 469
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 473
    .end local v6    # "parameter":Lorg/apache/http/NameValuePair;
    :cond_1
    if-nez v5, :cond_2

    .line 486
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "landingPageUri":Ljava/net/URI;
    .end local v5    # "panoBaseUrl":Ljava/lang/String;
    .end local v7    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    return-object v4

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v9, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 477
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "landingPageUri":Ljava/net/URI;
    .restart local v5    # "panoBaseUrl":Ljava/lang/String;
    .restart local v7    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    const/16 v9, 0x2f

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 478
    .local v3, "lastSlash":I
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 482
    .local v8, "suffix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/s2048"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "mediumSizeUrl":Ljava/lang/String;
    const-string v9, "https://"

    const-string v10, "http://"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 485
    sget-object v9, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Medium Size URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSendImage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 220
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 221
    .local v0, "imageUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 222
    const-string v1, "Got filename from Send intent"

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getViewImage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 236
    .local v0, "imageUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 237
    const-string v1, "URI is null!"

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 242
    const-string v1, ""

    :goto_0
    return-object v1

    .line 239
    :cond_0
    const-string v1, "Got filename from View intent"

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isGlassDemoMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 508
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 509
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.apps.lightcycle.glass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 514
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isImageUsablePanorama(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAndShowUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "dogfoodUrl"    # Ljava/lang/String;

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->showLoadingErrorAndExit()V

    .line 268
    :goto_0
    return-void

    .line 258
    :cond_0
    sget v1, Lcom/google/android/apps/lightcycle/R$string;->panorama_downloading_panorama:I

    invoke-static {v1, p0}, Lcom/google/android/apps/lightcycle/util/Dialogs;->createProgressDialog(ILandroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 260
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 261
    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$2;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->fetchSharedPanoFile(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto :goto_0
.end method

.method private onImageLoadingError(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 381
    const/4 v0, -0x1

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$5;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V

    invoke-static {v0, p1, p0, v1}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 387
    return-void
.end method

.method private showLoadingErrorAndExit()V
    .locals 3

    .prologue
    .line 493
    const/4 v0, -0x1

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->panorama_unable_to_load_photo:I

    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$7;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$7;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V

    invoke-static {v0, v1, p0, v2}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 500
    return-void
.end method

.method private writeStreamToTempFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "temp_pano.jpg"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 526
    .local v5, "tempFile":Ljava/io/File;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 527
    .local v4, "os":Ljava/io/OutputStream;
    const/16 v1, 0x1000

    .line 528
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 529
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 530
    .local v3, "len":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 531
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 534
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "filename":Ljava/lang/String;
    sget-object v6, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrote stream to temporary file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-object v2
.end method


# virtual methods
.method protected getImageFilename(Landroid/content/Intent;)Ljava/lang/String;
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 114
    .local v10, "uri":Landroid/net/Uri;
    const-string v12, "filename"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "imageFilename":Ljava/lang/String;
    if-nez v10, :cond_6

    .line 120
    if-nez v6, :cond_7

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "type":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Intent : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 124
    const-string v12, "android.intent.action.VIEW"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 125
    if-eqz v9, :cond_1

    .line 127
    const-string v12, "image/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 128
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getViewImage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 169
    :cond_0
    :goto_0
    if-nez v6, :cond_5

    .line 170
    sget v12, Lcom/google/android/apps/lightcycle/R$string;->panorama_unable_to_load_photo:I

    invoke-direct {p0, v12}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->onImageLoadingError(I)V

    .line 192
    .end local v0    # "action":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    :goto_1
    return-object v11

    .line 131
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v9    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "dataString":Ljava/lang/String;
    const-string v12, "https://panoramas.googleplex.com/s/"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 134
    sget v12, Lcom/google/android/apps/lightcycle/R$string;->panorama_expanding_short_url:I

    invoke-static {v12, p0}, Lcom/google/android/apps/lightcycle/util/Dialogs;->createProgressDialog(ILandroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 136
    .local v2, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 138
    const-string v12, "https://panoramas.googleplex.com/s/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "token":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://goo.gl/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "gooGlUrl":Ljava/lang/String;
    new-instance v12, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;

    invoke-direct {v12, p0, v2}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$1;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Landroid/app/ProgressDialog;)V

    invoke-static {p0, v5, v12}, Lcom/google/android/apps/lightcycle/util/ExpandShortenedUrlTask;->expandAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto :goto_1

    .line 149
    .end local v2    # "dialog":Landroid/app/ProgressDialog;
    .end local v5    # "gooGlUrl":Ljava/lang/String;
    .end local v8    # "token":Ljava/lang/String;
    :cond_2
    const-string v12, "https://panoramas.googleplex.com"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 151
    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->loadAndShowUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 155
    .end local v1    # "dataString":Ljava/lang/String;
    :cond_3
    const-string v12, "android.intent.action.SEND"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v9, :cond_4

    .line 157
    const-string v12, "image/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 158
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getSendImage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 164
    .local v4, "extras":Landroid/os/Bundle;
    const-string v12, "filename"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    const-string v12, "Got filename from intent extras."

    invoke-static {v12}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_5
    invoke-direct {p0, v6}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isImageUsablePanorama(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 178
    sget v12, Lcom/google/android/apps/lightcycle/R$string;->panorama_photo_is_not_a_pano:I

    invoke-direct {p0, v12}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->onImageLoadingError(I)V

    goto :goto_1

    .line 184
    .end local v0    # "action":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 185
    .local v7, "is":Ljava/io/InputStream;
    invoke-direct {p0, v7}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->writeStreamToTempFile(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .end local v7    # "is":Ljava/io/InputStream;
    :cond_7
    move-object v11, v6

    .line 192
    goto/16 :goto_1

    .line 186
    :catch_0
    move-exception v3

    .line 187
    .local v3, "e":Ljava/io/IOException;
    sget-object v12, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    const-string v13, "Could not open file. "

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 202
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, "proj":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 203
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 204
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 205
    const-string v0, ""

    .line 210
    :goto_0
    return-object v0

    .line 207
    :cond_0
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 209
    .local v6, "columnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isGlassDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->processMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->setIntent(Landroid/content/Intent;)V

    .line 350
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 365
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->preventStart()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->finish()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/UiUtil;->switchSystemUiToLightsOut(Landroid/view/Window;)V

    .line 91
    new-instance v2, Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 93
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/util/UiUtil;->lockCurrentScreenOrientation(Landroid/app/Activity;)V

    .line 96
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 99
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 100
    .local v1, "pm":Landroid/os/PowerManager;
    const v2, 0x2000001a

    sget-object v3, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getImageFilename(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "imageFilename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->showFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected preventStart()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method protected showFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "imageFilename"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 278
    sget-object v9, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempting to show panorama : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$3;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V

    .line 286
    .local v1, "finishActivityCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v4

    .line 287
    .local v4, "panoMetadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    if-nez v4, :cond_0

    .line 288
    sget v7, Lcom/google/android/apps/lightcycle/R$string;->panorama_cannot_display_pano:I

    sget v8, Lcom/google/android/apps/lightcycle/R$string;->panorama_image_doesnt_contain_metadata:I

    invoke-static {v7, v8, p0, v1}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 334
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 296
    sget-object v7, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not load file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget v7, Lcom/google/android/apps/lightcycle/R$string;->panorama_cannot_display_pano:I

    sget v8, Lcom/google/android/apps/lightcycle/R$string;->panorama_image_file_could_not_be_read:I

    invoke-static {v7, v8, p0, v1}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto :goto_0

    .line 302
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_3

    move v6, v7

    .line 303
    .local v6, "useLegacyTileProvider":Z
    :goto_1
    if-eqz v6, :cond_4

    new-instance v5, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;

    invoke-direct {v5, v2}, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;-><init>(Ljava/io/File;)V

    .line 306
    .local v5, "tileProvider":Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    :goto_2
    const/4 v0, 0x1

    .line 307
    .local v0, "enableIntroAnimation":Z
    new-instance v9, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    new-instance v10, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-direct {v10, v5, v4}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;-><init>(Lcom/google/android/apps/lightcycle/viewer/TileProvider;Lcom/google/android/apps/lightcycle/util/PanoMetadata;)V

    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isGlassDemoMode()Z

    move-result v11

    if-nez v11, :cond_5

    :goto_3
    invoke-direct {v9, p0, v10, v7}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;Z)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    .line 311
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->isGlassDemoMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 313
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    new-instance v8, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;

    invoke-direct {v8, p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;-><init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V

    invoke-virtual {v7, v8}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setAutoRotationCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 329
    :cond_2
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {p0, v7}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->setContentView(Landroid/view/View;)V

    .line 330
    new-instance v3, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v3, v7, v8}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;-><init>(Landroid/view/Display;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 333
    .local v3, "orientationDetector":Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    goto :goto_0

    .end local v0    # "enableIntroAnimation":Z
    .end local v3    # "orientationDetector":Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
    .end local v5    # "tileProvider":Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    .end local v6    # "useLegacyTileProvider":Z
    :cond_3
    move v6, v8

    .line 302
    goto :goto_1

    .line 303
    .restart local v6    # "useLegacyTileProvider":Z
    :cond_4
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->fromFile(Ljava/io/File;)Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-result-object v5

    goto :goto_2

    .restart local v0    # "enableIntroAnimation":Z
    .restart local v5    # "tileProvider":Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    :cond_5
    move v7, v8

    .line 307
    goto :goto_3
.end method
