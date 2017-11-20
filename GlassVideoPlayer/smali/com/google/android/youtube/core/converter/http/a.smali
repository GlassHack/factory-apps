.class public final Lcom/google/android/youtube/core/converter/http/a;
.super Lcom/google/android/youtube/core/converter/http/av;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/Set;


# instance fields
.field private final d:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 29
    const-string v3, "channel.global.title.string"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 30
    const-string v3, "channel.global.description.string"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 31
    const-string v3, "channel.global.keywords.string"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 32
    const-string v3, "mobile_watchpage.banner.image.url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 33
    const-string v3, "mobile_watchpage.banner.image_target.url"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 34
    const-string v3, "watchpage.global.featured_playlist.id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 35
    const-string v3, "watchpage.large_branded_banner.image.url"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 36
    const-string v3, "device_watchpage.watermark.image.url"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 37
    const-string v3, "device_watchpage.watermark.image_target.url"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 38
    const-string v3, "device_watchpage.interstitial.image.url"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 39
    const-string v3, "device_watchpage.interstitial.image_target.url"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 40
    const-string v3, "generictv_watchpage.banner.image.url"

    aput-object v3, v1, v2

    .line 28
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/converter/http/a;->c:Ljava/util/Set;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/av;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    .line 46
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 47
    const-string v1, "/entry"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/b;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/b;-><init>(Lcom/google/android/youtube/core/converter/http/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 57
    const-string v1, "/entry/yt:option"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/c;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/c;-><init>(Lcom/google/android/youtube/core/converter/http/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/a;->d:Lcom/google/android/youtube/core/converter/c;

    .line 91
    return-void
.end method

.method static synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/youtube/core/converter/http/a;->c:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/a;->d:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
