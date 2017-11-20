.class public final Lcom/google/android/location/as;
.super Lcom/google/android/location/a;
.source "SourceFile"


# instance fields
.field A:Lcom/google/android/location/l/e;

.field final B:Lcom/google/android/location/activity/m;

.field C:Z

.field D:J

.field public E:Lcom/google/g/a/b/b/a;

.field F:J

.field G:Z

.field private final H:Ljava/util/Random;

.field public i:Z

.field j:Z

.field k:Z

.field public l:Lcom/google/android/location/f/g;

.field m:Lcom/google/android/location/f/bh;

.field n:Z

.field public o:Lcom/google/android/location/f/bh;

.field p:Lcom/google/android/location/os/ah;

.field public q:Z

.field r:Lcom/google/g/a/b/b/a;

.field s:J

.field t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field y:J

.field z:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/activity/m;Lcom/google/android/location/bd;Lcom/google/android/location/d;)V
    .locals 8

    .prologue
    .line 199
    const-string v1, "PassiveCollector"

    sget-object v7, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/a;-><init>(Ljava/lang/String;Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/e;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/as;->k:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/as;->m:Lcom/google/android/location/f/bh;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/as;->n:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/as;->q:Z

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/as;->s:J

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/as;->t:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/as;->u:Z

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/as;->v:Z

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/as;->w:Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/as;->x:Z

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/as;->y:J

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/as;->z:J

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/as;->A:Lcom/google/android/location/l/e;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/as;->C:Z

    .line 171
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/as;->D:J

    .line 185
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/as;->F:J

    .line 200
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/as;->H:Ljava/util/Random;

    .line 201
    iget-object v0, p2, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    invoke-virtual {p0, v0}, Lcom/google/android/location/as;->a(Lcom/google/android/location/f/ag;)V

    .line 202
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing smart-collection to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/location/as;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    iput-object p4, p0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    .line 204
    return-void
.end method

.method private static a(ZZZ)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 716
    if-eqz p0, :cond_0

    move v2, v0

    :goto_0
    add-int/lit8 v3, v2, 0x0

    .line 718
    if-eqz p1, :cond_1

    move v2, v0

    :goto_1
    add-int/2addr v2, v3

    .line 719
    if-eqz p2, :cond_2

    :goto_2
    add-int/2addr v0, v2

    .line 720
    return v0

    :cond_0
    move v2, v1

    .line 716
    goto :goto_0

    :cond_1
    move v2, v1

    .line 718
    goto :goto_1

    :cond_2
    move v0, v1

    .line 719
    goto :goto_2
.end method

.method private a(IJZZZ)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 739
    if-eqz p5, :cond_0

    .line 740
    if-nez p4, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/as;->n:Z

    .line 741
    iget-object v0, p0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    iput-object v0, p0, Lcom/google/android/location/as;->m:Lcom/google/android/location/f/bh;

    .line 743
    :cond_0
    if-eqz p4, :cond_4

    iget-object v2, p0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    .line 744
    :goto_1
    if-eqz p6, :cond_5

    iget-object v3, p0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    .line 745
    :goto_2
    if-eqz p5, :cond_1

    iget-object v4, p0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v0

    iget-boolean v5, p0, Lcom/google/android/location/as;->j:Z

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/location/as;->a(JLcom/google/android/location/os/ah;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;ZI)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/google/android/location/as;->g:Lcom/google/android/location/d;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/location/d;->a(Lcom/google/android/location/os/ah;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;)V

    .line 760
    iget-object v1, p0, Lcom/google/android/location/as;->E:Lcom/google/g/a/b/b/a;

    if-nez v1, :cond_2

    .line 761
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iput-object v1, p0, Lcom/google/android/location/as;->E:Lcom/google/g/a/b/b/a;

    .line 762
    iput-wide p2, p0, Lcom/google/android/location/as;->F:J

    .line 764
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/as;->E:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 765
    return-void

    .line 740
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move-object v2, v4

    .line 743
    goto :goto_1

    :cond_5
    move-object v3, v4

    .line 744
    goto :goto_2
.end method

.method private a(IZZZ)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 697
    invoke-static {p2, p3, p4}, Lcom/google/android/location/as;->a(ZZZ)I

    move-result v2

    .line 699
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v0

    .line 702
    :cond_1
    if-nez p4, :cond_2

    if-ne p1, v1, :cond_2

    .line 703
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    const-string v2, "Cell changed, but could not be paired somehow."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    if-eqz p3, :cond_3

    if-nez p2, :cond_4

    .line 708
    :cond_3
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    const-string v2, "Gps changed but GPS or WiFi scan could not be paired."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 711
    goto :goto_0
.end method

.method private h(J)Z
    .locals 5

    .prologue
    const/4 v1, 0x4

    .line 319
    iget-object v0, p0, Lcom/google/android/location/as;->E:Lcom/google/g/a/b/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/as;->E:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/as;->E:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/location/as;->F:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->d:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1, v3}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;Lcom/google/android/location/p/j;)V

    .line 327
    sget-object v0, Lcom/google/android/location/e;->f:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/as;->h:Lcom/google/android/location/e;

    .line 328
    iget-object v0, p0, Lcom/google/android/location/as;->E:Lcom/google/g/a/b/b/a;

    iput-object v0, p0, Lcom/google/android/location/as;->r:Lcom/google/g/a/b/b/a;

    .line 329
    iget-object v0, p0, Lcom/google/android/location/as;->d:Lcom/google/android/location/bd;

    iget-object v1, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    iget-object v2, p0, Lcom/google/android/location/as;->r:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/bd;->a(Lcom/google/android/location/os/at;Lcom/google/g/a/b/b/a;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->B()Lcom/google/android/location/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/as;->r:Lcom/google/g/a/b/b/a;

    iget-object v2, p0, Lcom/google/android/location/as;->e:Lcom/google/android/location/l/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/k/a;)V

    .line 331
    iput-object v3, p0, Lcom/google/android/location/as;->E:Lcom/google/g/a/b/b/a;

    .line 332
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/as;->F:J

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/as;->t:Z

    .line 334
    iget-object v0, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/as;->s:J

    .line 335
    iget-wide v0, p0, Lcom/google/android/location/as;->s:J

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/as;->i(J)V

    .line 336
    return-void
