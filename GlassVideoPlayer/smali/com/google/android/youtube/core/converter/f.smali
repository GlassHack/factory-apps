.class final Lcom/google/android/youtube/core/converter/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/p;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Page$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/k;->poll()Ljava/lang/Object;

    .line 63
    return-void
.end method
