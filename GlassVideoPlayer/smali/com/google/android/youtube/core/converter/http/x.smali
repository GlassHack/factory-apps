.class public final Lcom/google/android/youtube/core/converter/http/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/converter/http/dg;->a(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;)V

    .line 26
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/converter/http/x;->b(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private static b(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/entry/yt:channelStatistics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/converter/http/y;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/y;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/entry/media:group/media:thumbnail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/z;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/z;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    .line 45
    return-void
.end method
