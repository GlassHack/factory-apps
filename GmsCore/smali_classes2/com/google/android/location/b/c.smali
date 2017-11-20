.class public final Lcom/google/android/location/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:Lcom/google/g/a/b/b/a;


# instance fields
.field final c:Lcom/google/android/location/k/b;

.field final d:Lcom/google/android/location/k/j;

.field final e:Lcom/google/android/location/k/f;

.field public final f:Lcom/google/android/location/b/w;

.field public final g:Lcom/google/android/location/b/aa;

.field public final h:Lcom/google/android/location/f/ag;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Lcom/google/android/location/b/e;

.field private p:Lcom/google/android/location/p/j;

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/32 v2, 0x2932e00

    const/4 v4, -0x1

    .line 61
    const-wide/32 v0, 0x5265c00

    invoke-static {v2, v3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/b/c;->a:J

    .line 171
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->j:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 172
    sput-object v0, Lcom/google/android/location/b/c;->b:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 173
    sget-object v0, Lcom/google/android/location/b/c;->b:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/k/f;Lcom/google/android/location/k/b;Lcom/google/android/location/k/j;Lcom/google/android/location/b/w;Lcom/google/android/location/b/aa;Lcom/google/android/location/f/ag;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/b/c;->i:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/b/c;->j:Ljava/util/List;

    .line 120
    iput v1, p0, Lcom/google/android/location/b/c;->k:I

    .line 127
    iput v1, p0, Lcom/google/android/location/b/c;->l:I

    .line 134
    iput v1, p0, Lcom/google/android/location/b/c;->m:I

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/b/c;->n:Z

    .line 143
    sget-object v0, Lcom/google/android/location/b/e;->a:Lcom/google/android/location/b/e;

    iput-object v0, p0, Lcom/google/android/location/b/c;->o:Lcom/google/android/location/b/e;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/b/c;->p:Lcom/google/android/location/p/j;

    .line 187
    iput-object p1, p0, Lcom/google/android/location/b/c;->e:Lcom/google/android/location/k/f;

    .line 188
    iput-object p2, p0, Lcom/google/android/location/b/c;->c:Lcom/google/android/location/k/b;

    .line 189
    iput-object p3, p0, Lcom/google/android/location/b/c;->d:Lcom/google/android/location/k/j;

    .line 190
    iput-object p4, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    .line 191
    iput-object p5, p0, Lcom/google/android/location/b/c;->g:Lcom/google/android/location/b/aa;

    .line 192
    iput-object p6, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    .line 193
    return-void
.end method

.method private static a(JZ)J
    .locals 4

    .prologue
    .line 448
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x41224f8000000000L    # 600000.0

    mul-double/2addr v0, v2

    double-to-long v2, v0

    .line 449
    if-eqz p2, :cond_0

    const-wide/32 v0, 0x5265c00

    .line 450
    :goto_0
    add-long/2addr v0, p0

    add-long/2addr v0, v2

    .line 451
    return-wide v0

    .line 449
    :cond_0
    sget-wide v0, Lcom/google/android/location/b/c;->a:J

    goto :goto_0
.end method

.method private static a(JI)Lcom/google/g/a/b/b/a;
    .locals 4

    .prologue
    .line 629
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->f:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 630
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 633
    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 635
    if-lez p2, :cond_0

    .line 636
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 639
    :cond_0
    return-object v0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/location/b/c;->c:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    .line 396
    iget-object v2, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/location/b/w;->a(JZ)V

    .line 397
    iget-object v2, p0, Lcom/google/android/location/b/c;->g:Lcom/google/android/location/b/aa;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/location/b/aa;->a(JZ)V

    .line 398
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 245
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "CacheUpdater"

    const-string v1, "Failed to get latest NlpParameters."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    sget-object v0, Lcom/google/android/location/b/e;->a:Lcom/google/android/location/b/e;

    iput-object v0, p0, Lcom/google/android/location/b/c;->o:Lcom/google/android/location/b/e;

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/b/c;->a(Z)V

    .line 248
    invoke-direct {p0}, Lcom/google/android/location/b/c;->i()V

    .line 250
    invoke-direct {p0}, Lcom/google/android/location/b/c;->d()V

    .line 251
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/google/android/location/b/c;->n:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/location/b/c;->d:Lcom/google/android/location/k/j;

    sget-object v1, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;)V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/b/c;->n:Z

    .line 261
    :cond_0
    return-void
