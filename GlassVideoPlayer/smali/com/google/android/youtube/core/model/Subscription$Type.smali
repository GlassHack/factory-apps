.class public final enum Lcom/google/android/youtube/core/model/Subscription$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum FAVORITES:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum PLAYLIST:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum QUERY:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum USER:Lcom/google/android/youtube/core/model/Subscription$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->USER:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 29
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->FAVORITES:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 30
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->PLAYLIST:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 31
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->QUERY:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 32
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "CHANNEL"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 33
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->UNKNOWN:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->USER:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->FAVORITES:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->PLAYLIST:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->QUERY:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Subscription$Type;->UNKNOWN:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/Subscription$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Subscription$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/Subscription$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
