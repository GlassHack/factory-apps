.class final Lcom/google/android/youtube/core/converter/http/ax;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/youtube/core/model/e;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lcom/google/android/youtube/core/model/e;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/e;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/e;->a()Lcom/google/android/youtube/core/model/d;

    move-result-object v1

    .line 48
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
