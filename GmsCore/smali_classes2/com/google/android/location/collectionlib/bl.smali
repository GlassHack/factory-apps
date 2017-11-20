.class final Lcom/google/android/location/collectionlib/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/location/collectionlib/bv;

.field b:Lcom/google/android/location/collectionlib/ak;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/google/android/location/collectionlib/ap;

.field private e:Lcom/google/android/location/p/a/c;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/google/android/location/p/a/c;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bl;->c:Landroid/os/Handler;

    .line 38
    invoke-static {p2}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bl;->e:Lcom/google/android/location/p/a/c;

    .line 39
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bl;->b:Lcom/google/android/location/collectionlib/ak;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bl;->b:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/ak;->a(Lcom/google/android/location/collectionlib/bz;)V

    .line 124
    :cond_0
    return-void
.end method

.method final a(Landroid/content/Context;Lcom/google/android/location/collectionlib/ai;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/ao;)Z
    .locals 29

    .prologue
    .line 80
    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->a()Lcom/google/android/location/p/j;

    move-result-object v9

    .line 81
    const/16 v28, 0x0

    .line 82
    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->d()Lcom/google/android/location/collectionlib/aj;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/collectionlib/aj;->d:Lcom/google/android/location/collectionlib/aj;

    if-ne v2, v3, :cond_1

    .line 83
    new-instance v2, Lcom/google/android/location/collectionlib/cc;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Lcom/google/android/location/collectionlib/cc;-><init>(Lcom/google/android/location/collectionlib/ao;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/bl;->a:Lcom/google/android/location/collectionlib/bv;

    .line 89
    :goto_0
    new-instance v2, Lcom/google/android/location/collectionlib/ak;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/bl;->a:Lcom/google/android/location/collectionlib/bv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/collectionlib/bl;->c:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/collectionlib/bl;->e:Lcom/google/android/location/p/a/c;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/location/collectionlib/ak;-><init>(Lcom/google/android/location/collectionlib/bv;Landroid/os/Handler;ILcom/google/android/location/p/a/c;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/bl;->b:Lcom/google/android/location/collectionlib/ak;

    .line 91
    new-instance v10, Lcom/google/android/location/collectionlib/ap;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->c()Ljava/util/Set;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->n()Ljava/util/Map;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->h()Z

    move-result v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->g()J

    move-result-wide v15

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->i()Lcom/google/android/location/collectionlib/SensorScannerConfig;

    move-result-object v17

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->f()J

    move-result-wide v20

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->k()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bl;->b:Lcom/google/android/location/collectionlib/ak;

    move-object/from16 v23, v0

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->l()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bl;->e:Lcom/google/android/location/p/a/c;

    move-object/from16 v26, v0

    move-object/from16 v11, p1

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v25, p7

    move-object/from16 v27, v9

    invoke-direct/range {v10 .. v27}, Lcom/google/android/location/collectionlib/ap;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;ZJLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;JZLcom/google/android/location/collectionlib/ak;ZLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    .line 99
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bl;->e:Lcom/google/android/location/p/a/c;

    const-string v3, "Real collector stared with config: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 100
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/ap;->c()I

    move-result v2

    if-lez v2, :cond_5

    .line 101
    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    new-instance v3, Lcom/google/android/location/collectionlib/bg;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/collectionlib/bl;->b:Lcom/google/android/location/collectionlib/ak;

    invoke-direct {v3, v4, v5}, Lcom/google/android/location/collectionlib/bg;-><init>(Lcom/google/android/location/collectionlib/bz;Lcom/google/android/location/collectionlib/ak;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/location/collectionlib/ap;->a(Lcom/google/android/location/collectionlib/g;Lcom/google/android/location/collectionlib/ca;)V

    .line 114
    :goto_1
    const/4 v2, 0x1

    .line 116
    :goto_2
    return v2

    .line 85
    :cond_1
    sget-object v2, Lcom/google/android/location/collectionlib/bm;->a:[I

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->d()Lcom/google/android/location/collectionlib/aj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/location/collectionlib/aj;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v3, Lcom/google/android/location/collectionlib/bh;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bl;->e:Lcom/google/android/location/p/a/c;

    move-object/from16 v0, p7

    invoke-direct {v3, v0, v2}, Lcom/google/android/location/collectionlib/bh;-><init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;)V

    .line 86
    :goto_3
    new-instance v2, Lcom/google/android/location/collectionlib/av;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/location/collectionlib/bl;->e:Lcom/google/android/location/p/a/c;

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/collectionlib/av;-><init>(Lcom/google/android/location/collectionlib/bx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/a/c;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/bl;->a:Lcom/google/android/location/collectionlib/bv;

    goto/16 :goto_0

    .line 85
    :pswitch_0
    new-instance v2, Lcom/google/android/location/collectionlib/bb;

    const-string v3, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->j()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/collectionlib/bl;->e:Lcom/google/android/location/p/a/c;

    new-instance v8, Lcom/google/android/location/collectionlib/cj;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->o()Z

    move-result v6

    invoke-direct {v8, v6}, Lcom/google/android/location/collectionlib/cj;-><init>(Z)V

    move-object/from16 v6, p7

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/collectionlib/bb;-><init>(Landroid/os/PowerManager;Ljava/lang/String;[BLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/collectionlib/cj;Lcom/google/android/location/p/j;)V

    move-object v3, v2

    goto :goto_3

    :pswitch_1
    new-instance v10, Lcom/google/android/location/collectionlib/bq;

    sget-object v12, Lcom/google/android/location/collectionlib/bt;->a:Lcom/google/android/location/collectionlib/bt;

    new-instance v13, Lcom/google/android/location/collectionlib/cj;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->o()Z

    move-result v2

    invoke-direct {v13, v2}, Lcom/google/android/location/collectionlib/cj;-><init>(Z)V

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->e()Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->j()[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/collectionlib/bl;->e:Lcom/google/android/location/p/a/c;

    move-object/from16 v17, v0

    move-object/from16 v11, p1

    move-object/from16 v16, p7

    move-object/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/google/android/location/collectionlib/bq;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/bt;Lcom/google/android/location/collectionlib/cj;Ljava/lang/String;[BLcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V

    move-object v3, v10

    goto :goto_3

    .line 104
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->i()Lcom/google/android/location/collectionlib/SensorScannerConfig;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    new-instance v3, Lcom/google/android/location/collectionlib/as;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/collectionlib/bl;->b:Lcom/google/android/location/collectionlib/ak;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->i()Lcom/google/android/location/collectionlib/SensorScannerConfig;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/location/collectionlib/as;-><init>(Lcom/google/android/location/collectionlib/bz;Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/SensorScannerConfig;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/location/collectionlib/ap;->a(Lcom/google/android/location/collectionlib/g;Lcom/google/android/location/collectionlib/ca;)V

    goto/16 :goto_1

    .line 107
    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/location/collectionlib/ap;->a(Lcom/google/android/location/collectionlib/ca;)V

    goto/16 :goto_1

    .line 110
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    new-instance v3, Lcom/google/android/location/collectionlib/cx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/collectionlib/bl;->d:Lcom/google/android/location/collectionlib/ap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/collectionlib/bl;->b:Lcom/google/android/location/collectionlib/ak;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/location/collectionlib/ai;->g()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/location/collectionlib/cx;-><init>(Lcom/google/android/location/collectionlib/bz;Lcom/google/android/location/collectionlib/ak;J)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/location/collectionlib/ap;->a(Lcom/google/android/location/collectionlib/g;Lcom/google/android/location/collectionlib/ca;)V

    goto/16 :goto_1

    :cond_5
    move/from16 v2, v28

    goto/16 :goto_2

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
