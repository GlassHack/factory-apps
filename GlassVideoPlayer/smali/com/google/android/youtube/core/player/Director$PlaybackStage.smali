.class final enum Lcom/google/android/youtube/core/player/Director$PlaybackStage;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ENDED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/player/Director$PlaybackStage;

.field public static final enum LOADED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

.field public static final enum LOADING:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

.field public static final enum NEW:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

.field public static final enum PLAYING_AD:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

.field public static final enum PLAYING_VIDEO:Lcom/google/android/youtube/core/player/Director$PlaybackStage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    new-instance v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/Director$PlaybackStage;-><init>(Ljava/lang/String;I)V

    .line 171
    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->NEW:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    .line 172
    new-instance v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/Director$PlaybackStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->LOADING:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    .line 173
    new-instance v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/player/Director$PlaybackStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->LOADED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    .line 174
    new-instance v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    const-string v1, "PLAYING_AD"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/player/Director$PlaybackStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_AD:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    .line 175
    new-instance v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    const-string v1, "PLAYING_VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/player/Director$PlaybackStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_VIDEO:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    .line 176
    new-instance v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    const-string v1, "ENDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/Director$PlaybackStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->ENDED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    .line 169
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->NEW:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->LOADING:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->LOADED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_AD:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_VIDEO:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->ENDED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/Director$PlaybackStage;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/Director$PlaybackStage;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
