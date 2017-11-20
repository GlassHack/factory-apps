.class final Lcom/google/android/youtube/core/converter/http/fj;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 4

    .prologue
    .line 359
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 360
    new-instance v2, Lcom/google/android/youtube/core/model/Stream$Builder;

    invoke-direct {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;-><init>()V

    .line 361
    const-string v1, "type"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Stream$Builder;

    .line 362
    const-string v1, "url"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    .line 363
    const-string v1, "yt:format"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;I)I

    move-result v1

    .line 364
    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat(I)Lcom/google/android/youtube/core/model/Stream$Builder;

    .line 365
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/ed;->a()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 366
    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->quality(Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Builder;

    .line 367
    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->addStream(Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 368
    return-void

    .line 366
    :cond_0
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0
.end method
