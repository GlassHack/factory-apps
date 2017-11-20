.class public abstract enum Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CC:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

.field public static final enum FAST_FORWARD:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

.field public static final enum HOME:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

.field public static final enum NEXT:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

.field public static final enum PAUSE:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

.field public static final enum PLAY:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

.field public static final enum PREVIOUS:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

.field public static final enum REWIND:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

.field public static final enum SCROLL:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$1;

    const-string v1, "FAST_FORWARD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$1;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->FAST_FORWARD:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    .line 68
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$2;

    const-string v1, "REWIND"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$2;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->REWIND:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    .line 80
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$3;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    .line 86
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$4;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    .line 92
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$5;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    .line 98
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$6;

    const-string v1, "PREVIOUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    .line 104
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$7;

    const-string v1, "CC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->CC:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    .line 110
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$8;

    const-string v1, "HOME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->HOME:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    .line 116
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$9;

    const-string v1, "SCROLL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->SCROLL:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->FAST_FORWARD:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->REWIND:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->PAUSE:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->PLAY:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->NEXT:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->PREVIOUS:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->CC:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->HOME:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->SCROLL:Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/player/overlay/MediaActionHelper$Action;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract execute(Lcom/google/android/youtube/core/player/overlay/MediaActionHelper;)V
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method
