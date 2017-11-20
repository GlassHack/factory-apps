.class public Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;
.super Ljava/lang/Object;
.source "UploadPhotoUtil.java"


# static fields
.field private static final BASE_USER_URL_FORMAT:Ljava/lang/String; = "https://picasaweb.google.com/data/feed/api/user/{UID}"

.field private static final LIGHTCYCLE_ALBUM_NAME:Ljava/lang/String; = "My Panoramas"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/apache/http/HttpEntity;
    .param p2, "x2"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .param p3, "x3"    # Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->createAlbumAndUpload(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/apache/http/HttpEntity;
    .param p3, "x3"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .param p4, "x4"    # Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->uploadPhotoToAlbum(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/util/Callback;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->getLightcycleAlbumUrl(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/Callback;)V

    return-void
.end method

.method public static createAlbum(Lcom/google/android/apps/lightcycle/util/Callback;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;)V
    .locals 10
    .param p1, "context"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Boolean;>;"
    const-string v5, "https://picasaweb.google.com/data/feed/api/user/{UID}"

    const-string v6, "{UID}"

    iget-object v7, p1, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->accountName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "createAlbumUrl":Ljava/lang/String;
    const-string v5, "My Panoramas"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "panorama"

    iget-object v9, p1, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->getAlbumCreateXml(Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "requestContent":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .local v2, "entity":Lorg/apache/http/entity/StringEntity;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, "request":Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Content-Type"

    const-string v6, "application/atom+xml"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GoogleLogin auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->authToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 174
    new-instance v5, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;

    new-instance v6, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$4;

    invoke-direct {v6, p0}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$4;-><init>(Lcom/google/android/apps/lightcycle/util/Callback;)V

    iget-object v7, p1, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;-><init>(Lcom/google/android/apps/lightcycle/util/Callback;Landroid/content/Context;)V

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v5, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static createAlbumAndUpload(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "context"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;",
            "Lcom/google/android/apps/lightcycle/util/ProgressCallback",
            "<",
            "Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "callback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;>;"
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->progress_creating_album:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onNewProgressMessage(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;-><init>(Lcom/google/android/apps/lightcycle/util/ProgressCallback;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-static {v0, p2}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->createAlbum(Lcom/google/android/apps/lightcycle/util/Callback;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;)V

    .line 109
    return-void
.end method

.method private static getAlbumCreateXml(Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "albumName"    # Ljava/lang/String;
    .param p1, "timestamp"    # J
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    :try_start_0
    sget v2, Lcom/google/android/apps/lightcycle/R$raw;->picasa_create_album_request:I

    invoke-static {p4, v2}, Lcom/google/android/apps/lightcycle/util/ResourceUtil;->getRawResourceAsString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "xml":Ljava/lang/String;
    const-string v2, "{ALBUM_NAME}"

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v2, "{TIMESTAMP}"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v2, "{KEYWORDS}"

    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    .end local v1    # "xml":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getLightcycleAlbumUrl(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 5
    .param p0, "context"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    const-string v2, "https://picasaweb.google.com/data/feed/api/user/{UID}"

    const-string v3, "{UID}"

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "fetchAlbumsUrl":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleLogin auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->authToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v2, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;

    const-string v3, "My Panoramas"

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v4}, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;-><init>(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/gallery/request/GetAlbumUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-void
.end method

.method public static uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "context"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;",
            "Lcom/google/android/apps/lightcycle/util/ProgressCallback",
            "<",
            "Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "callback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;>;"
    iget-object v0, p2, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->progress_finding_album:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onNewProgressMessage(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    invoke-static {p2, v0}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->getLightcycleAlbumUrl(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 67
    return-void
.end method

.method private static uploadPhotoToAlbum(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 4
    .param p0, "albumUrl"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .param p3, "context"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;",
            "Lcom/google/android/apps/lightcycle/util/ProgressCallback",
            "<",
            "Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p4, "callback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;>;"
    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Picasa URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "request":Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Content-Type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "Slug"

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->authToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 132
    iget-object v1, p3, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/lightcycle/R$string;->progress_uploading_pano:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onNewProgressMessage(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;

    new-instance v2, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$3;

    invoke-direct {v2, p3, p4}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$3;-><init>(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    iget-object v3, p3, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;-><init>(Lcom/google/android/apps/lightcycle/util/Callback;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-void
.end method
