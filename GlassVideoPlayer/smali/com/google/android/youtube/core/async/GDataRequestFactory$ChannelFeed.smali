.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

.field public static final enum MOST_SUBSCRIBED:Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

.field public static final enum MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

.field public static final enum NOTEWORTHY:Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    const-string v1, "MOST_SUBSCRIBED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;->MOST_SUBSCRIBED:Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    .line 155
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    const-string v1, "MOST_VIEWED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    .line 156
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    const-string v1, "NOTEWORTHY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;->NOTEWORTHY:Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;->MOST_SUBSCRIBED:Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;->NOTEWORTHY:Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/async/GDataRequestFactory$ChannelFeed;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
