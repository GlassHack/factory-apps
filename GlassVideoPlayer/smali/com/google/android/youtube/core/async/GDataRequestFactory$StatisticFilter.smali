.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field public static final enum MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field public static final enum MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field public static final enum TOP_FAVORITED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

.field public static final enum TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;


# instance fields
.field public final feed:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

.field public final stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    const-string v1, "MOST_VIEWED"

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    sget v3, Lcom/google/android/youtube/R$string;->statistic_filter_most_viewed:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 333
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    const-string v1, "TOP_RATED"

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    sget v3, Lcom/google/android/youtube/R$string;->statistic_filter_top_rated:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 334
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    const-string v1, "MOST_DISCUSSED"

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    sget v3, Lcom/google/android/youtube/R$string;->statistic_filter_most_discussed:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 335
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    const-string v1, "TOP_FAVORITED"

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    sget v3, Lcom/google/android/youtube/R$string;->statistic_filter_top_favorited:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->TOP_FAVORITED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    .line 330
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->TOP_FAVORITED:Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;I)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 341
    iput-object p3, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->feed:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    .line 342
    iput p4, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->stringId:I

    .line 343
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
