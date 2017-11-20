.class public final Lcom/google/android/location/ay;
.super Lcom/google/android/location/a;
.source "SourceFile"


# static fields
.field public static final i:Ljava/util/Set;

.field public static final k:Ljava/util/List;


# instance fields
.field private final A:Lcom/google/android/location/at;

.field private final B:Ljava/util/Random;

.field private C:Z

.field private D:Ljava/lang/Integer;

.field private E:Lcom/google/android/location/p/f;

.field private F:Z

.field private G:Z

.field public final j:Ljava/util/Set;

.field public l:J

.field public m:Lcom/google/android/location/g;

.field public n:Z

.field public o:J

.field public p:Lcom/google/android/location/collectionlib/az;

.field public q:Z

.field r:Lcom/google/g/a/b/b/a;

.field public s:Z

.field public t:Lcom/google/android/location/collectionlib/cs;

.field u:J

.field public v:J

.field private final w:Lcom/google/android/location/v;

.field private final x:Lcom/google/android/location/av;

.field private final y:Lcom/google/android/location/s;

.field private final z:Lcom/google/android/location/activity/k;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 62
    new-array v0, v3, [Lcom/google/android/location/collectionlib/cb;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/ay;->i:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    sput-object v0, Lcom/google/android/location/ay;->k:Ljava/util/List;

    new-instance v1, Lcom/google/android/location/p/f;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/location/p/f;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/google/android/location/ay;->k:Ljava/util/List;

    new-instance v1, Lcom/google/android/location/p/f;

    invoke-direct {v1, v5, v3, v6}, Lcom/google/android/location/p/f;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/google/android/location/ay;->k:Ljava/util/List;

    new-instance v1, Lcom/google/android/location/p/f;

    const/16 v2, 0x17

    invoke-direct {v1, v6, v3, v2}, Lcom/google/android/location/p/f;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/v;Lcom/google/android/location/s;Lcom/google/android/location/activity/k;Ljava/util/Random;)V
    .locals 13

    .prologue
    .line 168
    invoke-static {}, Lcom/google/android/location/av;->b()Lcom/google/android/location/av;

    move-result-object v9

    new-instance v12, Lcom/google/android/location/at;

    sget-object v1, Lcom/google/android/location/ay;->k:Ljava/util/List;

    move-object/from16 v0, p6

    invoke-direct {v12, v1, p1, v0}, Lcom/google/android/location/at;-><init>(Ljava/util/List;Lcom/google/android/location/os/at;Lcom/google/android/location/v;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/google/android/location/ay;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/v;Lcom/google/android/location/s;Lcom/google/android/location/av;Lcom/google/android/location/activity/k;Ljava/util/Random;Lcom/google/android/location/at;)V

    .line 179
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/v;Lcom/google/android/location/s;Lcom/google/android/location/av;Lcom/google/android/location/activity/k;Ljava/util/Random;Lcom/google/android/location/at;)V
    .locals 10

    .prologue
    .line 193
    const-string v3, "SCollector"

    sget-object v9, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/a;-><init>(Ljava/lang/String;Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/e;)V

    .line 65
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/android/location/collectionlib/cb;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->g:Lcom/google/android/location/collectionlib/cb;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->a:Lcom/google/android/location/collectionlib/cb;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/location/ay;->j:Ljava/util/Set;

    .line 115
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/ay;->l:J

    .line 117
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/location/ay;->m:Lcom/google/android/location/g;

    .line 118
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/ay;->C:Z

    .line 120
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/ay;->n:Z

    .line 128
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/ay;->o:J

    .line 130
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    .line 136
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/ay;->q:Z

    .line 137
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/location/ay;->r:Lcom/google/g/a/b/b/a;

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/ay;->s:Z

    .line 146
    new-instance v2, Lcom/google/android/location/az;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/location/az;-><init>(Lcom/google/android/location/ay;B)V

    iput-object v2, p0, Lcom/google/android/location/ay;->t:Lcom/google/android/location/collectionlib/cs;

    .line 148
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/ay;->u:J

    .line 151
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/ay;->v:J

    .line 154
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/ay;->F:Z

    .line 157
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/ay;->G:Z

    .line 194
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/location/ay;->w:Lcom/google/android/location/v;

    .line 195
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/location/ay;->x:Lcom/google/android/location/av;

    .line 196
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/location/ay;->y:Lcom/google/android/location/s;

    .line 197
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/location/ay;->z:Lcom/google/android/location/activity/k;

    .line 198
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/location/ay;->A:Lcom/google/android/location/at;

    .line 199
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/location/ay;->B:Ljava/util/Random;

    .line 202
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->j:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {p1, v2}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/google/android/location/ay;->j:Ljava/util/Set;

    sget-object v3, Lcom/google/android/location/collectionlib/cb;->j:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    :goto_0
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->i:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {p1, v2}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/google/android/location/ay;->j:Ljava/util/Set;

    sget-object v3, Lcom/google/android/location/collectionlib/cb;->i:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    return-void

    .line 204
    :cond_2
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {p1, v2}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/google/android/location/ay;->j:Ljava/util/Set;

    sget-object v3, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(JJJIZ)V
    .locals 15

    .prologue
    .line 598
    iget-object v2, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    .line 599
    add-long v4, p1, v2

    .line 600
    add-long v6, p5, v2

    .line 601
    iget-object v3, p0, Lcom/google/android/location/ay;->w:Lcom/google/android/location/v;

    iget-object v2, p0, Lcom/google/android/location/ay;->m:Lcom/google/android/location/g;

    iget-object v8, v3, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    new-instance v9, Lcom/google/g/a/b/b/a;

    sget-object v14, Lcom/google/android/location/n/a;->bp:Lcom/google/g/a/b/b/c;

    invoke-direct {v9, v14}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v14, 0x1

    invoke-virtual {v9, v14, v10, v11}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v12, v13}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    const/4 v10, 0x4

    move/from16 v0, p7

    invoke-virtual {v9, v10, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    if-eqz v2, :cond_0

    const/4 v10, 0x5

    sget-object v11, Lcom/google/android/location/g;->b:Lcom/google/android/location/g;

    if-ne v2, v11, :cond_4

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v9, v10, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    :cond_0
    iget-object v2, v3, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v9}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    invoke-virtual {v3}, Lcom/google/android/location/v;->h()V

    iget-object v9, v3, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v3, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v10, 0x2

    invoke-static {v2, v10}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    iget-object v2, v3, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 602
    iget-object v2, p0, Lcom/google/android/location/ay;->w:Lcom/google/android/location/v;

    invoke-virtual {v2}, Lcom/google/android/location/v;->a()V

    .line 603
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v3, "Collector exits with [%d], time [%s, %s]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    aput-object v10, v8, v9

    const/4 v4, 0x2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v5, v8, v4

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_3

    .line 606
    sub-long v2, p5, p3

    .line 607
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 608
    iget-object v4, p0, Lcom/google/android/location/ay;->e:Lcom/google/android/location/l/a;

    iget-object v5, v4, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    invoke-interface {v5}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    iget-object v5, v4, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    iget-object v5, v5, Lcom/google/android/location/l/b;->d:Lcom/google/android/location/l/d;

    invoke-virtual {v5, v2, v3, v6, v7}, Lcom/google/android/location/l/d;->a(JJ)Z

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_2

    const-string v2, "CollectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "gps tokens left for sensor collection: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    iget-object v5, v5, Lcom/google/android/location/l/b;->d:Lcom/google/android/location/l/d;

    iget-wide v8, v5, Lcom/google/android/location/l/d;->e:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, v4, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/location/l/b;->a(J)V

    .line 611
    :cond_3
    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/google/android/location/ay;->g(Z)V

    .line 612
    return-void

    .line 601
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v9

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v8

    throw v2
