.class final Lcom/google/android/youtube/core/converter/http/bl;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Video$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 92
    const-class v1, Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    .line 93
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->video(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    .line 94
    return-void
.end method
