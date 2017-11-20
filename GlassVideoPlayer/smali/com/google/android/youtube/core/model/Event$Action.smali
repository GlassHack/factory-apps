.class public final enum Lcom/google/android/youtube/core/model/Event$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_ADDED_TO_PLAYLIST:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_LIKED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_RECOMMENDED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;


# instance fields
.field public final stringId:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final targetsVideo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 29
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_LIKED"

    sget v2, Lcom/google/android/youtube/R$string;->event_video_liked:I

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_LIKED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 30
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_SHARED"

    sget v2, Lcom/google/android/youtube/R$string;->event_video_shared:I

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 31
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_FAVORITED"

    sget v2, Lcom/google/android/youtube/R$string;->event_video_favorited:I

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 32
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_COMMENTED"

    sget v2, Lcom/google/android/youtube/R$string;->event_video_commented:I

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 33
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_UPLOADED"

    sget v2, Lcom/google/android/youtube/R$string;->event_video_uploaded:I

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 34
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_RECOMMENDED"

    const/4 v2, 0x5

    sget v3, Lcom/google/android/youtube/R$string;->event_video_recommended:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_RECOMMENDED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 35
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_ADDED_TO_PLAYLIST"

    const/4 v2, 0x6

    sget v3, Lcom/google/android/youtube/R$string;->event_video_added_to_playlist:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_ADDED_TO_PLAYLIST:Lcom/google/android/youtube/core/model/Event$Action;

    .line 36
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "FRIEND_ADDED"

    const/4 v2, 0x7

    sget v3, Lcom/google/android/youtube/R$string;->event_friend_added:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 37
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "USER_SUBSCRIPTION_ADDED"

    const/16 v2, 0x8

    sget v3, Lcom/google/android/youtube/R$string;->event_user_subscription_added:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Event$Action;

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_LIKED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_RECOMMENDED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_ADDED_TO_PLAYLIST:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/model/Event$Action;->FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/model/Event$Action;->USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/Event$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/google/android/youtube/core/model/Event$Action;->stringId:I

    .line 50
    iput-boolean p4, p0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Action;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/model/Event$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Event$Action;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->ENUM$VALUES:[Lcom/google/android/youtube/core/model/Event$Action;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/model/Event$Action;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
