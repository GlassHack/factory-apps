.class public Lcom/google/android/youtube/core/model/Branding$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private bannerTargetUri:Landroid/net/Uri;

.field private bannerUri:Landroid/net/Uri;

.field private description:Ljava/lang/String;

.field private featuredPlaylistId:Ljava/lang/String;

.field private interstitialTargetUri:Landroid/net/Uri;

.field private interstitialUri:Landroid/net/Uri;

.field private keywords:Ljava/lang/String;

.field private largeBannerUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;

.field private tvBannerUri:Landroid/net/Uri;

.field private watermarkTargetUri:Landroid/net/Uri;

.field private watermarkUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    .line 193
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri:Landroid/net/Uri;

    .line 194
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkUri:Landroid/net/Uri;

    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkTargetUri:Landroid/net/Uri;

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialUri:Landroid/net/Uri;

    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialTargetUri:Landroid/net/Uri;

    .line 199
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->tvBannerUri:Landroid/net/Uri;

    .line 201
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Branding$Builder;->build()Lcom/google/android/youtube/core/model/Branding;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkTargetUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialTargetUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->tvBannerUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 186
    return-void
.end method


# virtual methods
.method public bannerTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    .line 124
    return-object p0
.end method

.method public bannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    .line 119
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Branding;
    .locals 13

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/youtube/core/model/Branding;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    .line 165
    iget-object v7, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkTargetUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialUri:Landroid/net/Uri;

    iget-object v10, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialTargetUri:Landroid/net/Uri;

    .line 166
    iget-object v11, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    iget-object v12, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->tvBannerUri:Landroid/net/Uri;

    .line 164
    invoke-direct/range {v0 .. v12}, Lcom/google/android/youtube/core/model/Branding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Branding$Builder;->build()Lcom/google/android/youtube/core/model/Branding;

    move-result-object v0

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public featuredPlaylistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public interstitialTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialTargetUri:Landroid/net/Uri;

    .line 144
    return-object p0
.end method

.method public interstitialUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialUri:Landroid/net/Uri;

    .line 139
    return-object p0
.end method

.method public keywords(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public largeBannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri:Landroid/net/Uri;

    .line 154
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public tvBannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->tvBannerUri:Landroid/net/Uri;

    .line 159
    return-object p0
.end method

.method public watermarkTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkTargetUri:Landroid/net/Uri;

    .line 134
    return-object p0
.end method

.method public watermarkUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkUri:Landroid/net/Uri;

    .line 129
    return-object p0
.end method
