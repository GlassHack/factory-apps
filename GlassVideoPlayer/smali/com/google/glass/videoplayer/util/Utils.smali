.class public Lcom/google/glass/videoplayer/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final HOUR_TO_MILLIS:I

.field static final HOUR_TO_MIN:I

.field static final MIN_TO_SEC:I

.field static final SEC_TO_MILLIS:I

.field static final TIMEBAR_WIDTH:I = 0x280


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/glass/videoplayer/util/Utils;->SEC_TO_MILLIS:I

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/glass/videoplayer/util/Utils;->MIN_TO_SEC:I

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/glass/videoplayer/util/Utils;->HOUR_TO_MIN:I

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/glass/videoplayer/util/Utils;->HOUR_TO_MILLIS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 27
    const-string v1, "v"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isValidStream(Lcom/google/android/youtube/core/model/Stream;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 61
    const-string v2, "video/3gpp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "video/mp4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 66
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 71
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    if-nez v1, :cond_0

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWatchUrl(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v2, "/watch"

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "v"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static stringForTime(JJ)Ljava/lang/String;
    .locals 9

    .prologue
    .line 84
    long-to-int v0, p0

    sget v1, Lcom/google/glass/videoplayer/util/Utils;->SEC_TO_MILLIS:I

    div-int/2addr v0, v1

    .line 85
    sget v1, Lcom/google/glass/videoplayer/util/Utils;->MIN_TO_SEC:I

    rem-int v1, v0, v1

    .line 86
    sget v2, Lcom/google/glass/videoplayer/util/Utils;->MIN_TO_SEC:I

    div-int v2, v0, v2

    sget v3, Lcom/google/glass/videoplayer/util/Utils;->HOUR_TO_MIN:I

    rem-int/2addr v2, v3

    .line 87
    sget v3, Lcom/google/glass/videoplayer/util/Utils;->HOUR_TO_MIN:I

    sget v4, Lcom/google/glass/videoplayer/util/Utils;->MIN_TO_SEC:I

    mul-int/2addr v3, v4

    div-int/2addr v0, v3

    .line 89
    long-to-int v3, p2

    sget v4, Lcom/google/glass/videoplayer/util/Utils;->SEC_TO_MILLIS:I

    div-int/2addr v3, v4

    .line 90
    sget v4, Lcom/google/glass/videoplayer/util/Utils;->MIN_TO_SEC:I

    rem-int v4, v3, v4

    .line 91
    sget v5, Lcom/google/glass/videoplayer/util/Utils;->MIN_TO_SEC:I

    div-int v5, v3, v5

    sget v6, Lcom/google/glass/videoplayer/util/Utils;->HOUR_TO_MIN:I

    rem-int/2addr v5, v6

    .line 92
    sget v6, Lcom/google/glass/videoplayer/util/Utils;->HOUR_TO_MIN:I

    sget v7, Lcom/google/glass/videoplayer/util/Utils;->MIN_TO_SEC:I

    mul-int/2addr v6, v7

    div-int/2addr v3, v6

    .line 95
    const/4 v6, 0x1

    if-lt v3, v6, :cond_0

    .line 96
    const-string v6, "%d:%02d:%02d / %d:%02d:%02d"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    .line 96
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_0
    sget v0, Lcom/google/glass/videoplayer/util/Utils;->MIN_TO_SEC:I

    mul-int/lit8 v0, v0, 0xa

    sget v3, Lcom/google/glass/videoplayer/util/Utils;->SEC_TO_MILLIS:I

    mul-int/2addr v0, v3

    int-to-long v6, v0

    cmp-long v0, p2, v6

    if-ltz v0, :cond_1

    .line 99
    const-string v0, "%02d:%02d / %02d:%02d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "%d:%02d / %d:%02d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
