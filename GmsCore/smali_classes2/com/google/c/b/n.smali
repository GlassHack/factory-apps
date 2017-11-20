.class Lcom/google/c/b/n;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final b:Lcom/google/c/j/a/x;

.field static final v:Lcom/google/c/b/ba;

.field static final w:Ljava/util/Queue;


# instance fields
.field final c:I

.field final d:I

.field final e:[Lcom/google/c/b/an;

.field final f:I

.field final g:Lcom/google/c/a/u;

.field final h:Lcom/google/c/a/u;

.field final i:Lcom/google/c/b/aq;

.field final j:Lcom/google/c/b/aq;

.field final k:J

.field final l:Lcom/google/c/b/bu;

.field final m:J

.field final n:J

.field final o:J

.field final p:Ljava/util/Queue;

.field final q:Lcom/google/c/b/bs;

.field final r:Lcom/google/c/a/bc;

.field final s:Lcom/google/c/b/u;

.field final t:Lcom/google/c/b/c;

.field final u:Lcom/google/c/b/k;

.field x:Ljava/util/Set;

.field y:Ljava/util/Collection;

.field z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/google/c/b/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/n;->a:Ljava/util/logging/Logger;

    .line 155
    invoke-static {}, Lcom/google/c/j/a/z;->a()Lcom/google/c/j/a/x;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/n;->b:Lcom/google/c/j/a/x;

    .line 679
    new-instance v0, Lcom/google/c/b/o;

    invoke-direct {v0}, Lcom/google/c/b/o;-><init>()V

    sput-object v0, Lcom/google/c/b/n;->v:Lcom/google/c/b/ba;

    .line 1010
    new-instance v0, Lcom/google/c/b/p;

    invoke-direct {v0}, Lcom/google/c/b/p;-><init>()V

    sput-object v0, Lcom/google/c/b/n;->w:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/c/b/e;Lcom/google/c/b/k;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 234
    invoke-virtual {p1}, Lcom/google/c/b/e;->f()I

    move-result v0

    const/high16 v3, 0x10000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/c/b/n;->f:I

    .line 236
    invoke-virtual {p1}, Lcom/google/c/b/e;->i()Lcom/google/c/b/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->i:Lcom/google/c/b/aq;

    .line 237
    invoke-virtual {p1}, Lcom/google/c/b/e;->j()Lcom/google/c/b/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->j:Lcom/google/c/b/aq;

    .line 239
    invoke-virtual {p1}, Lcom/google/c/b/e;->b()Lcom/google/c/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->g:Lcom/google/c/a/u;

    .line 240
    invoke-virtual {p1}, Lcom/google/c/b/e;->c()Lcom/google/c/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->h:Lcom/google/c/a/u;

    .line 242
    invoke-virtual {p1}, Lcom/google/c/b/e;->g()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/c/b/n;->k:J

    .line 243
    invoke-virtual {p1}, Lcom/google/c/b/e;->h()Lcom/google/c/b/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->l:Lcom/google/c/b/bu;

    .line 244
    invoke-virtual {p1}, Lcom/google/c/b/e;->l()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/c/b/n;->m:J

    .line 245
    invoke-virtual {p1}, Lcom/google/c/b/e;->k()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/c/b/n;->n:J

    .line 246
    invoke-virtual {p1}, Lcom/google/c/b/e;->m()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/c/b/n;->o:J

    .line 248
    invoke-virtual {p1}, Lcom/google/c/b/e;->n()Lcom/google/c/b/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->q:Lcom/google/c/b/bs;

    .line 249
    iget-object v0, p0, Lcom/google/c/b/n;->q:Lcom/google/c/b/bs;

    sget-object v3, Lcom/google/c/b/i;->a:Lcom/google/c/b/i;

    if-ne v0, v3, :cond_5

    sget-object v0, Lcom/google/c/b/n;->w:Ljava/util/Queue;

    :goto_0
    iput-object v0, p0, Lcom/google/c/b/n;->p:Ljava/util/Queue;

    .line 253
    invoke-virtual {p0}, Lcom/google/c/b/n;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/c/b/n;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/c/b/e;->a(Z)Lcom/google/c/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->r:Lcom/google/c/a/bc;

    .line 254
    iget-object v4, p0, Lcom/google/c/b/n;->i:Lcom/google/c/b/aq;

    invoke-virtual {p0}, Lcom/google/c/b/n;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/c/b/n;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    move v0, v2

    :goto_2
    invoke-direct {p0}, Lcom/google/c/b/n;->n()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/google/c/b/n;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    move v3, v2

    :goto_3
    invoke-static {v4, v0, v3}, Lcom/google/c/b/u;->a(Lcom/google/c/b/aq;ZZ)Lcom/google/c/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/n;->s:Lcom/google/c/b/u;

    .line 255
    invoke-virtual {p1}, Lcom/google/c/b/e;->o()Lcom/google/c/a/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/a/ay;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/c;

    iput-object v0, p0, Lcom/google/c/b/n;->t:Lcom/google/c/b/c;

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/b/n;->u:Lcom/google/c/b/k;

    .line 258
    invoke-virtual {p1}, Lcom/google/c/b/e;->d()I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    invoke-virtual {p0}, Lcom/google/c/b/n;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/c/b/n;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 260
    iget-wide v4, p0, Lcom/google/c/b/n;->k:J

    long-to-int v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    move v3, v2

    move v4, v1

    .line 269
    :goto_4
    iget v5, p0, Lcom/google/c/b/n;->f:I

    if-ge v3, v5, :cond_9

    invoke-virtual {p0}, Lcom/google/c/b/n;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/google/c/b/n;->b()Z

    move-result v5

    if-nez v5, :cond_4

    mul-int/lit8 v5, v3, 0x2

    int-to-long v6, v5

    iget-wide v8, p0, Lcom/google/c/b/n;->k:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_9

    .line 270
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 271
    shl-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 249
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 253
    goto :goto_1

    :cond_7
    move v0, v1

    .line 254
    goto :goto_2

    :cond_8
    move v3, v1

    goto :goto_3

    .line 273
    :cond_9
    rsub-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/c/b/n;->d:I

    .line 274
    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/google/c/b/n;->c:I

    .line 276
    new-array v4, v3, [Lcom/google/c/b/an;

    iput-object v4, p0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    .line 278
    div-int v4, v0, v3

    .line 279
    mul-int v5, v4, v3

    if-ge v5, v0, :cond_e

    .line 280
    add-int/lit8 v0, v4, 0x1

    :goto_5
    move v6, v2

    .line 284
    :goto_6
    if-ge v6, v0, :cond_a

    .line 285
    shl-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_6

    .line 288
    :cond_a
    invoke-virtual {p0}, Lcom/google/c/b/n;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 290
    iget-wide v4, p0, Lcom/google/c/b/n;->k:J

    int-to-long v8, v3

    div-long/2addr v4, v8

    add-long/2addr v4, v10

    .line 291
    iget-wide v8, p0, Lcom/google/c/b/n;->k:J

    int-to-long v2, v3

    rem-long/2addr v8, v2

    move-wide v2, v4

    .line 292
    :goto_7
    iget-object v0, p0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    .line 293
    int-to-long v4, v1

    cmp-long v0, v4, v8

    if-nez v0, :cond_b

    .line 294
    sub-long/2addr v2, v10

    .line 296
    :cond_b
    iget-object v4, p0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    invoke-virtual {p1}, Lcom/google/c/b/e;->o()Lcom/google/c/a/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/a/ay;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/c;

    invoke-direct {p0, v6, v2, v3, v0}, Lcom/google/c/b/n;->a(IJLcom/google/c/b/c;)Lcom/google/c/b/an;

    move-result-object v0

    aput-object v0, v4, v1

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 300
    :cond_c
    :goto_8
    iget-object v0, p0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    .line 301
    iget-object v2, p0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    const-wide/16 v4, -0x1

    invoke-virtual {p1}, Lcom/google/c/b/e;->o()Lcom/google/c/a/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/a/ay;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/c;

    invoke-direct {p0, v6, v4, v5, v0}, Lcom/google/c/b/n;->a(IJLcom/google/c/b/c;)Lcom/google/c/b/an;

    move-result-object v0

    aput-object v0, v2, v1

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 305
    :cond_d
    return-void

    :cond_e
    move v0, v4

    goto :goto_5
.end method

.method private a(I)Lcom/google/c/b/an;
    .locals 3

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    iget v1, p0, Lcom/google/c/b/n;->d:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/c/b/n;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private a(IJLcom/google/c/b/c;)Lcom/google/c/b/an;
    .locals 8

    .prologue
    .line 1925
    new-instance v1, Lcom/google/c/b/an;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/c/b/an;-><init>(Lcom/google/c/b/n;IJLcom/google/c/b/c;)V

    return-object v1
.end method

.method static a(Lcom/google/c/b/am;Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1971
    invoke-interface {p0, p1}, Lcom/google/c/b/am;->a(Lcom/google/c/b/am;)V

    .line 1972
    invoke-interface {p1, p0}, Lcom/google/c/b/am;->b(Lcom/google/c/b/am;)V

    .line 1973
    return-void
.end method

.method static b(Lcom/google/c/b/am;)V
    .locals 1

    .prologue
    .line 1977
    sget-object v0, Lcom/google/c/b/al;->a:Lcom/google/c/b/al;

    .line 1978
    invoke-interface {p0, v0}, Lcom/google/c/b/am;->a(Lcom/google/c/b/am;)V

    .line 1979
    invoke-interface {p0, v0}, Lcom/google/c/b/am;->b(Lcom/google/c/b/am;)V

    .line 1980
    return-void
.end method

.method static b(Lcom/google/c/b/am;Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1984
    invoke-interface {p0, p1}, Lcom/google/c/b/am;->c(Lcom/google/c/b/am;)V

    .line 1985
    invoke-interface {p1, p0}, Lcom/google/c/b/am;->d(Lcom/google/c/b/am;)V

    .line 1986
    return-void
.end method

.method private c(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/google/c/b/n;->g:Lcom/google/c/a/u;

    invoke-virtual {v0, p1}, Lcom/google/c/a/u;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1889
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static c(Lcom/google/c/b/am;)V
    .locals 1

    .prologue
    .line 1990
    sget-object v0, Lcom/google/c/b/al;->a:Lcom/google/c/b/al;

    .line 1991
    invoke-interface {p0, v0}, Lcom/google/c/b/am;->c(Lcom/google/c/b/am;)V

    .line 1992
    invoke-interface {p0, v0}, Lcom/google/c/b/am;->d(Lcom/google/c/b/am;)V

    .line 1993
    return-void
.end method

.method static j()Lcom/google/c/b/ba;
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/google/c/b/n;->v:Lcom/google/c/b/ba;

    return-object v0
.end method

.method static k()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1007
    sget-object v0, Lcom/google/c/b/al;->a:Lcom/google/c/b/al;

    return-object v0
.end method

.method static l()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 1042
    sget-object v0, Lcom/google/c/b/n;->w:Ljava/util/Queue;

    return-object v0
.end method

.method private n()Z
    .locals 4

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/google/c/b/n;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Z
    .locals 4

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/google/c/b/n;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/google/c/b/am;J)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1936
    invoke-interface {p1}, Lcom/google/c/b/am;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return-object v0

    .line 1939
    :cond_1
    invoke-interface {p1}, Lcom/google/c/b/am;->a()Lcom/google/c/b/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/c/b/ba;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1940
    if-eqz v1, :cond_0

    .line 1944
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/c/b/n;->b(Lcom/google/c/b/am;J)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1947
    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3953
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 3954
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/c/b/an;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 3955
    if-nez v0, :cond_0

    .line 3956
    iget-object v1, p0, Lcom/google/c/b/n;->t:Lcom/google/c/b/c;

    invoke-interface {v1}, Lcom/google/c/b/c;->b()V

    .line 3960
    :goto_0
    return-object v0

    .line 3958
    :cond_0
    iget-object v1, p0, Lcom/google/c/b/n;->t:Lcom/google/c/b/c;

    invoke-interface {v1}, Lcom/google/c/b/c;->a()V

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;Lcom/google/c/b/k;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3964
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 3965
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/c/b/an;->a(Ljava/lang/Object;ILcom/google/c/b/k;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/c/b/am;)V
    .locals 2

    .prologue
    .line 1899
    invoke-interface {p1}, Lcom/google/c/b/am;->c()I

    move-result v0

    .line 1900
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/c/b/an;->a(Lcom/google/c/b/am;I)Z

    .line 1901
    return-void
.end method

.method final a(Lcom/google/c/b/ba;)V
    .locals 3

    .prologue
    .line 1893
    invoke-interface {p1}, Lcom/google/c/b/ba;->b()Lcom/google/c/b/am;

    move-result-object v0

    .line 1894
    invoke-interface {v0}, Lcom/google/c/b/am;->c()I

    move-result v1

    .line 1895
    invoke-direct {p0, v1}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/c/b/am;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/c/b/an;->a(Ljava/lang/Object;ILcom/google/c/b/ba;)Z

    .line 1896
    return-void
.end method

.method final a()Z
    .locals 4

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/google/c/b/n;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3969
    iget-object v0, p0, Lcom/google/c/b/n;->u:Lcom/google/c/b/k;

    invoke-virtual {p0, p1, v0}, Lcom/google/c/b/n;->a(Ljava/lang/Object;Lcom/google/c/b/k;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/c/b/n;->l:Lcom/google/c/b/bu;

    sget-object v1, Lcom/google/c/b/j;->a:Lcom/google/c/b/j;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lcom/google/c/b/am;J)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1956
    invoke-direct {p0}, Lcom/google/c/b/n;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/c/b/am;->e()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/c/b/n;->m:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return v0

    .line 1960
    :cond_1
    invoke-direct {p0}, Lcom/google/c/b/n;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/c/b/am;->h()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/c/b/n;->n:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 1964
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Z
    .locals 4

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/google/c/b/n;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 4239
    iget-object v1, p0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 4240
    invoke-virtual {v3}, Lcom/google/c/b/an;->a()V

    .line 4239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4242
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 4129
    if-nez p1, :cond_0

    .line 4130
    const/4 v0, 0x0

    .line 4133
    :goto_0
    return v0

    .line 4132
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4133
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/c/b/an;->b(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 20

    .prologue
    .line 4139
    if-nez p1, :cond_0

    .line 4140
    const/4 v4, 0x0

    .line 4174
    :goto_0
    return v4

    .line 4148
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/c/b/n;->r:Lcom/google/c/a/bc;

    invoke-virtual {v4}, Lcom/google/c/a/bc;->a()J

    move-result-wide v14

    .line 4149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    .line 4150
    const-wide/16 v8, -0x1

    .line 4151
    const/4 v4, 0x0

    move v10, v4

    move-wide v12, v8

    :goto_1
    const/4 v4, 0x3

    if-ge v10, v4, :cond_5

    .line 4152
    const-wide/16 v6, 0x0

    .line 4153
    array-length v0, v11

    move/from16 v16, v0

    const/4 v4, 0x0

    move-wide v8, v6

    move v6, v4

    :goto_2
    move/from16 v0, v16

    if-ge v6, v0, :cond_4

    aget-object v7, v11, v6

    .line 4156
    iget v4, v7, Lcom/google/c/b/an;->b:I

    .line 4158
    iget-object v0, v7, Lcom/google/c/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v17, v0

    .line 4159
    const/4 v4, 0x0

    move v5, v4

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_3

    .line 4160
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/b/am;

    :goto_4
    if-eqz v4, :cond_2

    .line 4161
    invoke-virtual {v7, v4, v14, v15}, Lcom/google/c/b/an;->a(Lcom/google/c/b/am;J)Ljava/lang/Object;

    move-result-object v18

    .line 4162
    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/c/b/n;->h:Lcom/google/c/a/u;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 4163
    const/4 v4, 0x1

    goto :goto_0

    .line 4160
    :cond_1
    invoke-interface {v4}, Lcom/google/c/b/am;->b()Lcom/google/c/b/am;

    move-result-object v4

    goto :goto_4

    .line 4159
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 4167
    :cond_3
    iget v4, v7, Lcom/google/c/b/an;->d:I

    int-to-long v4, v4

    add-long/2addr v8, v4

    .line 4153
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    .line 4169
    :cond_4
    cmp-long v4, v8, v12

    if-eqz v4, :cond_5

    .line 4151
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v12, v8

    goto :goto_1

    .line 4174
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/google/c/b/n;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/n;->a()Z

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

.method final e()Z
    .locals 1

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/google/c/b/n;->n()Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/google/c/b/n;->z:Ljava/util/Set;

    .line 4275
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/b/ae;

    invoke-direct {v0, p0}, Lcom/google/c/b/ae;-><init>(Lcom/google/c/b/n;)V

    iput-object v0, p0, Lcom/google/c/b/n;->z:Ljava/util/Set;

    goto :goto_0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/c/b/n;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/n;->c()Z

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

.method final g()Z
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/c/b/n;->o()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3944
    if-nez p1, :cond_0

    .line 3945
    const/4 v0, 0x0

    .line 3948
    :goto_0
    return-object v0

    .line 3947
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 3948
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/c/b/an;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final h()Z
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/c/b/n;->i:Lcom/google/c/b/aq;

    sget-object v1, Lcom/google/c/b/aq;->a:Lcom/google/c/b/aq;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Z
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/c/b/n;->j:Lcom/google/c/b/aq;

    sget-object v1, Lcom/google/c/b/aq;->a:Lcom/google/c/b/aq;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3904
    .line 3905
    iget-object v6, p0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    move v0, v1

    move-wide v2, v4

    .line 3906
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3907
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/c/b/an;->b:I

    if-eqz v7, :cond_1

    .line 3924
    :cond_0
    :goto_1
    return v1

    .line 3910
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/c/b/an;->d:I

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 3906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3913
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3914
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3915
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/c/b/an;->b:I

    if-nez v7, :cond_0

    .line 3918
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/c/b/an;->d:I

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 3914
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3920
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3924
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/google/c/b/n;->x:Ljava/util/Set;

    .line 4257
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/b/ah;

    invoke-direct {v0, p0}, Lcom/google/c/b/ah;-><init>(Lcom/google/c/b/n;)V

    iput-object v0, p0, Lcom/google/c/b/n;->x:Ljava/util/Set;

    goto :goto_0
.end method

.method final m()V
    .locals 4

    .prologue
    .line 2002
    :goto_0
    iget-object v0, p0, Lcom/google/c/b/n;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/bt;

    if-eqz v0, :cond_0

    .line 2004
    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/n;->q:Lcom/google/c/b/bs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    sget-object v1, Lcom/google/c/b/n;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2009
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 4179
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4180
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4181
    invoke-direct {p0, p1}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4182
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/c/b/an;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 4195
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/c/b/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4198
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 4187
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4188
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    invoke-direct {p0, p1}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4190
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/c/b/an;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4202
    if-nez p1, :cond_0

    .line 4203
    const/4 v0, 0x0

    .line 4206
    :goto_0
    return-object v0

    .line 4205
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4206
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/c/b/an;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 4211
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4212
    :cond_0
    const/4 v0, 0x0

    .line 4215
    :goto_0
    return v0

    .line 4214
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4215
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/c/b/an;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4231
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4232
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4233
    invoke-direct {p0, p1}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4234
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/c/b/an;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 4220
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4221
    invoke-static {p3}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4222
    if-nez p2, :cond_0

    .line 4223
    const/4 v0, 0x0

    .line 4226
    :goto_0
    return v0

    .line 4225
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/c/b/n;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4226
    invoke-direct {p0, v0}, Lcom/google/c/b/n;->a(I)Lcom/google/c/b/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/c/b/an;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 3938
    iget-object v1, p0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    aget-object v4, v1, v0

    iget v4, v4, Lcom/google/c/b/an;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Lcom/google/c/g/a;->a(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 4265
    iget-object v0, p0, Lcom/google/c/b/n;->y:Ljava/util/Collection;

    .line 4266
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/b/bb;

    invoke-direct {v0, p0}, Lcom/google/c/b/bb;-><init>(Lcom/google/c/b/n;)V

    iput-object v0, p0, Lcom/google/c/b/n;->y:Ljava/util/Collection;

    goto :goto_0
.end method
