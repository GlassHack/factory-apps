.class final Lcom/google/android/youtube/core/converter/http/y;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 34
    const-string v1, "viewCount"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->channelViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 35
    const-string v1, "totalUploadViewCount"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 36
    return-void
.end method
