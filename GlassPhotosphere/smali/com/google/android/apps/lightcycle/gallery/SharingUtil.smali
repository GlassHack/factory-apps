.class public Lcom/google/android/apps/lightcycle/gallery/SharingUtil;
.super Ljava/lang/Object;
.source "SharingUtil.java"


# static fields
.field private static final LIVE_SHARE_URL:Ljava/lang/String; = "http://panoviewer.haeberling-testing.appspot.com/latest?action=add&url="

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->shareUrl(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static donatePanoToMaps(Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 3
    .param p0, "attributes"    # Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/lightcycle/util/ProgressCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "progressCallback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Ljava/lang/Void;>;"
    sget v0, Lcom/google/android/apps/lightcycle/R$string;->donating_to_maps:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onNewProgressMessage(Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$AlleycatRequestAttributes;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    return-void
.end method

.method private static getMetadataUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "panoUrl"    # Ljava/lang/String;

    .prologue
    .line 131
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 133
    .local v1, "lastIndexOffset":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "/g"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static shareForGlass(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p0, "urlToShare"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://panoviewer.haeberling-testing.appspot.com/latest?action=add&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "shareUrl":Ljava/lang/String;
    sget-object v3, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sharing URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v2, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;

    invoke-direct {v2, p1, v6}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;-><init>(Landroid/content/Context;Z)V

    .line 105
    .local v2, "task":Lcom/google/android/apps/lightcycle/util/HttpRequestTask;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "request":Lorg/apache/http/client/methods/HttpGet;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/client/methods/HttpUriRequest;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void
.end method

.method public static sharePano(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 1
    .param p0, "panoUrl"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/lightcycle/util/ProgressCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "progressCallback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->baseUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->triggerTiling(Ljava/lang/String;Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->baseUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->shareForGlass(Ljava/lang/String;Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onDone(Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 47
    :cond_0
    sget v0, Lcom/google/android/apps/lightcycle/R$string;->progress_shortening_pano_url:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onNewProgressMessage(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/SharingUtil$1;

    invoke-direct {v0, p2, p1}, Lcom/google/android/apps/lightcycle/gallery/SharingUtil$1;-><init>(Lcom/google/android/apps/lightcycle/util/ProgressCallback;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->getShortDogfoodUrl(Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto :goto_0
.end method

.method private static shareUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "urlToShare"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    sget v1, Lcom/google/android/apps/lightcycle/R$string;->share_pano_with:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method private static triggerTiling(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "panoUrl"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->getMetadataUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "metadataUrl":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "request":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;

    invoke-direct {v2, p1, v4}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;-><init>(Landroid/content/Context;Z)V

    .line 120
    .local v2, "task":Lcom/google/android/apps/lightcycle/util/HttpRequestTask;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/client/methods/HttpUriRequest;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    return-void
.end method
