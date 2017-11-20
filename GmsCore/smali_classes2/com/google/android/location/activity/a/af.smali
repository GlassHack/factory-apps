.class public final Lcom/google/android/location/activity/a/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/a/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 71
    const-wide/32 v0, 0x17d78400

    return-wide v0
.end method

.method public final a(JJLjava/util/List;)Ljava/util/List;
    .locals 11

    .prologue
    .line 45
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-static/range {p5 .. p5}, Lcom/google/android/location/activity/a/p;->a(Ljava/util/List;)[D

    move-result-object v8

    .line 48
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 49
    const-wide/16 v2, 0x1

    .line 50
    array-length v9, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v9, :cond_1

    aget-wide v0, v8, v6

    .line 51
    cmpg-double v10, v0, v4

    if-gez v10, :cond_0

    move-wide v4, v0

    .line 54
    :cond_0
    cmpl-double v10, v0, v2

    if-lez v10, :cond_3

    .line 50
    :goto_1
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v0

    goto :goto_0

    .line 60
    :cond_1
    sub-double v0, v2, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 61
    sget-object v0, Lcom/google/android/location/activity/a/t;->h:Lcom/google/android/location/activity/a/t;

    .line 65
    :goto_2
    new-instance v1, Lcom/google/android/location/activity/a/s;

    const/16 v2, 0x64

    invoke-direct {v1, v0, v2}, Lcom/google/android/location/activity/a/s;-><init>(Lcom/google/android/location/activity/a/t;I)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object v7

    .line 63
    :cond_2
    sget-object v0, Lcom/google/android/location/activity/a/t;->g:Lcom/google/android/location/activity/a/t;

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method
