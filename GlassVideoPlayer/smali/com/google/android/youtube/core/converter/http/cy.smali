.class final Lcom/google/android/youtube/core/converter/http/cy;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Subscription$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/k;->poll()Ljava/lang/Object;

    .line 78
    return-void
.end method
