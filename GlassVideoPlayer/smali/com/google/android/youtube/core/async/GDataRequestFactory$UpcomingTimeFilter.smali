.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

.field public static final enum NEXT_24_HOURS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

.field public static final enum NEXT_7_DAYS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

.field public static final PARAM_NAME:Ljava/lang/String; = "upcoming"


# instance fields
.field public final filterTerm:Ljava/lang/String;

.field public final stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 307
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    const-string v1, "NEXT_24_HOURS"

    .line 310
    const-string v2, "today"

    sget v3, Lcom/google/android/youtube/R$string;->time_filter_next_24_hours:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->NEXT_24_HOURS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    .line 311
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    const-string v1, "NEXT_7_DAYS"

    const-string v2, "this_week"

    sget v3, Lcom/google/android/youtube/R$string;->time_filter_next_7_days:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->NEXT_7_DAYS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->NEXT_24_HOURS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->NEXT_7_DAYS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 319
    iput-object p3, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->filterTerm:Ljava/lang/String;

    .line 320
    iput p4, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->stringId:I

    .line 321
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->ENUM$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->filterTerm:Ljava/lang/String;

    return-object v0
.end method