.end method

.method private e()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 324
    iput-boolean v4, p0, Lcom/google/android/location/b/c;->q:Z

    .line 327
    iget-object v0, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    invoke-virtual {v0}, Lcom/google/android/location/b/w;->d()Lcom/google/android/location/b/am;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    invoke-virtual {v1}, Lcom/google/android/location/b/w;->c()Lcom/google/android/location/b/am;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/location/b/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/google/android/location/b/c;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v4, p0, Lcom/google/android/location/b/c;->m:I

    iget-object v1, p0, Lcom/google/android/location/b/c;->c:Lcom/google/android/location/k/b;

    invoke-interface {v1}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v6

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    invoke-virtual {v1}, Lcom/google/android/location/f/ag;->d()I

    move-result v5

    iget-object v0, v0, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/b/a;

    iget v1, v1, Lcom/google/android/location/b/a;->c:I

    if-ge v1, v5, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/location/f/g;->a(Ljava/lang/String;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/location/b/c;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/a;

    iput-wide v6, v0, Lcom/google/android/location/b/a;->a:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    invoke-virtual {v0}, Lcom/google/android/location/f/ag;->e()I

    move-result v5

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/google/android/location/b/am;->a:Lcom/google/android/location/b/an;

    invoke-virtual {v0}, Lcom/google/android/location/b/an;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/b/a;

    iget-object v2, v1, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/location/f/ay;

    iget v1, v1, Lcom/google/android/location/b/a;->c:I

    if-lt v1, v5, :cond_3

    invoke-virtual {v2}, Lcom/google/android/location/f/ay;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/google/android/location/f/ay;->e()I

    move-result v2

    iget-object v10, p0, Lcom/google/android/location/b/c;->j:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/location/b/c;->a(JI)Lcom/google/g/a/b/b/a;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/a;

    iput-wide v6, v0, Lcom/google/android/location/b/a;->a:J

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/b/c;->c:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/location/b/c;->g:Lcom/google/android/location/b/aa;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/location/b/c;->g:Lcom/google/android/location/b/aa;

    iget-object v0, v0, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-virtual {v0}, Lcom/google/android/location/b/ab;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/b/ac;

    iget-object v9, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v9, v12}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v1, v1, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v1, v12}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    :goto_3
    if-ge v1, v5, :cond_8

    move v1, v3

    :goto_4
    if-eqz v1, :cond_9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v0, p0, Lcom/google/android/location/b/c;->j:Ljava/util/List;

    invoke-static {v10, v11, v4}, Lcom/google/android/location/b/c;->a(JI)Lcom/google/g/a/b/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/4 v1, -0x1

    goto :goto_3

    :cond_8
    move v1, v4

    goto :goto_4

    :cond_9
    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/ac;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/location/b/ac;->a(J)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    invoke-virtual {v0}, Lcom/google/android/location/f/ag;->p()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/b/c;->k:I

    iget-object v0, p0, Lcom/google/android/location/b/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/location/b/c;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    iget v0, p0, Lcom/google/android/location/b/c;->k:I

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    iput v0, p0, Lcom/google/android/location/b/c;->l:I

    iget-object v0, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    invoke-virtual {v0}, Lcom/google/android/location/b/w;->e()Lcom/google/android/location/b/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/b/u;->a()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v3

    :goto_5
    if-eqz v0, :cond_b

    iget v2, p0, Lcom/google/android/location/b/c;->l:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/location/b/c;->l:I

    :cond_b
    if-lez v1, :cond_c

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_c

    const-string v1, "CacheUpdater"

    const-string v2, "Will refresh %d cell and %d WIFI (stats: %b) using %d RPCs"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/location/b/c;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/google/android/location/b/c;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/google/android/location/b/c;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_c
    invoke-direct {p0}, Lcom/google/android/location/b/c;->g()Z

    move-result v0

    .line 329
    if-eqz v0, :cond_d

    .line 333
    invoke-direct {p0}, Lcom/google/android/location/b/c;->f()V

    .line 334
    iget-object v0, p0, Lcom/google/android/location/b/c;->d:Lcom/google/android/location/k/j;

    sget-object v1, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    iget-object v2, p0, Lcom/google/android/location/b/c;->c:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iget v4, p0, Lcom/google/android/location/b/c;->l:I

    int-to-long v4, v4

    const-wide/16 v6, 0x2710

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/location/b/c;->p:Lcom/google/android/location/p/j;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 337
    sget-object v0, Lcom/google/android/location/b/e;->c:Lcom/google/android/location/b/e;

    iput-object v0, p0, Lcom/google/android/location/b/c;->o:Lcom/google/android/location/b/e;

    .line 339
    :cond_d
    return-void

    :cond_e
    move v0, v4

    .line 327
    goto :goto_5
