.class final Lcom/google/android/gms/fitness/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/a/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    .line 118
    const-wide/16 v0, 0x0

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move-wide v6, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 122
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v6, v0

    .line 124
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    .line 125
    goto :goto_1

    :cond_0
    move v0, v3

    .line 116
    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 129
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v5

    .line 130
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v0

    invoke-virtual {v8, v10, v11, v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v5, v1, v3

    long-to-int v3, v6

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 133
    return-object v0
.end method
