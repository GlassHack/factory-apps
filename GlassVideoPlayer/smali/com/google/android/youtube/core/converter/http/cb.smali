.class final Lcom/google/android/youtube/core/converter/http/cb;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    .line 160
    const-string v0, "url"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    const-string v0, "yt:name"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const-class v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v2, "hqdefault"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    const-class v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    goto :goto_0

    .line 166
    :cond_2
    const-string v2, "sddefault"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-class v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->sdThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    goto :goto_0
.end method