.end method

.method private i(J)V
    .locals 5

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/google/android/location/as;->D:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 428
    iput-wide p1, p0, Lcom/google/android/location/as;->D:J

    .line 429
    iget-object v0, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->d:Lcom/google/android/location/k/k;

    iget-wide v2, p0, Lcom/google/android/location/as;->D:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 431
    :cond_0
    return-void
.end method

.method private final j()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    .line 409
    iget-wide v2, p0, Lcom/google/android/location/as;->y:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    iget-object v2, p0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Z)V

    .line 414
    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x1d4c0

    iget-object v4, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/location/as;->y:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 416
    iget-object v2, p0, Lcom/google/android/location/as;->e:Lcom/google/android/location/l/a;

    iget-object v3, p0, Lcom/google/android/location/as;->A:Lcom/google/android/location/l/e;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/location/l/a;->a(Lcom/google/android/location/l/e;J)V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/as;->A:Lcom/google/android/location/l/e;

    .line 418
    invoke-direct {p0}, Lcom/google/android/location/as;->k()V

    .line 419
    iput-wide v8, p0, Lcom/google/android/location/as;->y:J

    .line 421
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 409
    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/google/android/location/as;->t:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->d:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    .line 473
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/as;->D:J

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/as;->t:Z

    .line 475
    iget-object v0, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->d:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;)V

    .line 477
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lcom/google/android/location/as;->u:Z

    .line 481
    iput-boolean v0, p0, Lcom/google/android/location/as;->v:Z

    .line 482
    iput-boolean v0, p0, Lcom/google/android/location/as;->w:Z

    .line 483
    iput-boolean v0, p0, Lcom/google/android/location/as;->x:Z

    .line 484
    iput-boolean v0, p0, Lcom/google/android/location/as;->C:Z

    .line 485
    return-void
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/android/location/as;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/as;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 4

    .prologue
    .line 779
    invoke-static {p1, p2}, Lcom/google/android/location/p/h;->a(II)F

    move-result v0

    .line 780
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 781
    if-nez p3, :cond_0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/as;->i:Z

    .line 783
    :cond_1
    iput-boolean p3, p0, Lcom/google/android/location/as;->j:Z

    .line 784
    return-void

    .line 781
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/f/ag;)V
    .locals 3

    .prologue
    .line 912
    invoke-virtual {p1}, Lcom/google/android/location/f/ag;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/as;->G:Z

    .line 913
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Now setting smart-collection to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/location/as;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/f/bh;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 876
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/location/f/bh;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iput-object p1, p0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    .line 883
    iget-object v0, p0, Lcom/google/android/location/as;->g:Lcom/google/android/location/d;

    iget-object v5, v0, Lcom/google/android/location/d;->d:Lcom/google/android/location/b/aa;

    iget-object v6, p0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    move v1, v2

    :goto_1
    invoke-virtual {v6}, Lcom/google/android/location/f/bh;->a()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {v6, v1}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v0

    iget-wide v8, v0, Lcom/google/android/location/f/bb;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v0, v5, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-virtual {v0, v7}, Lcom/google/android/location/b/ab;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/ac;

    iget-object v8, v5, Lcom/google/android/location/b/aa;->a:Lcom/google/android/location/b/ae;

    if-eqz v0, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v8, v3}, Lcom/google/android/location/b/ae;->a(Z)V

    if-nez v0, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    :goto_3
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/google/android/location/as;->H:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_6

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found important AP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    iput-boolean v4, p0, Lcom/google/android/location/as;->C:Z

    .line 885
    invoke-direct {p0}, Lcom/google/android/location/as;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/google/android/location/as;->m:Lcom/google/android/location/f/bh;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    iget-wide v0, v0, Lcom/google/android/location/f/bh;->a:J

    iget-object v2, p0, Lcom/google/android/location/as;->m:Lcom/google/android/location/f/bh;

    iget-wide v2, v2, Lcom/google/android/location/f/bh;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 896
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/location/as;->u:Z

    iget-object v1, p0, Lcom/google/android/location/as;->g:Lcom/google/android/location/d;

    iget-object v2, p0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    iget-object v3, p0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/location/d;->a(Lcom/google/android/location/f/bh;J)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/location/as;->u:Z

    .line 899
    iget-boolean v0, p0, Lcom/google/android/location/as;->u:Z

    if-eqz v0, :cond_0

    .line 900
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    invoke-virtual {v2}, Lcom/google/android/location/f/bh;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " APs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 883
    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/location/b/ac;->a()F

    move-result v0

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v4, v2

    goto :goto_4
