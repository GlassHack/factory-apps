.class final enum Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BOTTOMUP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

.field public static final enum LEFTONTOP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

.field public static final enum RIGHTONTOP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

.field public static final enum UPRIGHT:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->UNKNOWN:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    .line 61
    new-instance v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "UPRIGHT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->UPRIGHT:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    .line 62
    new-instance v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "LEFTONTOP"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->LEFTONTOP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    .line 63
    new-instance v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "BOTTOMUP"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->BOTTOMUP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    .line 64
    new-instance v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    const-string v1, "RIGHTONTOP"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->RIGHTONTOP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    sget-object v1, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->UNKNOWN:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->UPRIGHT:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->LEFTONTOP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->BOTTOMUP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->RIGHTONTOP:Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->ENUM$VALUES:[Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;->ENUM$VALUES:[Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/utils/DeviceOrientationHelper$DeviceOrientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
