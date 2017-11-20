.class final enum Lcom/google/android/youtube/core/player/Director$PlayerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/player/Director$PlayerState;

.field public static final enum NOT_PREPARED:Lcom/google/android/youtube/core/player/Director$PlayerState;

.field public static final enum PREPARED:Lcom/google/android/youtube/core/player/Director$PlayerState;

.field public static final enum PREPARING:Lcom/google/android/youtube/core/player/Director$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    new-instance v0, Lcom/google/android/youtube/core/player/Director$PlayerState;

    const-string v1, "NOT_PREPARED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/Director$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlayerState;->NOT_PREPARED:Lcom/google/android/youtube/core/player/Director$PlayerState;

    .line 165
    new-instance v0, Lcom/google/android/youtube/core/player/Director$PlayerState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/player/Director$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlayerState;->PREPARING:Lcom/google/android/youtube/core/player/Director$PlayerState;

    .line 166
    new-instance v0, Lcom/google/android/youtube/core/player/Director$PlayerState;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/player/Director$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlayerState;->PREPARED:Lcom/google/android/youtube/core/player/Director$PlayerState;

    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/player/Director$PlayerState;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlayerState;->NOT_PREPARED:Lcom/google/android/youtube/core/player/Director$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlayerState;->PREPARING:Lcom/google/android/youtube/core/player/Director$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlayerState;->PREPARED:Lcom/google/android/youtube/core/player/Director$PlayerState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/player/Director$PlayerState;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/Director$PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/Director$PlayerState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/player/Director$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/Director$PlayerState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/Director$PlayerState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlayerState;->ENUM$VALUES:[Lcom/google/android/youtube/core/player/Director$PlayerState;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/player/Director$PlayerState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
