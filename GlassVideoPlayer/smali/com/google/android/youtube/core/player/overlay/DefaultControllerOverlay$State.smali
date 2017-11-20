.class final enum Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ENDED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

.field public static final enum LOADING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

.field public static final enum PAUSED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

.field public static final enum PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

.field public static final enum RECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

.field public static final enum UNRECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 49
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 50
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 51
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    const-string v1, "RECOVERABLE_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->RECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 52
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    const-string v1, "UNRECOVERABLE_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->UNRECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 53
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    const-string v1, "ENDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->RECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->UNRECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final isError()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->RECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->UNRECOVERABLE_ERROR:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
