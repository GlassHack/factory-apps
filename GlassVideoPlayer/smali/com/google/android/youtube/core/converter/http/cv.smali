.class final Lcom/google/android/youtube/core/converter/http/cv;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/core/converter/http/cw;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/converter/http/cw;-><init>(Lcom/google/android/youtube/core/converter/http/cv;)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->offer(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