.end method

.method static synthetic a(Lcom/google/android/location/ay;JJJI)V
    .locals 11

    .prologue
    .line 58
    const/4 v9, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/android/location/ay;->a(JJJIZ)V

    return-void
.end method

.method private a(Ljava/util/Calendar;J)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 480
    invoke-direct {p0, p2, p3}, Lcom/google/android/location/ay;->h(J)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/location/ay;->d(Z)Lcom/google/android/location/f/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 481
    iget-object v1, p0, Lcom/google/android/location/ay;->A:Lcom/google/android/location/at;

    iget-wide v2, p0, Lcom/google/android/location/ay;->v:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/location/at;->a(Ljava/util/Calendar;J)Lcom/google/android/location/au;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/location/au;->a:Z

    .line 483
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/ay;->h:Lcom/google/android/location/e;

    sget-object v2, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    if-ne v0, v2, :cond_1

    .line 484
    invoke-direct {p0, v5}, Lcom/google/android/location/ay;->e(Z)V

    .line 485
    iget-object v0, p0, Lcom/google/android/location/ay;->A:Lcom/google/android/location/at;

    iget-wide v2, p0, Lcom/google/android/location/ay;->v:J

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/google/android/location/at;->a(Ljava/util/Calendar;JZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/ay;->i(J)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-direct {p0, v4}, Lcom/google/android/location/ay;->e(Z)V

    .line 489
    invoke-direct {p0}, Lcom/google/android/location/ay;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    if-eqz v1, :cond_2

    .line 493
    iget-object v0, p0, Lcom/google/android/location/ay;->A:Lcom/google/android/location/at;

    iget-wide v2, p0, Lcom/google/android/location/ay;->v:J

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/google/android/location/at;->a(Ljava/util/Calendar;JZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/ay;->i(J)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/ay;->A:Lcom/google/android/location/at;

    iget-wide v2, p0, Lcom/google/android/location/ay;->v:J

    invoke-virtual {v0, p1, v2, v3, v5}, Lcom/google/android/location/at;->a(Ljava/util/Calendar;JZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/ay;->i(J)V

    goto :goto_0
.end method

.method private d(Z)Lcom/google/android/location/f/ai;
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 363
    iget-object v0, p0, Lcom/google/android/location/ay;->x:Lcom/google/android/location/av;

    invoke-virtual {v0, p1}, Lcom/google/android/location/av;->a(Z)Lcom/google/android/location/f/ai;

    move-result-object v9

    .line 364
    iget-object v0, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->h()Z

    move-result v10

    .line 365
    iget-object v0, p0, Lcom/google/android/location/ay;->y:Lcom/google/android/location/s;

    iget-object v0, v0, Lcom/google/android/location/s;->n:Lcom/google/g/a/b/b/a;

    if-eqz v0, :cond_1

    move v7, v6

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/ay;->e:Lcom/google/android/location/l/a;

    iget-object v1, v0, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    iget-object v1, v1, Lcom/google/android/location/l/b;->d:Lcom/google/android/location/l/d;

    const-wide/32 v2, 0x493e0

    iget-object v0, v0, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/l/d;->a(JJZ)Z

    move-result v3

    .line 369
    iget-object v0, v9, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/location/ay;->C:Z

    if-eqz v0, :cond_2

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    move v1, v6

    .line 373
    :goto_1
    if-eqz v1, :cond_d

    .line 375
    iget-object v0, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->n()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    move v2, v8

    move v0, v8

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v11, v4, v2

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v7, v8

    .line 365
    goto :goto_0

    :cond_2
    move v1, v8

    .line 369
    goto :goto_1

    :cond_3
    move v0, v8

    .line 376
    :cond_4
    const/4 v2, 0x3

    if-lt v0, v2, :cond_5

    move v0, v6

    .line 377
    :goto_3
    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    :goto_4
    move v8, v0

    .line 380
    :goto_5
    if-nez v6, :cond_c

    .line 391
    iget-object v0, v9, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 392
    iget-object v0, v9, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 407
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    return-object v0

    :cond_5
    move v0, v8

    .line 376
    goto :goto_3

    :cond_6
    move v6, v8

    .line 377
    goto :goto_4

    .line 393
    :cond_7
    if-nez v10, :cond_8

    .line 394
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 395
    :cond_8
    if-nez v7, :cond_9

    .line 396
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 397
    :cond_9
    if-nez v3, :cond_a

    .line 398
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 399
    :cond_a
    if-eqz v8, :cond_b

    .line 400
    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 402
    :cond_b
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    .line 405
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    move v6, v1

    goto :goto_5
.end method

.method private e(Z)V
    .locals 3

    .prologue
    const/16 v2, 0xb4

    .line 504
    iget-boolean v0, p0, Lcom/google/android/location/ay;->n:Z

    if-eq p1, v0, :cond_0

    .line 505
    if-eqz p1, :cond_1

    .line 506
    iget-object v0, p0, Lcom/google/android/location/ay;->z:Lcom/google/android/location/activity/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/location/activity/k;->a(IZ)V

    .line 512
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/location/ay;->n:Z

    .line 514
    :cond_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/ay;->z:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, v2}, Lcom/google/android/location/activity/k;->a(I)V

    goto :goto_0
.end method

.method private f(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 535
    iget-object v0, p0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/ay;->q:Z

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/google/android/location/ay;->r:Lcom/google/g/a/b/b/a;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->e:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iput-object v0, p0, Lcom/google/android/location/ay;->r:Lcom/google/g/a/b/b/a;

    .line 539
    :cond_0
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->d:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 540
    invoke-virtual {v0, v6, p1}, Lcom/google/g/a/b/b/a;->a(IZ)Lcom/google/g/a/b/b/a;

    .line 541
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/location/ay;->o:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 543
    iget-object v1, p0, Lcom/google/android/location/ay;->r:Lcom/google/g/a/b/b/a;

    invoke-virtual {v1, v6, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 545
    :cond_1
    return-void
.end method

.method private g(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 616
    iput-object v4, p0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    .line 617
    iput-boolean v2, p0, Lcom/google/android/location/ay;->s:Z

    .line 618
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/ay;->o:J

    .line 619
    iput-boolean v2, p0, Lcom/google/android/location/ay;->q:Z

    .line 620
    iput-object v4, p0, Lcom/google/android/location/ay;->r:Lcom/google/g/a/b/b/a;

    .line 621
    iput-object v4, p0, Lcom/google/android/location/ay;->D:Ljava/lang/Integer;

    .line 622
    iput-object v4, p0, Lcom/google/android/location/ay;->E:Lcom/google/android/location/p/f;

    .line 623
    if-eqz p1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->g:Lcom/google/android/location/k/k;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 626
    :cond_0
    return-void
.end method

.method private h(J)Z
    .locals 5

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/google/android/location/ay;->v:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/location/ay;->v:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(J)V
    .locals 9

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/google/android/location/ay;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/location/ay;->l:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 327
    :cond_0
    iput-wide p1, p0, Lcom/google/android/location/ay;->l:J

    .line 328
    iget-object v0, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->g:Lcom/google/android/location/k/k;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 329
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v1, "Alarm scheduled at %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v5}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v6

    add-long/2addr v6, p1

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1
    return-void
.end method

.method private i()Z
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/location/ay;->x:Lcom/google/android/location/av;

    invoke-virtual {v0}, Lcom/google/android/location/av;->c()Z

    move-result v0

    .line 346
    if-nez v0, :cond_0

    .line 347
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cantSchedule: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/ay;->x:Lcom/google/android/location/av;

    invoke-virtual {v3}, Lcom/google/android/location/av;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    return v0
.end method

.method private j()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 517
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 520
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 3

    .prologue
    .line 730
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Detected activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 732
    iget-object v0, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/ay;->u:J

    .line 734
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/location/f/bh;)V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 739
    invoke-super {p0, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/bh;)V

    .line 741
    iget-object v0, p0, Lcom/google/android/location/ay;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/ay;->g:Lcom/google/android/location/d;

    iget-object v5, v0, Lcom/google/android/location/d;->d:Lcom/google/android/location/b/aa;

    move v1, v2

    move v3, v2

    .line 746
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/location/f/bh;->a()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 747
    invoke-virtual {p1, v1}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v0

    iget-wide v6, v0, Lcom/google/android/location/f/bb;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v6, v5, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-virtual {v6, v0}, Lcom/google/android/location/b/ab;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/ac;

    if-eqz v0, :cond_3

    iget-object v6, v0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v6, v8}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v0, v0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v8}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v0

    :goto_2
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/google/android/location/ay;->B:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    cmpg-float v0, v6, v0

    if-gez v0, :cond_4

    move v0, v4

    :goto_3
    if-eqz v0, :cond_2

    .line 748
    add-int/lit8 v3, v3, 0x1

    .line 746
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 747
    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    .line 751
    :cond_5
    int-to-long v0, v3

    const-wide/16 v6, 0x3

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 752
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v1, "Got %d votes for sensor collection."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_6
    iget-wide v0, p1, Lcom/google/android/location/f/bh;->a:J

    iput-wide v0, p0, Lcom/google/android/location/ay;->v:J

    goto :goto_0
.end method

.method final a(Lcom/google/android/location/f/g;)V
    .locals 1

    .prologue
    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/ay;->G:Z

    .line 770
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;)V
    .locals 4

    .prologue
    .line 311
    sget-object v0, Lcom/google/android/location/k/k;->g:Lcom/google/android/location/k/k;

    if-ne p1, v0, :cond_0

    .line 312
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/ay;->l:J

    .line 313
    invoke-direct {p0}, Lcom/google/android/location/ay;->j()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/location/ay;->a(Ljava/util/Calendar;J)V

    .line 315
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/google/android/location/ay;->C:Z

    .line 218
    return-void
.end method

.method final b(Z)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/google/android/location/ay;->f(Z)V

    .line 526
    iput-boolean p1, p0, Lcom/google/android/location/ay;->F:Z

    .line 527
    return-void
.end method

.method public final b(J)Z
    .locals 19

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/ay;->G:Z

    if-nez v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/ay;->i()Z

    move-result v4

    if-nez v4, :cond_1

    .line 228
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/location/ay;->G:Z

    .line 230
    const/4 v4, 0x0

    .line 273
    :goto_0
    return v4

    .line 232
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/ay;->j()Ljava/util/Calendar;

    move-result-object v4

    .line 236
    invoke-direct/range {p0 .. p2}, Lcom/google/android/location/ay;->h(J)Z

    move-result v18

    .line 237
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/ay;->l:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/location/ay;->n:Z

    if-nez v5, :cond_3

    .line 239
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/location/ay;->a(Ljava/util/Calendar;J)V

    .line 241
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->A:Lcom/google/android/location/at;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/ay;->v:J

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/location/at;->a(Ljava/util/Calendar;J)Lcom/google/android/location/au;

    move-result-object v14

    .line 243
    iget-object v4, v14, Lcom/google/android/location/au;->c:Lcom/google/android/location/p/f;

    if-nez v4, :cond_d

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->E:Lcom/google/android/location/p/f;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->E:Lcom/google/android/location/p/f;

    invoke-virtual {v5, v4}, Lcom/google/android/location/p/f;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->D:Ljava/lang/Integer;

    if-eqz v5, :cond_10

    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to do collection in the last timespan. Reporting the failure: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/ay;->D:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->D:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v10, p1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/location/ay;->a(JJJIZ)V

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/ay;->E:Lcom/google/android/location/p/f;

    .line 244
    iget-boolean v4, v14, Lcom/google/android/location/au;->a:Z

    if-eqz v4, :cond_c

    .line 246
    iget-object v4, v14, Lcom/google/android/location/au;->b:Lcom/google/android/location/g;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/ay;->m:Lcom/google/android/location/g;

    .line 249
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/location/ay;->d(Z)Lcom/google/android/location/f/ai;

    move-result-object v5

    .line 250
    iget-object v4, v5, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 252
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/ay;->u:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/ay;->u:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_11

    const/4 v4, 0x1

    .line 254
    :goto_3
    if-eqz v4, :cond_16

    .line 256
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v5, "On foot detected. Starting collection."

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/ay;->l:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/location/ay;->l:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v4

    sget-object v5, Lcom/google/android/location/k/k;->g:Lcom/google/android/location/k/k;

    invoke-interface {v4, v5}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    .line 258
    :cond_7
    sget-object v4, Lcom/google/android/location/e;->h:Lcom/google/android/location/e;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/ay;->h:Lcom/google/android/location/e;

    .line 259
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/location/ay;->e(Z)V

    .line 260
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->w:Lcom/google/android/location/v;

    invoke-virtual {v5}, Lcom/google/android/location/v;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->w:Lcom/google/android/location/v;

    invoke-virtual {v5}, Lcom/google/android/location/v;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    sget-object v5, Lcom/google/android/location/collectionlib/cb;->j:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v4, v5}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->j:Lcom/google/android/location/collectionlib/cb;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    sget-object v5, Lcom/google/android/location/collectionlib/cb;->i:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v4, v5}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->i:Lcom/google/android/location/collectionlib/cb;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/ay;->j:Ljava/util/Set;

    const-wide/32 v8, 0x493e0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->n()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    if-eqz v18, :cond_13

    const/16 v4, 0x12

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->y:Lcom/google/android/location/s;

    iget-object v13, v4, Lcom/google/android/location/s;->n:Lcom/google/g/a/b/b/a;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/location/ay;->t:Lcom/google/android/location/collectionlib/cs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v12, v18

    invoke-interface/range {v5 .. v17}, Lcom/google/android/location/os/at;->a(Ljava/util/Set;Ljava/util/Map;JLjava/lang/String;Ljava/lang/Integer;ZLcom/google/g/a/b/b/a;ZLcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    if-eqz v4, :cond_14

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/ay;->o:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/location/ay;->s:Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/location/ay;->q:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v4}, Lcom/google/android/location/collectionlib/az;->a()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/ay;->F:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/location/ay;->f(Z)V

    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Signal collector started, isInsightCollection: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/location/ay;->q:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    :goto_7
    if-nez v4, :cond_c

    .line 261
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v5, "Unable to start collection"

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_b
    sget-object v4, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/ay;->h:Lcom/google/android/location/e;

    .line 263
    const-wide/16 v8, -0x1

    const/16 v12, 0x1d

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v10, p1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/location/ay;->a(JJJIZ)V

    .line 273
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->h:Lcom/google/android/location/e;

    sget-object v5, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    if-eq v4, v5, :cond_18

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 243
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->A:Lcom/google/android/location/at;

    iget-object v5, v14, Lcom/google/android/location/au;->c:Lcom/google/android/location/p/f;

    iget-object v4, v4, Lcom/google/android/location/at;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/p/f;

    iget-wide v8, v5, Lcom/google/android/location/p/f;->a:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/location/p/f;->b(J)Z

    move-result v7

    if-eqz v7, :cond_e

    goto/16 :goto_1

    :cond_f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Did not find parent of subtimespan: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_10
    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v6, "Unable to collect in the last timespan, but the failure reason is null"

    invoke-static {v5, v6}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 252
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 260
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    sget-object v5, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v4, v5}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_13
    const/16 v4, 0xe

    goto/16 :goto_5

    :cond_14
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v5, "Failed to create signal collector."

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 267
    :cond_16
    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/ay;->D:Ljava/lang/Integer;

    goto/16 :goto_8

    .line 270
    :cond_17
    iget-object v4, v5, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/ay;->D:Ljava/lang/Integer;

    goto/16 :goto_8

    .line 273
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 550
    iget-object v0, p0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    if-nez v0, :cond_0

    .line 553
    sget-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/ay;->h:Lcom/google/android/location/e;

    move v0, v1

    .line 581
    :goto_0
    return v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/ay;->x:Lcom/google/android/location/av;

    iget-boolean v3, p0, Lcom/google/android/location/ay;->q:Z

    invoke-virtual {v0, v3}, Lcom/google/android/location/av;->a(Z)Lcom/google/android/location/f/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 559
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    const-string v3, "Bad device conditions, terminated early."

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/location/ay;->s:Z

    .line 563
    iget-object v0, p0, Lcom/google/android/location/ay;->x:Lcom/google/android/location/av;

    invoke-virtual {v0}, Lcom/google/android/location/av;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/location/ay;->f:Z

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    .line 564
    :goto_1
    if-eqz v0, :cond_4

    .line 567
    iget-object v0, p0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->c()V

    .line 571
    invoke-direct {p0, v2}, Lcom/google/android/location/ay;->g(Z)V

    .line 572
    sget-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/ay;->h:Lcom/google/android/location/e;

    move v0, v1

    .line 573
    goto :goto_0

    :cond_3
    move v0, v2

    .line 563
    goto :goto_1

    .line 578
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/ay;->p:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->b()V

    :cond_5
    move v0, v2

    .line 581
    goto :goto_0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 319
    invoke-super {p0}, Lcom/google/android/location/a;->g()V

    .line 320
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/ay;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sensor policy changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/ay;->x:Lcom/google/android/location/av;

    invoke-virtual {v2}, Lcom/google/android/location/av;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/ay;->j()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/ay;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/location/ay;->a(Ljava/util/Calendar;J)V

    .line 322
    return-void
.end method
