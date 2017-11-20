.class public final enum Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AD:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

.field public static final enum EMBEDDED:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

.field public static final enum LIVE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

.field public static final enum MOVIE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

.field public static final enum REMOTE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

.field public static final enum YOUTUBE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

.field public static final enum YOUTUBE_TABLET:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;


# instance fields
.field public final minimalWhenNotFullscreen:Z

.field public final progressColor:I

.field public final showButtonsWhenNotFullscreen:Z

.field public final supportsBuffered:Z

.field public final supportsNextPrevious:Z

.field public final supportsPlayHQCC:Z

.field public final supportsScrubber:Z

.field public final supportsTimeBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    const-string v1, "YOUTUBE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, -0xd0cf

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 54
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    const-string v1, "YOUTUBE_TABLET"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, -0xd0cf

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->YOUTUBE_TABLET:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 55
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    const-string v1, "EMBEDDED"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, -0xd0cf

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->EMBEDDED:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 56
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    const-string v1, "REMOTE"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, -0xd0cf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->REMOTE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 57
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    const-string v1, "AD"

    const/4 v2, 0x4

    const/4 v3, 0x1

    const v4, -0x1744d5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 58
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    const-string v1, "MOVIE"

    const/4 v2, 0x5

    const/4 v3, 0x1

    const v4, -0xd0cf

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 59
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    const-string v1, "LIVE"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;-><init>(Ljava/lang/String;IZIZZZZZZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->YOUTUBE_TABLET:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->EMBEDDED:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->REMOTE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIZZZZZZ)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-boolean p3, p0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsTimeBar:Z

    .line 80
    iput p4, p0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->progressColor:I

    .line 81
    iput-boolean p5, p0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsBuffered:Z

    .line 82
    iput-boolean p6, p0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsScrubber:Z

    .line 83
    iput-boolean p7, p0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsPlayHQCC:Z

    .line 84
    iput-boolean p8, p0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->supportsNextPrevious:Z

    .line 85
    iput-boolean p9, p0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->minimalWhenNotFullscreen:Z

    .line 86
    iput-boolean p10, p0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->showButtonsWhenNotFullscreen:Z

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
