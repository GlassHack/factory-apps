.class public final Lcom/google/android/youtube/core/player/overlay/MediaActionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Lcom/google/android/youtube/core/player/overlay/i;

.field private c:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->FAST_FORWARD:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    sget v2, Lcom/google/android/youtube/R$drawable;->tv_indicator_ffwd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->REWIND:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    sget v2, Lcom/google/android/youtube/R$drawable;->tv_indicator_rwd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    sget v2, Lcom/google/android/youtube/R$drawable;->tv_indicator_pause:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    sget v2, Lcom/google/android/youtube/R$drawable;->tv_indicator_play:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    sget v2, Lcom/google/android/youtube/R$drawable;->tv_indicator_next:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    sget v2, Lcom/google/android/youtube/R$drawable;->tv_indicator_back:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper;->a:Ljava/util/Map;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/overlay/MediaActionHelper;)Lcom/google/android/youtube/core/player/overlay/i;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper;->b:Lcom/google/android/youtube/core/player/overlay/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/overlay/MediaActionHelper;)D
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper;->c:D

    return-wide v0
.end method
