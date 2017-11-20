.class final Lcom/google/android/youtube/core/converter/http/fe;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 707
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 710
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "yyy-MM-dd"

    aput-object v3, v1, v2

    invoke-static {p3, v1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 713
    const-string v1, "Unable to parse <yt:firstReleased> tag"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
