.class final Lcom/google/android/gms/fitness/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/a/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 22

    .prologue
    .line 98
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 99
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 100
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 102
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v10

    .line 103
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v12

    .line 105
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 106
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-static {v2}, Lcom/google/android/gms/fitness/a/v;->a(Lcom/google/android/gms/fitness/data/DataPoint;)F

    move-result v2

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    invoke-virtual {v3, v10, v11, v12, v13}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v5, 0x2

    aput v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    .line 146
    :goto_0
    return-object v2

    .line 114
    :cond_0
    sub-long v14, v12, v10

    .line 117
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 119
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 120
    invoke-static {v2}, Lcom/google/android/gms/fitness/a/v;->a(Lcom/google/android/gms/fitness/data/DataPoint;)F

    move-result v3

    .line 122
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-object v8, v2

    move v5, v3

    move v4, v3

    .line 126
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 128
    invoke-static {v2}, Lcom/google/android/gms/fitness/a/v;->a(Lcom/google/android/gms/fitness/data/DataPoint;)F

    move-result v9

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v18

    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    .line 131
    long-to-double v0, v14

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    add-float/2addr v5, v9

    float-to-double v0, v5

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    add-double v6, v6, v18

    .line 133
    cmpg-float v5, v9, v4

    if-gez v5, :cond_1

    move v4, v9

    .line 136
    :cond_1
    cmpl-float v5, v9, v3

    if-lez v5, :cond_2

    move v3, v9

    .line 140
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/fitness/a/v;->a(Lcom/google/android/gms/fitness/data/DataPoint;)F

    move-result v5

    move-object v8, v2

    .line 141
    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v8, 0x0

    double-to-float v6, v6

    aput v6, v5, v8

    const/4 v6, 0x1

    aput v3, v5, v6

    const/4 v3, 0x2

    aput v4, v5, v3

    invoke-virtual {v2, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    goto :goto_0
.end method
