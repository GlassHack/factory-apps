.class final Lcom/google/android/youtube/core/converter/http/fk;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field private final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/google/android/youtube/core/converter/http/fk;->a:Z

    .line 370
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 5

    .prologue
    .line 373
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 374
    const-string v1, "yt:name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    const-string v2, "url"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 376
    const-string v3, "poster"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->defaultThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 393
    :cond_2
    :goto_1
    const-string v3, "hqdefault"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 394
    iget-boolean v4, p0, Lcom/google/android/youtube/core/converter/http/fk;->a:Z

    if-eqz v4, :cond_6

    .line 396
    if-eqz v3, :cond_0

    .line 397
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 382
    :cond_3
    const-string v3, "mqdefault"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 383
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->mqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_1

    .line 384
    :cond_4
    const-string v3, "hqdefault"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 385
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_1

    .line 386
    :cond_5
    const-string v3, "sddefault"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->sdThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_1

    .line 401
    :cond_6
    if-nez v3, :cond_0

    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video$Builder;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 402
    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0
.end method
