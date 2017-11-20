.class final Lcom/google/android/youtube/core/converter/http/dz;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->isEligibleForChannel(Z)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 127
    return-void
.end method
