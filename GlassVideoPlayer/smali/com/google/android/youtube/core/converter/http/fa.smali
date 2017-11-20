.class final Lcom/google/android/youtube/core/converter/http/fa;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/google/android/youtube/core/model/BatchEntry$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/BatchEntry$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 313
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Video$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 318
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 319
    const-class v1, Lcom/google/android/youtube/core/model/BatchEntry$Builder;

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/utils/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/BatchEntry$Builder;

    .line 321
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->setResult(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/BatchEntry$Builder;

    .line 325
    :cond_0
    const-class v0, Lcom/google/android/youtube/core/model/f;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/f;

    .line 326
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->build()Lcom/google/android/youtube/core/model/BatchEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/f;->a(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/f;

    .line 327
    return-void
.end method
