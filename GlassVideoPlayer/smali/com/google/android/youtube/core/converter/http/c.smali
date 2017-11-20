.class final Lcom/google/android/youtube/core/converter/http/c;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/c;->a:Lcom/google/android/youtube/core/converter/http/a;

    .line 57
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Branding$Builder;

    .line 61
    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/a;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "channel.global.title.string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v2, "channel.global.description.string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 67
    :cond_2
    const-string v2, "channel.global.keywords.string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 69
    :cond_3
    const-string v2, "mobile_watchpage.banner.image.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 70
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 71
    :cond_4
    const-string v2, "mobile_watchpage.banner.image_target.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 72
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 73
    :cond_5
    const-string v2, "device_watchpage.watermark.image.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 74
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 75
    :cond_6
    const-string v2, "device_watchpage.watermark.image_target.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->watermarkTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 77
    :cond_7
    const-string v2, "device_watchpage.interstitial.image.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 78
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 79
    :cond_8
    const-string v2, "device_watchpage.interstitial.image_target.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 80
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->interstitialTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 81
    :cond_9
    const-string v2, "watchpage.global.featured_playlist.id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 82
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto/16 :goto_0

    .line 83
    :cond_a
    const-string v2, "watchpage.large_branded_banner.image.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 84
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto/16 :goto_0

    .line 85
    :cond_b
    const-string v2, "generictv_watchpage.banner.image.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->tvBannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto/16 :goto_0
.end method
