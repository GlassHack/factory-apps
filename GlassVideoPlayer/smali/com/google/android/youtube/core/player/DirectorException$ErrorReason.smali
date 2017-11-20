.class public final enum Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BAD_STATE:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

.field public static final enum BLOCKED_FOR_CLIENT_APP:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

.field public static final enum EMBEDDING_DISABLED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

.field public static final enum NO_STREAMS:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

.field public static final enum PLAYER_ERROR:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

.field public static final enum REQUEST_FAILED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    const-string v1, "REQUEST_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->REQUEST_FAILED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 14
    new-instance v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    const-string v1, "BAD_STATE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->BAD_STATE:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 15
    new-instance v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    const-string v1, "PLAYER_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->PLAYER_ERROR:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 16
    new-instance v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    const-string v1, "NO_STREAMS"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->NO_STREAMS:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 17
    new-instance v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    const-string v1, "EMBEDDING_DISABLED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->EMBEDDING_DISABLED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 18
    new-instance v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    const-string v1, "BLOCKED_FOR_CLIENT_APP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->BLOCKED_FOR_CLIENT_APP:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    sget-object v1, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->REQUEST_FAILED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->BAD_STATE:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->PLAYER_ERROR:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->NO_STREAMS:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->EMBEDDING_DISABLED:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->BLOCKED_FOR_CLIENT_APP:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
