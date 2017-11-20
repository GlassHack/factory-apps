.class public final Lcom/google/android/youtube/core/async/GDataRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Landroid/net/Uri;

.field public static final m:Landroid/net/Uri;

.field public static final n:Landroid/net/Uri;

.field public static final o:Landroid/net/Uri;

.field public static final p:Landroid/net/Uri;

.field public static final q:Landroid/net/Uri;

.field public static final r:Landroid/net/Uri;

.field public static final s:Landroid/net/Uri;

.field public static final t:Ljava/util/Set;

.field private static final u:Ljava/util/HashSet;


# instance fields
.field private final v:I

.field private final w:Lcom/google/android/youtube/core/utils/SafeSearch;

.field private final x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 57
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 58
    const-string v1, "gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 59
    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 60
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 56
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    .line 63
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    .line 65
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 66
    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 67
    const-string v1, "gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 68
    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 69
    const-string v1, "player"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    const-string v1, "videos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 71
    const-string v1, "make"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 72
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c:Landroid/net/Uri;

    .line 75
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 76
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 77
    const-string v1, "stage.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 78
    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 79
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 75
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d:Landroid/net/Uri;

    .line 82
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 83
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 84
    const-string v1, "dev.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 85
    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 86
    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 82
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e:Landroid/net/Uri;

    .line 89
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 90
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 91
    const-string v1, "uploads.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 92
    const-string v1, "/resumable/feeds/api/users/default/uploads"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 89
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f:Landroid/net/Uri;

    .line 96
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/uploads"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 95
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->g:Landroid/net/Uri;

    .line 99
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/favorites"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 98
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h:Landroid/net/Uri;

    .line 102
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/subscriptions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 101
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i:Landroid/net/Uri;

    .line 105
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/subtivity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 106
    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 104
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->j:Landroid/net/Uri;

    .line 110
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/subtivity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 111
    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 112
    const-string v1, "highlights"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 109
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->k:Landroid/net/Uri;

    .line 116
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/river"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 117
    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 115
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->l:Landroid/net/Uri;

    .line 121
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/events"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 122
    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 120
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->m:Landroid/net/Uri;

    .line 126
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/watch_later"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 125
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->n:Landroid/net/Uri;

    .line 129
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/watch_history"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 128
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->o:Landroid/net/Uri;

    .line 134
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/playlists"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 133
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->p:Landroid/net/Uri;

    .line 137
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/newsubscriptionvideos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 136
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->q:Landroid/net/Uri;

    .line 140
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/recommendations"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 139
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->r:Landroid/net/Uri;

    .line 143
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/suggestion"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 144
    const-string v1, "type"

    const-string v2, "channel"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 145
    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 142
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->s:Landroid/net/Uri;

    .line 164
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    .line 165
    const-string v2, "zh-TW"

    aput-object v2, v1, v4

    const-string v2, "cs-CZ"

    aput-object v2, v1, v5

    const-string v2, "nl-NL"

    aput-object v2, v1, v6

    const-string v2, "en-GB"

    aput-object v2, v1, v7

    const-string v2, "en-US"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "fr-FR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "de-DE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "it-IT"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ja-JP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "ko-KR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 166
    const-string v3, "pl-PL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "pt-BR"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ru-RU"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "es-ES"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "es-MX"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "sv-SE"

    aput-object v3, v1, v2

    .line 164
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->u:Ljava/util/HashSet;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x26

    new-array v1, v1, [Ljava/lang/String;

    .line 175
    const-string v2, "AR"

    aput-object v2, v1, v4

    const-string v2, "AU"

    aput-object v2, v1, v5

    const-string v2, "BE"

    aput-object v2, v1, v6

    const-string v2, "BR"

    aput-object v2, v1, v7

    const-string v2, "CA"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "CL"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "CO"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "CZ"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "EG"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "FR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DE"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GB"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 176
    const-string v3, "HK"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "HU"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "IN"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "IE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "IL"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "IT"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "JP"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "JO"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "MY"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "MX"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "MA"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "NL"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    .line 177
    const-string v3, "NZ"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "PE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "PH"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "PL"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "RU"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "SA"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "SG"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "ZA"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "KR"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "ES"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "SE"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "TW"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    .line 178
    const-string v3, "AE"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "US"

    aput-object v3, v1, v2

    .line 174
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:Ljava/util/Set;

    .line 31
    return-void
.end method

.method public constructor <init>(ILcom/google/android/youtube/core/utils/SafeSearch;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "resultsPerPage must be > 0"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 382
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 383
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "countryCodeRestrict must be empty or a two letter country code (given: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v2, v0}, Lcom/google/android/youtube/core/utils/f;->a(ZLjava/lang/Object;)V

    .line 385
    iput p1, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->v:I

    .line 386
    iput-object p2, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->w:Lcom/google/android/youtube/core/utils/SafeSearch;

    .line 387
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->x:Ljava/lang/String;

    .line 392
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 380
    goto :goto_0

    :cond_1
    move v2, v1

    .line 382
    goto :goto_1

    .line 390
    :cond_2
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->x:Ljava/lang/String;

    goto :goto_2
.end method

.method public static a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3

    .prologue
    .line 673
    const-string v0, "uri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v0, "true"

    const-string v1, "inline"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 677
    :cond_0
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/net/Uri$Builder;II)V
    .locals 2

    .prologue
    .line 1515
    const-string v0, "start-index"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1516
    const-string v0, "max-results"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1517
    return-void
.end method

.method private static b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 410
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "videos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 839
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 840
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 841
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4

    .prologue
    .line 943
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string v0, "userId cannot be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 945
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 946
    const-string v1, "fields"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "entry[yt:username=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\']"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 950
    const/4 v1, 0x1

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 951
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1

    .prologue
    .line 395
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1

    .prologue
    .line 401
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    if-nez p2, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method
