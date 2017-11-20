.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

.field public static final PARAM_NAME:Ljava/lang/String; = "time"

.field public static final enum THIS_MONTH:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

.field public static final enum THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

.field public static final enum TODAY:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;


# instance fields
.field public final stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const-string v1, "TODAY"

    sget v2, Lcom/google/android/youtube/R$string;->time_filter_today:I

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->TODAY:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 226
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const-string v1, "THIS_WEEK"

    sget v2, Lcom/google/android/youtube/R$string;->time_filter_this_week:I

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 227
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const-string v1, "THIS_MONTH"

    sget v2, Lcom/google/android/youtube/R$string;->time_filter_this_month:I

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_MONTH:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 228
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const-string v1, "ALL_TIME"

    sget v2, Lcom/google/android/youtube/R$string;->time_filter_all_time:I

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 224
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->TODAY:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_MONTH:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 235
    iput p3, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->stringId:I

    .line 236
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
