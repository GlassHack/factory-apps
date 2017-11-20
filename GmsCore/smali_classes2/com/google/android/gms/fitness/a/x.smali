.class final Lcom/google/android/gms/fitness/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/a/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 18

    .prologue
    .line 153
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 155
    add-int/lit8 v3, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 157
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v12

    .line 158
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v14

    .line 160
    const-wide/16 v6, 0x0

    .line 161
    const-wide/16 v4, 0x1

    .line 162
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 164
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v8, v6

    move-wide v6, v4

    move-wide v4, v2

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 165
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v16, v0

    add-double v8, v8, v16

    .line 166
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 167
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    move-wide v4, v2

    .line 168
    goto :goto_0

    .line 170
    :cond_0
    double-to-float v2, v8

    int-to-float v3, v10

    div-float/2addr v2, v3

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    invoke-virtual {v3, v12, v13, v14, v15}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    const/4 v8, 0x3

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v2, 0x1

    double-to-float v6, v6

    aput v6, v8, v2

    const/4 v2, 0x2

    double-to-float v4, v4

    aput v4, v8, v2

    invoke-virtual {v3, v8}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    .line 174
    return-object v2
.end method
