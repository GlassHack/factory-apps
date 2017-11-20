.class public final enum Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ADD_TO_PLAYLIST:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

.field public static final enum COMMENT:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

.field public static final enum FAVORITE:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

.field public static final enum LIKE:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

.field public static final enum SUBSCRIBE_TO_CHANNEL:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

.field public static final enum UPLOAD:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;


# instance fields
.field public action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    const-string v1, "FAVORITE"

    const-string v2, "favorite"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->FAVORITE:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    .line 87
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    const-string v1, "ADD_TO_PLAYLIST"

    const-string v2, "addToPlaylist"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->ADD_TO_PLAYLIST:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    .line 88
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    const-string v1, "COMMENT"

    const-string v2, "comment"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->COMMENT:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    .line 89
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    const-string v1, "LIKE"

    const-string v2, "like"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->LIKE:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    .line 90
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    const-string v1, "SUBSCRIBE_TO_CHANNEL"

    const-string v2, "subscribeToChannel"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->SUBSCRIBE_TO_CHANNEL:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    .line 91
    new-instance v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    const-string v1, "UPLOAD"

    const/4 v2, 0x5

    const-string v3, "upload"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->UPLOAD:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->FAVORITE:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->ADD_TO_PLAYLIST:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->COMMENT:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->LIKE:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->SUBSCRIBE_TO_CHANNEL:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->UPLOAD:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->action:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
