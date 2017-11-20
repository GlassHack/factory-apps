.class public final Lcom/google/android/location/activity/av;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/g/a/b/b/a;III)Ljava/util/List;
    .locals 16

    .prologue
    .line 75
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 76
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 77
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    .line 78
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v9

    .line 80
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    .line 81
    const/4 v3, 0x0

    :goto_1
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 82
    move/from16 v0, p1

    invoke-virtual {v9, v0, v3}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v7

    .line 83
    const/4 v6, 0x3

    new-array v10, v6, [F

    .line 84
    const/4 v6, 0x0

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v11

    aput v11, v10, v6

    .line 85
    const/4 v6, 0x1

    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v11

    aput v11, v10, v6

    .line 86
    const/4 v6, 0x2

    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v11

    aput v11, v10, v6

    .line 87
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v6

    .line 88
    :goto_2
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v7

    .line 89
    :goto_3
    int-to-long v12, v6

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    add-long/2addr v4, v12

    int-to-long v6, v7

    add-long/2addr v4, v6

    .line 90
    new-instance v6, Lcom/google/android/location/d/i;

    invoke-direct {v6, v4, v5, v10}, Lcom/google/android/location/d/i;-><init>(J[F)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    :cond_0
    const/4 v6, 0x0

    goto :goto_2

    .line 88
    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    .line 76
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 95
    :cond_3
    return-object v8
.end method
