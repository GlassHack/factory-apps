.class public final Lcom/google/android/youtube/core/converter/http/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/youtube/core/converter/d;)V
    .locals 2

    .prologue
    .line 24
    const-string v0, "/feed/entry"

    new-instance v1, Lcom/google/android/youtube/core/converter/http/ad;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/ad;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    .line 37
    const-string v0, "/feed"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/converter/http/ac;->a(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private static a(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/entry/author/name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/converter/http/af;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/af;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/entry/title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ag;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/ag;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/entry/content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ah;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/ah;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/entry/published"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ai;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/ai;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    .line 79
    return-void
.end method

.method public static b(Lcom/google/android/youtube/core/converter/d;)V
    .locals 2

    .prologue
    .line 41
    const-string v0, "/entry"

    new-instance v1, Lcom/google/android/youtube/core/converter/http/ae;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/ae;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    .line 51
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/converter/http/ac;->a(Lcom/google/android/youtube/core/converter/d;Ljava/lang/String;)V

    .line 52
    return-void
.end method