.end method

.method public final a(Lcom/google/android/location/f/g;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 793
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/location/f/g;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 794
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    .line 819
    :cond_1
    :goto_0
    return-void

    .line 800
    :cond_2
    const/4 v0, 0x0

    .line 802
    iget-object v2, p0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    if-eqz v2, :cond_3

    .line 803
    iget-object v2, p0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    invoke-virtual {v2, p1}, Lcom/google/android/location/f/g;->b(Lcom/google/android/location/f/g;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 804
    iget-object v0, p0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    invoke-virtual {v0}, Lcom/google/android/location/f/g;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/location/f/g;->h()I

    move-result v2

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 812
    :cond_3
    iput-object p1, p0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    .line 813
    invoke-direct {p0}, Lcom/google/android/location/as;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    if-nez v0, :cond_4

    .line 815
    iput-boolean v1, p0, Lcom/google/android/location/as;->v:Z

    .line 817
    :cond_4
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateCellState(): Updated to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/k/k;)V
    .locals 2

    .prologue
    .line 772
    sget-object v0, Lcom/google/android/location/k/k;->d:Lcom/google/android/location/k/k;

    if-ne p1, v0, :cond_0

    .line 773
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/as;->D:J

    .line 775
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/os/ah;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 839
    if-nez p1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iput-object p1, p0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    .line 844
    invoke-direct {p0}, Lcom/google/android/location/as;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-boolean v0, p0, Lcom/google/android/location/as;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    iget-object v1, p0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    invoke-static {v0, v1}, Lcom/google/android/location/as;->a(Lcom/google/android/location/f/bh;Lcom/google/android/location/os/ah;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 848
    iput-boolean v8, p0, Lcom/google/android/location/as;->w:Z

    goto :goto_0

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/as;->g:Lcom/google/android/location/d;

    iget-object v2, v0, Lcom/google/android/location/d;->a:Lcom/google/android/location/os/ah;

    .line 851
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    invoke-interface {v2}, Lcom/google/android/location/os/ah;->b()D

    move-result-wide v0

    invoke-interface {v2}, Lcom/google/android/location/os/ah;->c()D

    move-result-wide v2

    invoke-interface {v6}, Lcom/google/android/location/os/ah;->b()D

    move-result-wide v4

    invoke-interface {v6}, Lcom/google/android/location/os/ah;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->c(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 855
    iput-boolean v8, p0, Lcom/google/android/location/as;->x:Z

    goto :goto_0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/as;->r:Lcom/google/g/a/b/b/a;

    .line 829
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 908
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/google/android/location/as;->k:Z

    .line 872
    return-void
.end method

.method protected final b(J)Z
    .locals 23

    .prologue
    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/as;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/as;->l()V

    .line 217
    const/4 v2, 0x0

    .line 311
    :goto_0
    return v2

    .line 222
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/google/android/location/as;->h(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/as;->i()V

    .line 224
    const/4 v2, 0x1

    goto :goto_0

    .line 232
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    iget-wide v2, v2, Lcom/google/android/location/f/bh;->a:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->g:Lcom/google/android/location/d;

    iget-wide v4, v4, Lcom/google/android/location/d;->b:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    :cond_2
    const/4 v2, 0x1

    .line 234
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    invoke-virtual {v3}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->g:Lcom/google/android/location/d;

    iget-wide v6, v3, Lcom/google/android/location/d;->c:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_8

    :cond_3
    const/4 v3, 0x1

    .line 236
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/as;->u:Z

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 237
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/location/as;->u:Z

    .line 240
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/as;->v:Z

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 241
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/location/as;->v:Z

    .line 261
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    iget-wide v4, v4, Lcom/google/android/location/f/bh;->a:J

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0xafc80

    cmp-long v4, v4, v6

    if-gtz v4, :cond_9

    const/4 v4, 0x1

    .line 265
    :goto_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/as;->z:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/as;->z:J

    sub-long v6, p1, v6

    const-wide/32 v8, 0x493e0

    cmp-long v5, v6, v8

    if-gez v5, :cond_a

    const/4 v5, 0x1

    .line 268
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/location/as;->u:Z

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/location/as;->C:Z

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/location/as;->w:Z

    if-nez v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/location/as;->G:Z

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/location/as;->k:Z

    if-nez v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/location/as;->f:Z

    if-eqz v6, :cond_d

    if-eqz v4, :cond_d

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->h()Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    :cond_6
    :goto_5
    if-eqz v4, :cond_d

    .line 270
    sget-object v2, Lcom/google/android/location/e;->c:Lcom/google/android/location/e;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/as;->h:Lcom/google/android/location/e;

    .line 275
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/location/as;->n:Z

    .line 276
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 232
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 234
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 261
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 265
    :cond_a
    const/4 v5, 0x0

    goto :goto_4

    .line 268
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->e:Lcom/google/android/location/l/a;

    iget-object v5, v4, Lcom/google/android/location/l/a;->c:Lcom/google/android/location/l/d;

    const-wide/32 v6, 0x1d4c0

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/location/l/a;->a(Lcom/google/android/location/l/d;JZ)Lcom/google/android/location/l/e;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/as;->A:Lcom/google/android/location/l/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->A:Lcom/google/android/location/l/e;

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v5}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v5

    sget-object v6, Lcom/google/android/location/k/k;->d:Lcom/google/android/location/k/k;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;Lcom/google/android/location/p/j;)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/location/as;->t:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v5}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/location/as;->y:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/as;->y:J

    const-wide/32 v8, 0x1d4c0

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/location/as;->i(J)V

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    goto :goto_6

    .line 286
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/as;->C:Z

    if-nez v4, :cond_f

    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->w:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->x:Z

    if-eqz v2, :cond_f

    .line 287
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/location/as;->w:Z

    .line 288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/location/as;->x:Z

    .line 292
    :cond_f
    const/16 v16, 0x0

    .line 294
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->u:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->v:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->w:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->x:Z

    if-eqz v2, :cond_37

    .line 295
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->u:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->C:Z

    if-eqz v2, :cond_1c

    const/16 v2, 0x10

    move/from16 v17, v2

    .line 296
    :goto_7
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_37

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->b:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    invoke-interface {v2}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v2

    sub-long v2, v18, v2

    const-wide/32 v4, 0xafc80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_21

    const/4 v2, 0x1

    move v10, v2

    :goto_8
    const/4 v12, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    if-nez v2, :cond_22

    :cond_11
    const/4 v2, 0x0

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    if-eqz v3, :cond_3b

    const/4 v3, 0x2

    move/from16 v0, v17

    if-eq v0, v3, :cond_12

    const/16 v3, 0x10

    move/from16 v0, v17

    if-ne v0, v3, :cond_28

    :cond_12
    const/4 v3, 0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eqz v10, :cond_13

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_13

    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    const-string v6, "Location will not be paired because of significant move."

    invoke-static {v5, v6}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz v10, :cond_27

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    :goto_b
    move v11, v3

    move v12, v4

    move v13, v2

    :goto_c
    const/4 v15, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    invoke-virtual {v2}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    invoke-interface {v4}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2a

    :cond_14
    const/4 v2, 0x0

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    invoke-virtual {v3}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    iget-wide v6, v3, Lcom/google/android/location/f/bh;->a:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2f

    :cond_15
    const/4 v3, 0x0

    :goto_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->g:Lcom/google/android/location/d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/location/d;->a(Lcom/google/android/location/f/g;Lcom/google/android/location/os/ah;)Z

    move-result v4

    if-eqz v12, :cond_16

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v5, :cond_17

    :cond_16
    if-eqz v13, :cond_39

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_39

    if-nez v4, :cond_39

    :cond_17
    const/4 v15, 0x1

    move v2, v15

    :goto_11
    if-nez v11, :cond_18

    if-eqz v10, :cond_38

    if-nez v4, :cond_38

    :cond_18
    const/4 v8, 0x1

    move v9, v2

    :goto_12
    invoke-static {v13, v12, v9}, Lcom/google/android/location/as;->a(ZZZ)I

    move-result v2

    invoke-static {v10, v11, v8}, Lcom/google/android/location/as;->a(ZZZ)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v13, v12, v9}, Lcom/google/android/location/as;->a(IZZZ)Z

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v10, v11, v8}, Lcom/google/android/location/as;->a(IZZZ)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/as;->c:Lcom/google/android/location/b/w;

    iget-object v6, v6, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    invoke-virtual {v6}, Lcom/google/android/location/f/ag;->j()Z

    move-result v6

    if-nez v6, :cond_35

    if-lt v2, v3, :cond_19

    if-nez v4, :cond_35

    :cond_19
    if-eqz v5, :cond_34

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    const-string v3, "Unfiltered collection contains more data, dropping the filtered one."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move-object/from16 v2, p0

    move/from16 v3, v17

    move-wide/from16 v4, v18

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/as;->a(IJZZZ)V

    const/4 v2, 0x1

    .line 300
    :goto_13
    if-eqz v2, :cond_1b

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/as;->l()V

    .line 303
    :cond_1b
    invoke-direct/range {p0 .. p2}, Lcom/google/android/location/as;->h(J)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/as;->i()V

    .line 305
    const/4 v2, 0x1

    .line 310
    :goto_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/location/as;->C:Z

    goto/16 :goto_0

    .line 295
    :cond_1c
    const/4 v2, 0x2

    move/from16 v17, v2

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->w:Z

    if-eqz v2, :cond_1e

    const/4 v2, 0x4

    move/from16 v17, v2

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->x:Z

    if-eqz v2, :cond_1f

    const/16 v2, 0xb

    move/from16 v17, v2

    goto/16 :goto_7

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/as;->v:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    move/from16 v17, v2

    goto/16 :goto_7

    :cond_20
    const/4 v2, -0x1

    move/from16 v17, v2

    goto/16 :goto_7

    .line 299
    :cond_21
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_8

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    invoke-interface {v2}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    iget-wide v6, v2, Lcom/google/android/location/f/bh;->a:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    const-wide/16 v8, 0x7d0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/activity/m;->a(JJJ)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    const-wide/16 v8, 0x1f40

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/activity/m;->b(JJJ)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    const-wide/16 v8, 0x4e20

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/activity/m;->c(JJJ)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v2, :cond_23

    if-eqz v13, :cond_23

    if-nez v3, :cond_24

    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_25
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_27
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/location/as;->n:Z

    if-eqz v3, :cond_3b

    if-eqz v10, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    invoke-static {v3, v4}, Lcom/google/android/location/as;->a(Lcom/google/android/location/f/bh;Lcom/google/android/location/os/ah;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v4, :cond_29

    const/4 v2, 0x1

    :goto_15
    move v11, v3

    move v12, v2

    move v13, v10

    goto/16 :goto_c

    :cond_29
    const/4 v2, 0x0

    goto :goto_15

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->p:Lcom/google/android/location/os/ah;

    invoke-interface {v2}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    invoke-virtual {v2}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    const-wide/16 v8, 0x4e20

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/activity/m;->a(JJJ)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    const-wide/32 v8, 0x13880

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/activity/m;->b(JJJ)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    const-wide/32 v8, 0x30d40

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/activity/m;->c(JJJ)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v2, :cond_2b

    if-eqz v20, :cond_2b

    if-nez v3, :cond_2c

    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2d
    const/4 v2, 0x1

    goto/16 :goto_d

    :cond_2e
    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->o:Lcom/google/android/location/f/bh;

    iget-wide v4, v3, Lcom/google/android/location/f/bh;->a:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->l:Lcom/google/android/location/f/g;

    invoke-virtual {v3}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    const-wide/16 v8, 0x7d0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/activity/m;->a(JJJ)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    const-wide/16 v8, 0x1f40

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/activity/m;->b(JJJ)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/as;->B:Lcom/google/android/location/activity/m;

    const-wide/16 v8, 0x4e20

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/activity/m;->c(JJJ)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v20, :cond_30

    if-eqz v21, :cond_30

    if-nez v3, :cond_31

    :cond_30
    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_31
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_32
    const/4 v3, 0x1

    goto/16 :goto_f

    :cond_33
    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_34
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_35
    if-eqz v4, :cond_36

    move-object/from16 v2, p0

    move/from16 v3, v17

    move-wide/from16 v4, v18

    move v6, v13

    move v7, v12

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/as;->a(IJZZZ)V

    const/4 v2, 0x1

    goto/16 :goto_13

    :cond_36
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_37
    move/from16 v2, v16

    goto/16 :goto_14

    :cond_38
    move v8, v14

    move v9, v2

    goto/16 :goto_12

    :cond_39
    move v2, v15

    goto/16 :goto_11

    :cond_3a
    move v8, v14

    move v9, v15

    goto/16 :goto_12

    :cond_3b
    move v13, v10

    goto/16 :goto_c

    :cond_3c
    move v11, v3

    move v12, v4

    move v13, v10

    goto/16 :goto_c
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 823
    iput-boolean p1, p0, Lcom/google/android/location/as;->q:Z

    .line 824
    return-void
.end method

.method protected final c(J)Z
    .locals 7

    .prologue
    const-wide/32 v4, 0x1d4c0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 351
    .line 352
    iget-wide v2, p0, Lcom/google/android/location/as;->y:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move v2, v1

    .line 354
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    iput-wide p1, p0, Lcom/google/android/location/as;->z:J

    .line 356
    iget-boolean v3, p0, Lcom/google/android/location/as;->G:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/google/android/location/as;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/google/android/location/as;->k:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/google/android/location/as;->f:Z

    if-eqz v3, :cond_4

    .line 359
    iget-boolean v3, p0, Lcom/google/android/location/as;->w:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/as;->j()V

    .line 361
    sget-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/as;->h:Lcom/google/android/location/e;

    move v0, v1

    .line 376
    :goto_2
    return v0

    :cond_1
    move v2, v0

    .line 352
    goto :goto_0

    .line 354
    :cond_2
    const-wide/16 p1, -0x1

    goto :goto_1

    .line 365
    :cond_3
    iget-wide v2, p0, Lcom/google/android/location/as;->y:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/as;->i(J)V

    goto :goto_2

    .line 369
    :cond_4
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/as;->a:Ljava/lang/String;

    const-string v2, "collection disabled or battery is low or screen is on, gps turnoff or NLP disabled."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_5
    invoke-direct {p0}, Lcom/google/android/location/as;->j()V

    .line 372
    sget-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/as;->h:Lcom/google/android/location/e;

    move v0, v1

    .line 373
    goto :goto_2
.end method

.method protected final g(J)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x3a98

    .line 448
    const/4 v0, 0x0

    .line 449
    iget-object v1, p0, Lcom/google/android/location/as;->r:Lcom/google/g/a/b/b/a;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/location/as;->f:Z

    if-nez v1, :cond_1

    .line 450
    :cond_0
    const/4 v0, 0x1

    .line 451
    invoke-direct {p0}, Lcom/google/android/location/as;->k()V

    .line 452
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/as;->s:J

    .line 453
    sget-object v1, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v1, p0, Lcom/google/android/location/as;->h:Lcom/google/android/location/e;

    .line 464
    :goto_0
    return v0

    .line 457
    :cond_1
    iget-wide v2, p0, Lcom/google/android/location/as;->s:J

    sub-long v2, p1, v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 458
    invoke-direct {p0}, Lcom/google/android/location/as;->k()V

    goto :goto_0

    .line 461
    :cond_2
    iget-wide v2, p0, Lcom/google/android/location/as;->s:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/as;->i(J)V

    goto :goto_0
.end method
