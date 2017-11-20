.class final Lcom/google/android/youtube/core/converter/http/bc;
.super Lcom/google/android/youtube/core/converter/http/av;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/l;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/av;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    .line 1
    return-void
.end method

.method private static b(Lorg/apache/http/HttpEntity;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/google/android/youtube/core/converter/http/bc;->b(Lorg/apache/http/HttpEntity;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