.end method

.method private f()V
    .locals 3

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/google/android/location/b/c;->n:Z

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/location/b/c;->d:Lcom/google/android/location/k/j;

    sget-object v1, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;Lcom/google/android/location/p/j;)V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/b/c;->n:Z

    .line 349
    :cond_0
    return-void
.end method

.method private g()Z
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 358
    iget-object v0, p0, Lcom/google/android/location/b/c;->c:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/location/b/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    new-instance v3, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->k:Lcom/google/g/a/b/b/c;

    invoke-direct {v3, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    sget-object v0, Lcom/google/android/location/b/c;->b:Lcom/google/g/a/b/b/a;

    invoke-virtual {v3, v5, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    invoke-virtual {v3, v11, v6, v7}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    iget-object v0, p0, Lcom/google/android/location/b/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/location/b/c;->k:I

    if-ge v1, v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {v3, v12, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    move-object v1, v3

    :goto_1
    iget v3, p0, Lcom/google/android/location/b/c;->k:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/location/b/c;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v4, Lcom/google/g/a/b/b/a;

    sget-object v3, Lcom/google/android/location/n/a;->h:Lcom/google/g/a/b/b/c;

    invoke-direct {v4, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    iget-object v3, p0, Lcom/google/android/location/b/c;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/location/b/c;->k:I

    if-ge v3, v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    invoke-virtual {v4, v11, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v3, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    invoke-virtual {v0}, Lcom/google/android/location/b/w;->e()Lcom/google/android/location/b/u;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/location/b/u;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/location/b/c;->q:Z

    if-nez v0, :cond_6

    move v0, v5

    :goto_3
    if-gtz v3, :cond_3

    if-eqz v0, :cond_7

    :cond_3
    move v6, v5

    :goto_4
    if-eqz v6, :cond_e

    new-instance v8, Lcom/google/g/a/b/b/a;

    sget-object v9, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v8, v9}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    new-instance v9, Lcom/google/g/a/b/b/a;

    sget-object v10, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v9, v10}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    if-eqz v1, :cond_4

    invoke-virtual {v9, v5, v1}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v9, v11, v4}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_5
    if-eqz v0, :cond_d

    invoke-interface {v7}, Lcom/google/android/location/b/u;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/a;

    const/16 v7, 0xc

    invoke-virtual {v9, v7, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v6, v2

    goto :goto_4

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_6
    invoke-virtual {v8, v12, v9}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    iget-object v1, p0, Lcom/google/android/location/b/c;->e:Lcom/google/android/location/k/f;

    invoke-interface {v1, v8}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;)V

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_9

    const-string v1, "CacheUpdater"

    const-string v4, "Sent %d cache items and %d model stats for refresh."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_7
    if-lez v0, :cond_a

    move v2, v5

    :cond_a
    iput-boolean v2, p0, Lcom/google/android/location/b/c;->r:Z

    if-lez v0, :cond_b

    iput-boolean v5, p0, Lcom/google/android/location/b/c;->q:Z

    .line 359
    :cond_b
    if-nez v6, :cond_c

    .line 361
    invoke-direct {p0}, Lcom/google/android/location/b/c;->h()V

    .line 364
    :cond_c
    return v6

    :cond_d
    move v0, v2

    goto :goto_6

    :cond_e
    move v0, v2

    goto :goto_7

    :cond_f
    move-object v1, v4

    move v0, v2

    goto/16 :goto_1
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 368
    iget v0, p0, Lcom/google/android/location/b/c;->l:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/location/b/c;->m:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/location/b/c;->l:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const v3, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    :cond_0
    move v0, v2

    .line 370
    :goto_0
    if-eqz v0, :cond_4

    .line 372
    iget v3, p0, Lcom/google/android/location/b/c;->l:I

    if-nez v3, :cond_3

    .line 373
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "CacheUpdater"

    const-string v4, "Cache up-to-date. Wifi database: %d, Cell database: %d"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    invoke-virtual {v6}, Lcom/google/android/location/f/ag;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    invoke-virtual {v1}, Lcom/google/android/location/f/ag;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/location/b/c;->a(Z)V

    .line 390
    invoke-direct {p0}, Lcom/google/android/location/b/c;->i()V

    .line 391
    invoke-direct {p0}, Lcom/google/android/location/b/c;->d()V

    .line 392
    return-void

    :cond_2
    move v0, v1

    .line 368
    goto :goto_0

    .line 376
    :cond_3
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "CacheUpdater"

    const-string v4, "Cache refreshed successfully. Wifi database: %d, Cell database: %d"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    invoke-virtual {v6}, Lcom/google/android/location/f/ag;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    invoke-virtual {v1}, Lcom/google/android/location/f/ag;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :cond_4
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "CacheUpdater"

    const-string v4, "Failed to refresh cache. Total RPCs: %d, successful RPC: %d"

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/location/b/c;->l:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/google/android/location/b/c;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 413
    iget-object v0, p0, Lcom/google/android/location/b/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    iget-object v0, p0, Lcom/google/android/location/b/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 415
    iput v1, p0, Lcom/google/android/location/b/c;->k:I

    .line 416
    iput v1, p0, Lcom/google/android/location/b/c;->l:I

    .line 417
    iput v1, p0, Lcom/google/android/location/b/c;->m:I

    .line 418
    sget-object v0, Lcom/google/android/location/b/e;->a:Lcom/google/android/location/b/e;

    iput-object v0, p0, Lcom/google/android/location/b/c;->o:Lcom/google/android/location/b/e;

    .line 419
    iget-object v0, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    invoke-virtual {v0}, Lcom/google/android/location/b/w;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    invoke-virtual {v2}, Lcom/google/android/location/b/w;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/location/b/c;->a(JZ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/b/c;->g:Lcom/google/android/location/b/aa;

    iget-wide v2, v2, Lcom/google/android/location/b/aa;->e:J

    iget-object v4, p0, Lcom/google/android/location/b/c;->g:Lcom/google/android/location/b/aa;

    iget-boolean v4, v4, Lcom/google/android/location/b/aa;->f:Z

    invoke-static {v2, v3, v4}, Lcom/google/android/location/b/c;->a(JZ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 420
    iget-object v2, p0, Lcom/google/android/location/b/c;->d:Lcom/google/android/location/k/j;

    sget-object v3, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    iget-object v4, p0, Lcom/google/android/location/b/c;->p:Lcom/google/android/location/p/j;

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 421
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "CacheUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cache refresh scheduled at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/google/android/location/b/c;->i()V

    .line 407
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;)V
    .locals 6

    .prologue
    .line 269
    sget-object v0, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    if-eq p1, v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 272
    :cond_0
    sget-object v0, Lcom/google/android/location/b/d;->a:[I

    iget-object v1, p0, Lcom/google/android/location/b/c;->o:Lcom/google/android/location/b/e;

    invoke-virtual {v1}, Lcom/google/android/location/b/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "CacheUpdater"

    const-string v1, "Starting a new refresh."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    invoke-virtual {v0}, Lcom/google/android/location/f/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "CacheUpdater"

    const-string v1, "NlpParameters expired, need to sync with server."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iget-object v1, p0, Lcom/google/android/location/b/c;->e:Lcom/google/android/location/k/f;

    invoke-interface {v1, v0}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;)V

    invoke-direct {p0}, Lcom/google/android/location/b/c;->f()V

    iget-object v0, p0, Lcom/google/android/location/b/c;->d:Lcom/google/android/location/k/j;

    sget-object v1, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    iget-object v2, p0, Lcom/google/android/location/b/c;->c:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/location/b/c;->p:Lcom/google/android/location/p/j;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    sget-object v0, Lcom/google/android/location/b/e;->b:Lcom/google/android/location/b/e;

    iput-object v0, p0, Lcom/google/android/location/b/c;->o:Lcom/google/android/location/b/e;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/location/b/c;->e()V

    goto :goto_0

    .line 280
    :pswitch_1
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_4

    const-string v0, "CacheUpdater"

    const-string v1, "CacheUpdater terminated early when refreshing parameters."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_4
    invoke-direct {p0}, Lcom/google/android/location/b/c;->c()V

    goto :goto_0

    .line 286
    :pswitch_2
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_5

    const-string v0, "CacheUpdater"

    const-string v1, "CacheUpdater terminated early when refreshing cache."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_5
    invoke-direct {p0}, Lcom/google/android/location/b/c;->h()V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/location/p/j;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/location/b/c;->p:Lcom/google/android/location/p/j;

    .line 238
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 14

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/location/b/c;->o:Lcom/google/android/location/b/e;

    sget-object v1, Lcom/google/android/location/b/e;->b:Lcom/google/android/location/b/e;

    if-ne v0, v1, :cond_2

    .line 204
    iget-object v0, p0, Lcom/google/android/location/b/c;->d:Lcom/google/android/location/k/j;

    sget-object v1, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    .line 205
    invoke-static {p1}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/google/android/location/b/c;->h:Lcom/google/android/location/f/ag;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/ag;->a(Lcom/google/g/a/b/b/a;)V

    .line 207
    invoke-direct {p0}, Lcom/google/android/location/b/c;->e()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/b/c;->c()V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/b/c;->o:Lcom/google/android/location/b/e;

    sget-object v1, Lcom/google/android/location/b/e;->c:Lcom/google/android/location/b/e;

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/b/c;->c:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/location/b/w;->a(Lcom/google/g/a/b/b/a;ZJ)V

    .line 215
    iget-object v5, p0, Lcom/google/android/location/b/c;->g:Lcom/google/android/location/b/aa;

    invoke-static {p1}, Lcom/google/android/location/p/h;->b(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v5, Lcom/google/android/location/b/aa;->d:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    iget-object v0, v5, Lcom/google/android/location/b/aa;->c:Lcom/google/android/location/f/ag;

    invoke-virtual {v0}, Lcom/google/android/location/f/ag;->e()I

    move-result v8

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v9

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v9, :cond_8

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v4}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-ge v1, v0, :cond_7

    const/4 v0, 0x3

    invoke-virtual {v10, v0, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v11

    const/4 v0, 0x3

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    :goto_3
    const-wide/16 v12, -0x1

    cmp-long v0, v2, v12

    if-eqz v0, :cond_3

    iget-object v0, v5, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/b/ab;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/ac;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6, v7}, Lcom/google/android/location/b/ac;->a(J)V

    iget-object v2, v0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v8}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/b/ac;->a(F)V

    :goto_4
    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v2

    iget-object v0, v0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    :cond_3
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/f/bi;->a(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    goto :goto_4

    :cond_6
    iget-object v0, v0, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;I)V

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 216
    :cond_8
    invoke-static {p1}, Lcom/google/android/location/p/h;->a(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 217
    iget v0, p0, Lcom/google/android/location/b/c;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/b/c;->m:I

    .line 218
    iget-boolean v0, p0, Lcom/google/android/location/b/c;->r:Z

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/google/android/location/b/c;->f:Lcom/google/android/location/b/w;

    invoke-virtual {v0}, Lcom/google/android/location/b/w;->e()Lcom/google/android/location/b/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/b/u;->c()V

    .line 226
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_9

    const-string v0, "CacheUpdater"

    const-string v1, "Clearing stats after successful upload"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_9
    invoke-direct {p0}, Lcom/google/android/location/b/c;->g()Z

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/location/b/c;->d:Lcom/google/android/location/k/j;

    sget-object v1, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    .line 648
    invoke-direct {p0}, Lcom/google/android/location/b/c;->d()V

    .line 649
    return-void
.end method
