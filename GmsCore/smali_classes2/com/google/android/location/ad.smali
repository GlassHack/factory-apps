.class public final Lcom/google/android/location/ad;
.super Lcom/google/android/location/a;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/Set;


# instance fields
.field public final i:Lcom/google/android/location/collectionlib/ao;

.field public k:Lcom/google/android/location/collectionlib/az;

.field public l:J

.field public m:J

.field private final n:Lcom/google/android/location/v;

.field private final o:Lcom/google/android/location/av;

.field private final p:Lcom/google/android/location/ac;

.field private final q:Lcom/google/android/location/af;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->h:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->g:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/ad;->j:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/v;)V
    .locals 11

    .prologue
    .line 58
    invoke-static {}, Lcom/google/android/location/av;->b()Lcom/google/android/location/av;

    move-result-object v8

    new-instance v9, Lcom/google/android/location/ac;

    sget-object v1, Lcom/google/android/location/ay;->k:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/p/f;

    invoke-static {}, Lcom/google/android/location/av;->b()Lcom/google/android/location/av;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-direct {v9, p1, v1, v0, v2}, Lcom/google/android/location/ac;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/p/f;Lcom/google/android/location/v;Lcom/google/android/location/av;)V

    new-instance v10, Lcom/google/android/location/af;

    move-object/from16 v0, p6

    invoke-direct {v10, v0, p1}, Lcom/google/android/location/af;-><init>(Lcom/google/android/location/v;Lcom/google/android/location/os/at;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/location/ad;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/v;Lcom/google/android/location/av;Lcom/google/android/location/ac;Lcom/google/android/location/af;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/v;Lcom/google/android/location/av;Lcom/google/android/location/ac;Lcom/google/android/location/af;)V
    .locals 10

    .prologue
    .line 71
    const-string v3, "IOCollector"

    sget-object v9, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/a;-><init>(Ljava/lang/String;Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/e;)V

    .line 35
    new-instance v2, Lcom/google/android/location/ae;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/location/ae;-><init>(Lcom/google/android/location/ad;B)V

    iput-object v2, p0, Lcom/google/android/location/ad;->i:Lcom/google/android/location/collectionlib/ao;

    .line 45
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/ad;->l:J

    .line 53
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/google/android/location/ad;->m:J

    .line 72
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/location/ad;->n:Lcom/google/android/location/v;

    .line 73
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/location/ad;->o:Lcom/google/android/location/av;

    .line 74
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/location/ad;->p:Lcom/google/android/location/ac;

    .line 75
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/location/ad;->q:Lcom/google/android/location/af;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/ad;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/ad;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/location/ad;)Lcom/google/android/location/af;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/location/ad;->q:Lcom/google/android/location/af;

    return-object v0
.end method

.method private d(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 217
    iput-object v4, p0, Lcom/google/android/location/ad;->k:Lcom/google/android/location/collectionlib/az;

    .line 218
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/ad;->l:J

    .line 219
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/location/ad;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->j:Lcom/google/android/location/k/k;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(J)Z
    .locals 11

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/android/location/ad;->m:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/location/ad;->m:J

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gtz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/location/ad;->m:J

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/google/android/location/ad;->o:Lcom/google/android/location/av;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/av;->a(Z)Lcom/google/android/location/f/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/ad;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->h()Z

    move-result v1

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    .line 88
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/location/ad;->m:J

    .line 89
    iget-object v0, p0, Lcom/google/android/location/ad;->n:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->j()V

    .line 90
    new-instance v3, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    sget-object v0, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/location/ad;->b:Lcom/google/android/location/os/at;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/location/ad;->j:Ljava/util/Set;

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/location/ad;->i:Lcom/google/android/location/collectionlib/ao;

    iget-object v8, p0, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface/range {v0 .. v9}, Lcom/google/android/location/os/at;->a(ZLjava/util/Set;Ljava/util/Map;JLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/ad;->k:Lcom/google/android/location/collectionlib/az;

    iget-object v0, p0, Lcom/google/android/location/ad;->k:Lcom/google/android/location/collectionlib/az;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/ad;->k:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->a()V

    iput-wide p1, p0, Lcom/google/android/location/ad;->l:J

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/google/android/location/ad;->k:Lcom/google/android/location/collectionlib/az;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    .line 91
    sget-object v0, Lcom/google/android/location/e;->i:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/ad;->h:Lcom/google/android/location/e;

    .line 113
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/google/android/location/ad;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->i:Lcom/google/android/location/e;

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/location/ad;->m:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/ad;->o:Lcom/google/android/location/av;

    invoke-virtual {v0}, Lcom/google/android/location/av;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/google/android/location/ad;->p:Lcom/google/android/location/ac;

    invoke-virtual {v0}, Lcom/google/android/location/ac;->a()Lcom/google/android/location/f/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/ad;->m:J

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/ad;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_5
    return v0

    .line 84
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 85
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 90
    :cond_5
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const-string v1, "Failed to create signal collector."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 93
    :cond_7
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const-string v1, "Unable to start collection. Terminate early."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 97
    :cond_8
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const-string v1, "Bad phone conditions, waiting it to be good."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 99
    :cond_9
    iget-wide v0, p0, Lcom/google/android/location/ad;->m:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/location/ad;->m:J

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 103
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const-string v1, "Alarm timed out, will schedule another attempt."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_a
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/location/ad;->m:J

    .line 105
    iget-object v0, p0, Lcom/google/android/location/ad;->n:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->j()V

    goto/16 :goto_4

    .line 118
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/android/location/ad;->k:Lcom/google/android/location/collectionlib/az;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/ad;->h:Lcom/google/android/location/e;

    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/ad;->o:Lcom/google/android/location/av;

    invoke-virtual {v0, v2}, Lcom/google/android/location/av;->a(Z)Lcom/google/android/location/f/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/ad;->a:Ljava/lang/String;

    const-string v3, "Bad device conditions, stopping IOCollector."

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/ad;->k:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->b()V

    .line 138
    iget-object v0, p0, Lcom/google/android/location/ad;->o:Lcom/google/android/location/av;

    invoke-virtual {v0}, Lcom/google/android/location/av;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/location/ad;->f:Z

    if-nez v0, :cond_3

    .line 139
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/location/ad;->d(Z)V

    .line 140
    sget-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/ad;->h:Lcom/google/android/location/e;

    move v0, v1

    .line 141
    goto :goto_0

    :cond_3
    move v0, v2

    .line 144
    goto :goto_0
.end method
