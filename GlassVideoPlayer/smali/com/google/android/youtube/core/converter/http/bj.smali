.class final Lcom/google/android/youtube/core/converter/http/bj;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method

.method private static a(Ljava/util/Set;)Z
    .locals 3

    .prologue
    .line 56
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 57
    iget v0, v0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_0

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 47
    const-class v0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->build()Lcom/google/android/youtube/core/model/LiveEvent;

    move-result-object v1

    .line 48
    const-class v0, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Page$Builder;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/LiveEvent;->isLiveNow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/android/youtube/core/converter/http/bj;->a(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->addEntry(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 53
    :cond_1
    return-void
.end method
