.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

.field public static final enum FEATURED:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

.field public static final enum LIVE_NOW:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

.field public static final enum RECENTLY_BROADCASTED:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

.field public static final enum UPCOMING:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    const-string v1, "FEATURED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->FEATURED:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    .line 210
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    const-string v1, "LIVE_NOW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->LIVE_NOW:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    .line 211
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    const-string v1, "UPCOMING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->UPCOMING:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    .line 212
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    const-string v1, "RECENTLY_BROADCASTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->RECENTLY_BROADCASTED:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    .line 208
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->FEATURED:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->LIVE_NOW:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->UPCOMING:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->RECENTLY_BROADCASTED:Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
