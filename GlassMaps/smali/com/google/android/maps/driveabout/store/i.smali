.class public abstract Lcom/google/android/maps/driveabout/store/i;
.super Lcom/google/android/maps/driveabout/util/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/ax;
.implements Lcom/google/android/maps/driveabout/store/bv;
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/store/bs;

.field protected b:Lcom/google/android/maps/driveabout/store/m;

.field volatile c:I

.field protected d:Lcom/google/googlenav/common/a;

.field volatile e:I

.field volatile f:I

.field private g:Lcom/google/android/maps/driveabout/store/v;

.field private volatile h:Z

.field private final i:Z

.field private j:I

.field private k:Ljava/util/Locale;

.field private volatile l:Lcom/google/android/maps/driveabout/store/n;

.field private final m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Looper;

.field private p:Z

.field private final q:Ljava/util/List;

.field private final r:Lcom/google/android/maps/driveabout/util/g;

.field private final s:Ljava/util/Map;

.field private final t:I

.field private u:Z

.field private final v:Ljava/io/File;

.field private w:Lcom/google/googlenav/h;

.field private final x:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bs;Lcom/google/android/maps/driveabout/store/v;IZILjava/util/Locale;Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    .line 140
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    .line 156
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    .line 202
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    .line 203
    iput-object p4, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    .line 204
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/i;->h:Z

    .line 205
    iput p5, p0, Lcom/google/android/maps/driveabout/store/i;->t:I

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/i;->j:I

    .line 207
    iput-boolean p6, p0, Lcom/google/android/maps/driveabout/store/i;->i:Z

    .line 208
    iput-object p8, p0, Lcom/google/android/maps/driveabout/store/i;->k:Ljava/util/Locale;

    .line 209
    iput-object p9, p0, Lcom/google/android/maps/driveabout/store/i;->v:Ljava/io/File;

    .line 210
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 211
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->g()Lcom/google/android/maps/driveabout/store/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    .line 212
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/store/m;->a(Lcom/google/android/maps/driveabout/store/m;Lcom/google/android/maps/driveabout/store/i;)Lcom/google/android/maps/driveabout/store/i;

    .line 213
    new-instance v0, Lcom/google/android/maps/driveabout/store/j;

    invoke-direct {v0, p0, p7}, Lcom/google/android/maps/driveabout/store/j;-><init>(Lcom/google/android/maps/driveabout/store/i;I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    .line 221
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/store/v;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    .line 346
    :cond_0
    iput p1, p0, Lcom/google/android/maps/driveabout/store/i;->j:I

    .line 348
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/i;->i:Z

    if-eqz v1, :cond_3

    .line 349
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/v;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/bs;->a()Z

    .line 355
    :cond_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->i()V

    .line 357
    :cond_3
    return-void
.end method

.method private a(II)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1496
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->q()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x8

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 1497
    invoke-static {}, Lcom/google/googlenav/common/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    :goto_0
    return-void

    .line 1501
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    move v0, v1

    .line 1502
    :goto_1
    const-string v3, "v="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1503
    const-string v3, "d="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1504
    invoke-static {}, Lcom/google/android/maps/driveabout/model/be;->e()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xb

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1505
    const-string v4, "z="

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xb

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1506
    const/16 v5, 0x6d

    const-string v6, "u"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    const/4 v0, 0x2

    aput-object v4, v7, v0

    .line 1508
    invoke-static {v7}, Lcom/google/googlenav/common/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    invoke-static {v5, v6, v0}, Lcom/google/googlenav/common/h;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1501
    goto :goto_1
.end method

.method private a(IIIIII)V
    .locals 12

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->q()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x8

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1459
    invoke-static {}, Lcom/google/googlenav/common/d;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1483
    :goto_0
    return-void

    .line 1463
    :cond_0
    const-string v1, "t="

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1465
    const-string v2, "f="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1467
    const-string v3, "p="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1469
    const-string v4, "r="

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xb

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1471
    const-string v5, "n="

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xb

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1473
    const-string v6, "v="

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xb

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1475
    const-string v7, "d="

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1476
    invoke-static {}, Lcom/google/android/maps/driveabout/model/be;->e()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0xb

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1477
    const/16 v8, 0x6d

    const-string v9, "b"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v1, 0x2

    aput-object v3, v10, v1

    const/4 v1, 0x3

    aput-object v4, v10, v1

    const/4 v1, 0x4

    aput-object v5, v10, v1

    const/4 v1, 0x5

    aput-object v6, v10, v1

    const/4 v1, 0x6

    aput-object v7, v10, v1

    .line 1479
    invoke-static {v10}, Lcom/google/googlenav/common/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1477
    invoke-static {v8, v9, v1}, Lcom/google/googlenav/common/h;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/model/av;Z)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1114
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->h()I

    move-result v1

    .line 1116
    const/4 v0, 0x0

    .line 1118
    if-eq v1, v5, :cond_2

    .line 1119
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/model/av;->b()I

    move-result v2

    if-eq v1, v2, :cond_2

    move v0, v4

    .line 1134
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1136
    new-instance v2, Lcom/google/android/maps/driveabout/store/l;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/store/l;-><init>(Lcom/google/android/maps/driveabout/store/i;)V

    .line 1147
    new-instance v0, Lcom/google/android/maps/driveabout/store/p;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/model/av;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v1

    sget-object v3, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->NORMAL:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;ZI)V

    .line 1150
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1152
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/model/av;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/maps/driveabout/store/i;->a(II)V

    .line 1156
    :cond_1
    return-void

    .line 1122
    :cond_2
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {p1, v1}, Lcom/google/android/maps/driveabout/model/av;->b(Lcom/google/googlenav/common/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/model/av;->c()I

    move-result v5

    move v0, v4

    .line 1130
    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/model/aw;)V
    .locals 4

    .prologue
    .line 454
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    monitor-enter v2

    .line 455
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bw;

    .line 457
    if-eqz v0, :cond_0

    move v0, v1

    .line 455
    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 460
    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->j()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/i;Lcom/google/android/maps/driveabout/model/aw;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/model/aw;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/i;Lcom/google/android/maps/driveabout/store/m;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/m;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/i;Lcom/google/android/maps/driveabout/store/p;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/store/p;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/m;)V
    .locals 16

    .prologue
    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    .line 740
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    if-eqz v1, :cond_0

    .line 742
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    .line 743
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/g;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/g;->removeYoungest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/store/p;

    .line 745
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/store/p;)V

    goto :goto_0

    .line 751
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/m;->a()I

    move-result v1

    .line 752
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->h()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v2

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->h()I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/maps/driveabout/store/i;->i:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x46

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Received version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Cached version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Clear: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 754
    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/i;->a(I)V

    .line 759
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request not found in list of outstanding requests"

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_2
    :goto_1
    return-void

    .line 765
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v9

    .line 767
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/m;->b()I

    move-result v2

    .line 768
    const/4 v3, 0x0

    .line 769
    const/4 v4, 0x0

    .line 770
    const/4 v5, 0x0

    .line 771
    const/4 v7, 0x0

    .line 772
    const/4 v6, 0x0

    .line 774
    const/4 v1, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/m;->b()I

    move-result v8

    if-ge v1, v8, :cond_d

    .line 775
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v10

    .line 776
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v11

    .line 777
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->e()I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_4

    .line 778
    add-int/lit8 v7, v7, 0x1

    .line 780
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/maps/driveabout/store/i;->c:I

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/maps/driveabout/store/i;->c:I

    .line 783
    :try_start_0
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 784
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/maps/driveabout/store/i;->f:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/maps/driveabout/store/i;->f:I

    .line 793
    :goto_3
    const/4 v8, 0x0

    .line 794
    if-eqz v9, :cond_5

    .line 795
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->c(I)[B

    move-result-object v12

    .line 796
    if-eqz v12, :cond_5

    .line 797
    array-length v8, v12

    new-array v8, v8, [B

    .line 798
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v12

    invoke-static {v12, v13, v8, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->b(I)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v12

    .line 803
    if-eqz v12, :cond_a

    .line 804
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v13, :cond_6

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v13

    if-nez v13, :cond_6

    .line 805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v13, v11, v12}, Lcom/google/android/maps/driveabout/store/bs;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V

    .line 807
    :cond_6
    if-eqz v9, :cond_7

    .line 808
    invoke-interface {v9, v11, v12, v8}, Lcom/google/android/maps/driveabout/store/v;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;[B)V

    .line 810
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v10, v8, v12}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    .line 811
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 812
    add-int/lit8 v4, v4, 0x1

    .line 774
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 786
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/maps/driveabout/store/i;->e:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/maps/driveabout/store/i;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 844
    :catch_0
    move-exception v8

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x18

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": Could not parse tile: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 846
    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    goto :goto_4

    .line 814
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 820
    :cond_a
    :try_start_1
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 821
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/model/aw;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 822
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 836
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/model/aw;)V

    .line 837
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 840
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/model/aw;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 841
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 849
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/maps/driveabout/store/i;->f:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/maps/driveabout/store/i;->e:I

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x49

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Response received. Total tiles: prefetch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " normal: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/n;->c()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 859
    :cond_e
    new-instance v1, Lcom/google/android/maps/driveabout/store/n;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/store/n;-><init>(Lcom/google/android/maps/driveabout/store/i;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    .line 863
    :cond_f
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/i;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    .line 864
    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/store/i;->a(IIIIII)V

    goto/16 :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/store/p;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->l:Lcom/google/android/maps/driveabout/store/n;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/n;->b()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/model/aw;)V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/store/bs;->a_(Lcom/google/android/maps/driveabout/model/aw;)V

    .line 878
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    .line 879
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/p;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1036
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v4

    .line 1038
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v1, :cond_3

    .line 1039
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v1, v4}, Lcom/google/android/maps/driveabout/store/bs;->c(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v1

    .line 1040
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1, v5}, Lcom/google/android/maps/driveabout/model/av;->a(Lcom/google/googlenav/common/a;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1041
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v4, v1}, Lcom/google/android/maps/driveabout/store/bs;->a(Lcom/google/android/maps/driveabout/model/av;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1042
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    :goto_0
    move v0, v2

    .line 1104
    :goto_1
    return v0

    .line 1044
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    if-eqz v4, :cond_1

    .line 1045
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    invoke-virtual {v4}, Lcom/google/googlenav/h;->a()V

    .line 1047
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/model/av;Z)V

    .line 1048
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1049
    :goto_2
    invoke-virtual {p1, v3, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1048
    goto :goto_2

    .line 1054
    :cond_3
    if-eqz p2, :cond_9

    .line 1056
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v1

    .line 1057
    if-eqz v1, :cond_9

    .line 1058
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1059
    invoke-interface {v1, v4}, Lcom/google/android/maps/driveabout/store/v;->b(Lcom/google/android/maps/driveabout/model/aw;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1060
    invoke-virtual {p1, v3, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    move v0, v2

    .line 1061
    goto :goto_1

    .line 1064
    :cond_4
    invoke-interface {v1, v4}, Lcom/google/android/maps/driveabout/store/v;->c(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0, v5}, Lcom/google/android/maps/driveabout/model/av;->a(Lcom/google/googlenav/common/a;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1066
    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/store/v;->a(Lcom/google/android/maps/driveabout/model/av;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1070
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    if-eqz v0, :cond_5

    .line 1071
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->c()V

    .line 1073
    :cond_5
    invoke-direct {p0, p1, v4}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/model/aw;)V

    :goto_3
    move v0, v2

    .line 1087
    goto :goto_1

    .line 1078
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    if-eqz v1, :cond_7

    .line 1079
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->b()V

    .line 1081
    :cond_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v1, :cond_8

    .line 1082
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v1, v4, v0}, Lcom/google/android/maps/driveabout/store/bs;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V

    .line 1084
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/model/av;Z)V

    .line 1085
    invoke-virtual {p1, v3, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    goto :goto_3

    .line 1092
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    if-eqz v0, :cond_a

    .line 1093
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->c()V

    .line 1103
    :cond_a
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/store/p;->a(I)V

    move v0, v3

    .line 1104
    goto/16 :goto_1
.end method

.method private b(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;
    .locals 3

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 916
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v1, :cond_1

    .line 917
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/store/bs;->b(Lcom/google/android/maps/driveabout/model/aw;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/store/bs;->c(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v0

    .line 928
    :cond_0
    :goto_0
    return-object v0

    .line 922
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v1

    .line 923
    if-eqz v1, :cond_0

    .line 924
    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/store/v;->b(Lcom/google/android/maps/driveabout/model/aw;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/store/v;->c(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->l()V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/store/p;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 653
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    .line 654
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v1

    .line 655
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/p;

    .line 656
    if-eqz v0, :cond_1

    .line 657
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/p;->a(Lcom/google/android/maps/driveabout/store/p;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 659
    invoke-direct {p0, p1, v4}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    :cond_2
    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/i;->c(Lcom/google/android/maps/driveabout/store/p;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    goto :goto_0

    .line 664
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 665
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 672
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/p;

    .line 673
    if-eqz v0, :cond_4

    .line 674
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/p;->a(Lcom/google/android/maps/driveabout/store/p;)V

    goto :goto_0

    .line 676
    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->r:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/m;->a(Lcom/google/android/maps/driveabout/store/p;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 681
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->k()V

    .line 683
    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/m;->b(Lcom/google/android/maps/driveabout/store/p;)V

    .line 684
    iget v0, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    .line 685
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/m;->c()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 686
    :cond_7
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->k()V

    goto :goto_0

    .line 687
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->p:Z

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 690
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/store/i;->p:Z

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/store/p;Lcom/google/android/maps/driveabout/model/aw;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 886
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v1

    .line 887
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/model/av;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 888
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/model/av;->c(Lcom/google/googlenav/common/a;)V

    .line 889
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 890
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v2, p2, v1}, Lcom/google/android/maps/driveabout/store/bs;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v2

    .line 893
    if-eqz v2, :cond_1

    .line 899
    invoke-interface {v2, p2}, Lcom/google/android/maps/driveabout/store/v;->a(Lcom/google/android/maps/driveabout/model/aw;)[B

    move-result-object v3

    .line 900
    if-eqz v3, :cond_1

    .line 901
    invoke-interface {v2, p2, v1, v3}, Lcom/google/android/maps/driveabout/store/v;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;[B)V

    .line 904
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/p;->a(ILcom/google/android/maps/driveabout/model/av;)V

    .line 905
    const/4 v0, 0x1

    .line 907
    :cond_2
    return v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->m()V

    return-void
.end method

.method private static c(Lcom/google/android/maps/driveabout/store/p;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 697
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 699
    :goto_0
    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/p;->c()Z

    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 697
    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/store/i;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/maps/driveabout/store/i;->t:I

    return v0
.end method

.method private h()I
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/v;->b()I

    move-result v0

    .line 317
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/store/i;->j:I

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 441
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    monitor-enter v2

    .line 442
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bw;

    .line 444
    if-eqz v0, :cond_0

    .line 445
    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/store/bw;->a(Lcom/google/android/maps/driveabout/store/bv;)V

    move v0, v1

    .line 442
    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->p:Z

    .line 712
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->k()V

    .line 713
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    .line 721
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/m;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 722
    new-instance v0, Lcom/google/android/maps/driveabout/g/g;

    const-string v1, "addRequest"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/g/g;-><init>(Ljava/lang/String;Lcom/google/googlenav/datarequest/d;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 725
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    .line 726
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->g()Lcom/google/android/maps/driveabout/store/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    .line 728
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->b:Lcom/google/android/maps/driveabout/store/m;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/store/m;->a(Lcom/google/android/maps/driveabout/store/m;Lcom/google/android/maps/driveabout/store/i;)Lcom/google/android/maps/driveabout/store/i;

    .line 730
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 991
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    .line 993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->u:Z

    .line 994
    return-void
.end method

.method private m()V
    .locals 5

    .prologue
    .line 1000
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/i;->n()V

    .line 1004
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1006
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1008
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/m;

    .line 1009
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/m;->b()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1010
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v3

    .line 1011
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/i;->s:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/p;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget v3, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    .line 1013
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/m;->a(I)Lcom/google/android/maps/driveabout/store/p;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/store/i;->b(Lcom/google/android/maps/driveabout/store/p;)V

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    :cond_1
    return-void
.end method

.method private final n()V
    .locals 2

    .prologue
    .line 1163
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1165
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on DashServerTileStore thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_0
    return-void
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 1440
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->b()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->b()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LABELS_ONLY:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/model/aw;Z)Lcom/google/android/maps/driveabout/model/av;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Lcom/google/android/maps/driveabout/store/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/o;-><init>(Lcom/google/android/maps/driveabout/store/j;)V

    .line 266
    new-instance v1, Lcom/google/android/maps/driveabout/store/p;

    invoke-direct {v1, p1, v0}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;)V

    .line 267
    invoke-direct {p0, v1, p2}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;Z)Z

    .line 268
    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/o;->a(Lcom/google/android/maps/driveabout/store/o;)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 583
    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->c()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 590
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->o:Landroid/os/Looper;

    .line 591
    new-instance v0, Lcom/google/android/maps/driveabout/store/k;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/store/k;-><init>(Lcom/google/android/maps/driveabout/store/i;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    .line 618
    monitor-enter p0

    .line 619
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 620
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->v:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/store/v;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to init disk cache"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->k:Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/store/v;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->k:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/store/v;->a(Ljava/util/Locale;)Z

    .line 632
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->h:Z

    .line 638
    :cond_2
    monitor-enter p0

    .line 639
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 640
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 641
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 642
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 640
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;)V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/google/android/maps/driveabout/store/p;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;)V

    .line 254
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/p;)V

    .line 255
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;Z)V
    .locals 6

    .prologue
    .line 515
    new-instance v0, Lcom/google/android/maps/driveabout/store/p;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;ZI)V

    .line 517
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/store/bw;)V
    .locals 3

    .prologue
    .line 422
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->x:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/googlenav/h;)V
    .locals 0

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/i;->w:Lcom/google/googlenav/h;

    .line 1433
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    .line 470
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->start()V

    .line 473
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 479
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 481
    :goto_1
    return-void

    .line 477
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->o:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->o:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->o:Landroid/os/Looper;

    .line 491
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->a:Lcom/google/android/maps/driveabout/store/bs;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/bs;->a()Z

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->f()Lcom/google/android/maps/driveabout/store/v;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/v;->d()V

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    .line 499
    return-void

    .line 493
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public final e()J
    .locals 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k()J

    move-result-wide v0

    .line 525
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->m:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 526
    invoke-virtual {v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/store/i;->c:I

    if-nez v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/i;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 530
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/maps/driveabout/store/v;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->h:Z

    if-nez v0, :cond_1

    .line 1175
    monitor-enter p0

    .line 1177
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/i;->h:Z

    if-nez v0, :cond_0

    .line 1178
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1181
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1182
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    :goto_1
    return-object v0

    .line 1184
    :cond_0
    monitor-exit p0

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->g:Lcom/google/android/maps/driveabout/store/v;

    goto :goto_1

    .line 1184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract g()Lcom/google/android/maps/driveabout/store/m;
.end method

.method public onComplete(Lcom/google/googlenav/datarequest/d;)V
    .locals 3

    .prologue
    .line 545
    instance-of v0, p1, Lcom/google/android/maps/driveabout/store/m;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/store/m;

    .line 546
    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/m;->a(Lcom/google/android/maps/driveabout/store/m;)Lcom/google/android/maps/driveabout/store/i;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    :cond_0
    return-void
.end method

.method public onNetworkError(IZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/i;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_1

    const-string v2, " : "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Network Error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/i;->n:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 562
    return-void

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public onPermanentFailure(Lcom/google/googlenav/datarequest/d;)V
    .locals 0

    .prologue
    .line 571
    return-void
.end method
