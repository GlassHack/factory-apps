.class final enum Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

.field public static final enum IDLE:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

.field public static final enum PAUSED:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

.field public static final enum PLAYING:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->IDLE:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    .line 57
    new-instance v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->PLAYING:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    .line 58
    new-instance v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->PAUSED:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    sget-object v1, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->IDLE:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->PLAYING:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->PAUSED:Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/player/TvWidevineMediaPlayer$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
