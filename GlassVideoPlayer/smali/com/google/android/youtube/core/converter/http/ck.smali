.class public final Lcom/google/android/youtube/core/converter/http/ck;
.super Lcom/google/android/youtube/core/converter/http/av;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;)V
    .locals 5

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/av;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 28
    const-string v1, "/feed/entry"

    .line 29
    const-string v2, "/feed"

    new-instance v3, Lcom/google/android/youtube/core/converter/http/cl;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/core/converter/http/cl;-><init>(Lcom/google/android/youtube/core/converter/http/ck;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v2

    .line 35
    new-instance v3, Lcom/google/android/youtube/core/converter/http/cm;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/core/converter/http/cm;-><init>(Lcom/google/android/youtube/core/converter/http/ck;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/category"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/core/converter/http/cn;

    invoke-direct {v4, p0}, Lcom/google/android/youtube/core/converter/http/cn;-><init>(Lcom/google/android/youtube/core/converter/http/ck;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/yt:connectedAccount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/core/converter/http/co;

    invoke-direct {v4, p0}, Lcom/google/android/youtube/core/converter/http/co;-><init>(Lcom/google/android/youtube/core/converter/http/ck;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/yt:connectedAccount/yt:accessControl"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/android/youtube/core/converter/http/cp;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/core/converter/http/cp;-><init>(Lcom/google/android/youtube/core/converter/http/ck;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/ck;->c:Lcom/google/android/youtube/core/converter/c;

    .line 68
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/ck;->c:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
