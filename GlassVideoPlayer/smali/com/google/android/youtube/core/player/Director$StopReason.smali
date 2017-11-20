.class public final enum Lcom/google/android/youtube/core/player/Director$StopReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ADULT_CONTENT_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum ADULT_CONTENT_ERROR:Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum EMPTY_PLAYLIST:Lcom/google/android/youtube/core/player/Director$StopReason;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/player/Director$StopReason;

.field public static final enum ITERATOR_FINISHED:Lcom/google/android/youtube/core/player/Director$StopReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "EMPTY_PLAYLIST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->EMPTY_PLAYLIST:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 201
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "ITERATOR_FINISHED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->ITERATOR_FINISHED:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 202
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "AUTOPLAY_DENIED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 203
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "ADULT_CONTENT_DECLINED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 204
    new-instance v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    const-string v1, "ADULT_CONTENT_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/player/Director$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_ERROR:Lcom/google/android/youtube/core/player/Director$StopReason;

    .line 199
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/youtube/core/player/Director$StopReason;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->EMPTY_PLAYLIST:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->ITERATOR_FINISHED:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->AUTOPLAY_DENIED:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_DECLINED:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/player/Director$StopReason;->ADULT_CONTENT_ERROR:Lcom/google/android/youtube/core/player/Director$StopReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/Director$StopReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/Director$StopReason;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/Director$StopReason;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/Director$StopReason;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/player/Director$StopReason;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/Director$StopReason;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/player/Director$StopReason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
