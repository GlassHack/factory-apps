.class public final enum Lcom/google/android/youtube/core/client/StatParams$Platform;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BLURAY:Lcom/google/android/youtube/core/client/StatParams$Platform;

.field public static final enum DESKTOP:Lcom/google/android/youtube/core/client/StatParams$Platform;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/client/StatParams$Platform;

.field public static final enum GAME_CONSOLE:Lcom/google/android/youtube/core/client/StatParams$Platform;

.field public static final enum MOBILE:Lcom/google/android/youtube/core/client/StatParams$Platform;

.field public static final enum STB:Lcom/google/android/youtube/core/client/StatParams$Platform;

.field public static final enum TABLET:Lcom/google/android/youtube/core/client/StatParams$Platform;

.field public static final enum TV:Lcom/google/android/youtube/core/client/StatParams$Platform;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/client/StatParams$Platform;


# instance fields
.field public final param:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    const-string v1, "DESKTOP"

    const-string v2, "desktop"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/client/StatParams$Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->DESKTOP:Lcom/google/android/youtube/core/client/StatParams$Platform;

    .line 19
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    const-string v1, "MOBILE"

    const-string v2, "mobile"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/client/StatParams$Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->MOBILE:Lcom/google/android/youtube/core/client/StatParams$Platform;

    .line 20
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    const-string v1, "TV"

    const-string v2, "tv"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/client/StatParams$Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->TV:Lcom/google/android/youtube/core/client/StatParams$Platform;

    .line 21
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    const-string v1, "TABLET"

    const-string v2, "tablet"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/youtube/core/client/StatParams$Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->TABLET:Lcom/google/android/youtube/core/client/StatParams$Platform;

    .line 22
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    const-string v1, "BLURAY"

    const-string v2, "bluray"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/youtube/core/client/StatParams$Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->BLURAY:Lcom/google/android/youtube/core/client/StatParams$Platform;

    .line 23
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    const-string v1, "STB"

    const/4 v2, 0x5

    const-string v3, "stb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/client/StatParams$Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->STB:Lcom/google/android/youtube/core/client/StatParams$Platform;

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    const-string v1, "GAME_CONSOLE"

    const/4 v2, 0x6

    const-string v3, "game_console"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/client/StatParams$Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->GAME_CONSOLE:Lcom/google/android/youtube/core/client/StatParams$Platform;

    .line 25
    new-instance v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    const-string v3, "unknown_platform"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/client/StatParams$Platform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->UNKNOWN:Lcom/google/android/youtube/core/client/StatParams$Platform;

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/youtube/core/client/StatParams$Platform;

    sget-object v1, Lcom/google/android/youtube/core/client/StatParams$Platform;->DESKTOP:Lcom/google/android/youtube/core/client/StatParams$Platform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/client/StatParams$Platform;->MOBILE:Lcom/google/android/youtube/core/client/StatParams$Platform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/client/StatParams$Platform;->TV:Lcom/google/android/youtube/core/client/StatParams$Platform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/client/StatParams$Platform;->TABLET:Lcom/google/android/youtube/core/client/StatParams$Platform;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/client/StatParams$Platform;->BLURAY:Lcom/google/android/youtube/core/client/StatParams$Platform;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/client/StatParams$Platform;->STB:Lcom/google/android/youtube/core/client/StatParams$Platform;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/client/StatParams$Platform;->GAME_CONSOLE:Lcom/google/android/youtube/core/client/StatParams$Platform;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/client/StatParams$Platform;->UNKNOWN:Lcom/google/android/youtube/core/client/StatParams$Platform;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->ENUM$VALUES:[Lcom/google/android/youtube/core/client/StatParams$Platform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/google/android/youtube/core/client/StatParams$Platform;->param:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/client/StatParams$Platform;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/StatParams$Platform;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/client/StatParams$Platform;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/client/StatParams$Platform;->ENUM$VALUES:[Lcom/google/android/youtube/core/client/StatParams$Platform;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/client/StatParams$Platform;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
