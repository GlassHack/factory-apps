.class final Lcom/google/android/youtube/core/converter/http/dj;
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
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 61
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 62
    return-void
.end method
