.class final Lcom/google/android/gms/fitness/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/a/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 137
    const/high16 v3, 0x42b40000    # 90.0f

    .line 138
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 139
    const/high16 v1, 0x43340000    # 180.0f

    .line 140
    const/high16 v0, -0x3ccc0000    # -180.0f

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 143
    invoke-virtual {v0, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 145
    invoke-virtual {v0, v8}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 147
    invoke-virtual {v0, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 149
    invoke-virtual {v0, v10}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v1, v0

    .line 151
    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v5

    .line 154
    const/4 v0, 0x4

    new-array v0, v0, [F

    aput v4, v0, v7

    aput v2, v0, v8

    aput v3, v0, v9

    aput v1, v0, v10

    invoke-virtual {v5, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 156
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v2

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v0

    .line 158
    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 159
    return-object v5
.end method
