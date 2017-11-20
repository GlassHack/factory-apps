.class final Lcom/google/android/youtube/core/converter/http/q;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/google/android/youtube/core/model/Channel$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Channel$Builder;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Channel$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;

    .line 61
    return-void
.end method
