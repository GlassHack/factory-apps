.class public final Lcom/google/android/youtube/core/model/Branding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final bannerTargetUri:Landroid/net/Uri;

.field public final bannerUri:Landroid/net/Uri;

.field public final description:Ljava/lang/String;

.field public final featuredPlaylistId:Ljava/lang/String;

.field public final interstitialTargetUri:Landroid/net/Uri;

.field public final interstitialUri:Landroid/net/Uri;

.field public final keywords:Ljava/lang/String;

.field public final largeBannerUri:Landroid/net/Uri;

.field public final title:Ljava/lang/String;

.field public final tvBannerUri:Landroid/net/Uri;

.field public final watermarkTargetUri:Landroid/net/Uri;

.field public final watermarkUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding;->title:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Branding;->description:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Branding;->keywords:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    .line 54
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Branding;->largeBannerUri:Landroid/net/Uri;

    .line 55
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    .line 56
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Branding;->watermarkUri:Landroid/net/Uri;

    .line 57
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Branding;->watermarkTargetUri:Landroid/net/Uri;

    .line 58
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Branding;->interstitialUri:Landroid/net/Uri;

    .line 59
    iput-object p10, p0, Lcom/google/android/youtube/core/model/Branding;->interstitialTargetUri:Landroid/net/Uri;

    .line 60
    iput-object p11, p0, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    .line 61
    iput-object p12, p0, Lcom/google/android/youtube/core/model/Branding;->tvBannerUri:Landroid/net/Uri;

    .line 62
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Branding;->buildUpon()Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/youtube/core/model/Branding$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Branding$Builder;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->largeBannerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->watermarkUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->watermarkTargetUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->interstitialUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->interstitialTargetUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->tvBannerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->tvBannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    .line 73
    return-object v0
.end method
