.class final Lcom/google/android/youtube/core/converter/http/en;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 4

    .prologue
    .line 509
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 510
    const-string v1, "rel"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/ed;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    const-string v2, "href"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 513
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.related"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 514
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    const-string v3, "edit"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 516
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 517
    :cond_2
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.ratings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 518
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 519
    :cond_3
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.captionTracks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 520
    const-string v1, "true"

    const-string v3, "yt:hasEntries"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 523
    :cond_4
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.trailers"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 524
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 525
    :cond_5
    const-string v3, "http://gdata.youtube.com/schemas/2007#live.event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 526
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 527
    :cond_6
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.show"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 528
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 529
    :cond_7
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.season"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0
.end method
