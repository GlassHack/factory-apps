.class final enum Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

.field public static final enum FADING_IN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

.field public static final enum FADING_OUT:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

.field public static final enum HIDDEN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

.field public static final enum SHOWN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->HIDDEN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    new-instance v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    const-string v1, "FADING_IN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->FADING_IN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    new-instance v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    const-string v1, "SHOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->SHOWN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    new-instance v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    const-string v1, "FADING_OUT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->FADING_OUT:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->HIDDEN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->FADING_IN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->SHOWN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->FADING_OUT:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
