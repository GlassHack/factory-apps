.class final Lcom/google/android/youtube/core/converter/http/dr;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 5

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 142
    const-string v1, "rel"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/do;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "href"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 146
    :goto_0
    const-string v3, "countHint"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;I)I

    move-result v3

    .line 147
    const-string v4, "http://gdata.youtube.com/schemas/2007#user.uploads"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 149
    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 166
    :cond_0
    :goto_1
    return-void

    .line 145
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 150
    :cond_2
    const-string v4, "http://gdata.youtube.com/schemas/2007#user.favorites"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 152
    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_1

    .line 153
    :cond_3
    const-string v4, "http://gdata.youtube.com/schemas/2007#user.subscriptions"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 155
    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_1

    .line 156
    :cond_4
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.watchhistory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchHistoryUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_1

    .line 158
    :cond_5
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.watchlater"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->watchLaterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_1

    .line 160
    :cond_6
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.playlists"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 161
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->playlistsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_1

    .line 162
    :cond_7
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.recentactivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->activityUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_1
.end method
