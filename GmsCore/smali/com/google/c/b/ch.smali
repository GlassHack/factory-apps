.class Lcom/google/c/b/ch;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final b:Lcom/google/c/j/a/as;

.field static final m:Lcom/google/c/b/ee;

.field static final n:Ljava/util/Queue;


# instance fields
.field final c:[Lcom/google/c/b/dr;

.field final d:Lcom/google/c/a/bw;

.field final e:Lcom/google/c/a/bw;

.field final f:Lcom/google/c/b/du;

.field final g:Lcom/google/c/b/fb;

.field final h:J

.field final i:Ljava/util/Queue;

.field final j:Lcom/google/c/a/df;

.field final k:Lcom/google/c/b/cy;

.field final l:Lcom/google/c/b/ce;

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/google/c/b/du;

.field private s:J

.field private t:J

.field private u:J

.field private v:Lcom/google/c/b/et;

.field private w:Ljava/util/Set;

.field private x:Ljava/util/Collection;

.field private y:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/c/b/ch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/ch;->a:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/c/j/a/at;->a()Lcom/google/c/j/a/as;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/ch;->b:Lcom/google/c/j/a/as;

    new-instance v0, Lcom/google/c/b/ci;

    invoke-direct {v0}, Lcom/google/c/b/ci;-><init>()V

    sput-object v0, Lcom/google/c/b/ch;->m:Lcom/google/c/b/ee;

    new-instance v0, Lcom/google/c/b/cj;

    invoke-direct {v0}, Lcom/google/c/b/cj;-><init>()V

    sput-object v0, Lcom/google/c/b/ch;->n:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/c/b/by;Lcom/google/c/b/ce;)V
    .locals 8

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/c/b/by;->e()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/c/b/ch;->q:I

    invoke-virtual {p1}, Lcom/google/c/b/by;->i()Lcom/google/c/b/du;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ch;->r:Lcom/google/c/b/du;

    invoke-static {}, Lcom/google/c/b/by;->j()Lcom/google/c/b/du;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ch;->f:Lcom/google/c/b/du;

    invoke-virtual {p1}, Lcom/google/c/b/by;->b()Lcom/google/c/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-static {}, Lcom/google/c/b/by;->c()Lcom/google/c/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ch;->e:Lcom/google/c/a/bw;

    invoke-virtual {p1}, Lcom/google/c/b/by;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/c/b/ch;->s:J

    invoke-static {}, Lcom/google/c/b/by;->g()Lcom/google/c/b/fb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ch;->g:Lcom/google/c/b/fb;

    invoke-virtual {p1}, Lcom/google/c/b/by;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/c/b/ch;->t:J

    invoke-virtual {p1}, Lcom/google/c/b/by;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/c/b/ch;->u:J

    invoke-virtual {p1}, Lcom/google/c/b/by;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/c/b/ch;->h:J

    invoke-static {}, Lcom/google/c/b/by;->n()Lcom/google/c/b/et;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ch;->v:Lcom/google/c/b/et;

    iget-object v0, p0, Lcom/google/c/b/ch;->v:Lcom/google/c/b/et;

    sget-object v1, Lcom/google/c/b/cc;->a:Lcom/google/c/b/cc;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/google/c/b/ch;->n:Ljava/util/Queue;

    :goto_0
    iput-object v0, p0, Lcom/google/c/b/ch;->i:Ljava/util/Queue;

    invoke-virtual {p0}, Lcom/google/c/b/ch;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/c/b/ch;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/c/b/by;->a(Z)Lcom/google/c/a/df;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    iget-object v2, p0, Lcom/google/c/b/ch;->r:Lcom/google/c/b/du;

    invoke-virtual {p0}, Lcom/google/c/b/ch;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/c/b/ch;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0}, Lcom/google/c/b/ch;->n()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/c/b/ch;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    const/4 v1, 0x1

    :goto_3
    invoke-static {v2, v0, v1}, Lcom/google/c/b/cy;->a(Lcom/google/c/b/du;ZZ)Lcom/google/c/b/cy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ch;->k:Lcom/google/c/b/cy;

    invoke-virtual {p1}, Lcom/google/c/b/by;->o()Lcom/google/c/a/dc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/a/dc;->a()Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/c/b/ch;->l:Lcom/google/c/b/ce;

    invoke-virtual {p1}, Lcom/google/c/b/by;->d()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/c/b/ch;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/c/b/ch;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v2, p0, Lcom/google/c/b/ch;->s:J

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_4
    iget v3, p0, Lcom/google/c/b/ch;->q:I

    if-ge v1, v3, :cond_9

    invoke-virtual {p0}, Lcom/google/c/b/ch;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    mul-int/lit8 v3, v1, 0x14

    int-to-long v4, v3

    iget-wide v6, p0, Lcom/google/c/b/ch;->s:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_9

    :cond_4
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    rsub-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/c/b/ch;->p:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/c/b/ch;->o:I

    new-array v2, v1, [Lcom/google/c/b/dr;

    iput-object v2, p0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    div-int v2, v0, v1

    mul-int v3, v2, v1

    if-ge v3, v0, :cond_e

    add-int/lit8 v0, v2, 0x1

    :goto_5
    const/4 v2, 0x1

    move v5, v2

    :goto_6
    if-ge v5, v0, :cond_a

    shl-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/google/c/b/ch;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v2, p0, Lcom/google/c/b/ch;->s:J

    int-to-long v6, v1

    div-long/2addr v2, v6

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iget-wide v6, p0, Lcom/google/c/b/ch;->s:J

    int-to-long v0, v1

    rem-long/2addr v6, v0

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v2

    :goto_7
    iget-object v2, p0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    array-length v2, v2

    if-ge v4, v2, :cond_c

    int-to-long v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_d

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    :goto_8
    iget-object v1, p0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    invoke-virtual {p1}, Lcom/google/c/b/by;->o()Lcom/google/c/a/dc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/a/dc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/bx;

    invoke-direct {p0, v5, v2, v3, v0}, Lcom/google/c/b/ch;->a(IJLcom/google/c/b/bx;)Lcom/google/c/b/dr;

    move-result-object v0

    aput-object v0, v1, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v0, v2

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    array-length v0, v0

    if-ge v1, v0, :cond_c

    iget-object v2, p0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    const-wide/16 v6, -0x1

    invoke-virtual {p1}, Lcom/google/c/b/by;->o()Lcom/google/c/a/dc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/a/dc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/bx;

    invoke-direct {p0, v5, v6, v7, v0}, Lcom/google/c/b/ch;->a(IJLcom/google/c/b/bx;)Lcom/google/c/b/dr;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_c
    return-void

    :cond_d
    move-wide v2, v0

    goto :goto_8

    :cond_e
    move v0, v2

    goto :goto_5
.end method

.method private a(I)Lcom/google/c/b/dr;
    .locals 3

    iget-object v0, p0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    iget v1, p0, Lcom/google/c/b/ch;->p:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/c/b/ch;->o:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private a(IJLcom/google/c/b/bx;)Lcom/google/c/b/dr;
    .locals 8

    new-instance v1, Lcom/google/c/b/dr;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/c/b/dr;-><init>(Lcom/google/c/b/ch;IJLcom/google/c/b/bx;)V

    return-object v1
.end method

.method static a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/c/b/dq;->a(Lcom/google/c/b/dq;)V

    invoke-interface {p1, p0}, Lcom/google/c/b/dq;->b(Lcom/google/c/b/dq;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v0, p1}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;)I

    move-result v0

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

.method static b(Lcom/google/c/b/dq;)V
    .locals 1

    sget-object v0, Lcom/google/c/b/dp;->a:Lcom/google/c/b/dp;

    invoke-interface {p0, v0}, Lcom/google/c/b/dq;->a(Lcom/google/c/b/dq;)V

    invoke-interface {p0, v0}, Lcom/google/c/b/dq;->b(Lcom/google/c/b/dq;)V

    return-void
.end method

.method static b(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/c/b/dq;->c(Lcom/google/c/b/dq;)V

    invoke-interface {p1, p0}, Lcom/google/c/b/dq;->d(Lcom/google/c/b/dq;)V

    return-void
.end method

.method static c(Lcom/google/c/b/dq;)V
    .locals 1

    sget-object v0, Lcom/google/c/b/dp;->a:Lcom/google/c/b/dp;

    invoke-interface {p0, v0}, Lcom/google/c/b/dq;->c(Lcom/google/c/b/dq;)V

    invoke-interface {p0, v0}, Lcom/google/c/b/dq;->d(Lcom/google/c/b/dq;)V

    return-void
.end method

.method static j()Lcom/google/c/b/ee;
    .locals 1

    sget-object v0, Lcom/google/c/b/ch;->m:Lcom/google/c/b/ee;

    return-object v0
.end method

.method static k()Lcom/google/c/b/dq;
    .locals 1

    sget-object v0, Lcom/google/c/b/dp;->a:Lcom/google/c/b/dp;

    return-object v0
.end method

.method static l()Ljava/util/Queue;
    .locals 1

    sget-object v0, Lcom/google/c/b/ch;->n:Ljava/util/Queue;

    return-object v0
.end method

.method private n()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/c/b/ch;->u:J

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

    iget-wide v0, p0, Lcom/google/c/b/ch;->t:J

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
.method final a(Lcom/google/c/b/dq;J)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;J)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/c/b/ch;->l:Lcom/google/c/b/ce;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/c/b/ch;->b(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/ce;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/c/b/dq;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/c/b/dq;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;I)Z

    return-void
.end method

.method final a(Lcom/google/c/b/ee;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/c/b/ee;->b()Lcom/google/c/b/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/b/dq;->i()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/ee;)Z

    return-void
.end method

.method final a()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/c/b/ch;->s:J

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

.method final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/ch;->g:Lcom/google/c/b/fb;

    sget-object v1, Lcom/google/c/b/cd;->a:Lcom/google/c/b/cd;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lcom/google/c/b/dq;J)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/c/b/ch;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/c/b/dq;->a()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/c/b/ch;->t:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/google/c/b/ch;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/c/b/dq;->d()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/c/b/ch;->u:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/c/b/ch;->h:J

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

    iget-object v1, p0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/c/b/dr;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/c/b/ch;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/c/b/dr;->b(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 20

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v4}, Lcom/google/c/a/df;->a()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    move v10, v4

    move-wide v12, v8

    :goto_1
    const/4 v4, 0x3

    if-ge v10, v4, :cond_5

    const-wide/16 v6, 0x0

    array-length v0, v11

    move/from16 v16, v0

    const/4 v4, 0x0

    move-wide v8, v6

    move v6, v4

    :goto_2
    move/from16 v0, v16

    if-ge v6, v0, :cond_4

    aget-object v7, v11, v6

    iget v4, v7, Lcom/google/c/b/dr;->a:I

    iget-object v0, v7, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_3

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/b/dq;

    :goto_4
    if-eqz v4, :cond_2

    invoke-virtual {v7, v4, v14, v15}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;J)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/c/b/ch;->e:Lcom/google/c/a/bw;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v4

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    :cond_3
    iget v4, v7, Lcom/google/c/b/dr;->b:I

    int-to-long v4, v4

    add-long/2addr v8, v4

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    :cond_4
    cmp-long v4, v8, v12

    if-eqz v4, :cond_5

    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v12, v8

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/c/b/ch;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/ch;->a()Z

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

    invoke-direct {p0}, Lcom/google/c/b/ch;->n()Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/ch;->y:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/b/di;

    invoke-direct {v0, p0, p0}, Lcom/google/c/b/di;-><init>(Lcom/google/c/b/ch;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/c/b/ch;->y:Ljava/util/Set;

    goto :goto_0
.end method

.method final f()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/c/b/ch;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/ch;->c()Z

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

    invoke-direct {p0}, Lcom/google/c/b/ch;->o()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/c/b/ch;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final h()Z
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/ch;->r:Lcom/google/c/b/du;

    sget-object v1, Lcom/google/c/b/du;->a:Lcom/google/c/b/du;

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

    iget-object v0, p0, Lcom/google/c/b/ch;->f:Lcom/google/c/b/du;

    sget-object v1, Lcom/google/c/b/du;->a:Lcom/google/c/b/du;

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

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    move v0, v1

    move-wide v2, v4

    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/c/b/dr;->a:I

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/c/b/dr;->b:I

    int-to-long v8, v7

    add-long/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/c/b/dr;->a:I

    if-nez v7, :cond_0

    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/c/b/dr;->b:I

    int-to-long v8, v7

    sub-long/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/ch;->w:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/b/dl;

    invoke-direct {v0, p0, p0}, Lcom/google/c/b/dl;-><init>(Lcom/google/c/b/ch;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/c/b/ch;->w:Ljava/util/Set;

    goto :goto_0
.end method

.method final m()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/google/c/b/ch;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/eu;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/ch;->v:Lcom/google/c/b/et;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/c/b/ch;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/c/b/ch;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/c/b/ch;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/c/b/ch;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/c/b/ch;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/c/b/dr;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/c/b/ch;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/c/b/dr;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/c/b/ch;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/c/b/ch;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/c/b/ch;->a(I)Lcom/google/c/b/dr;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    iget-object v3, p0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v4, v3, v2

    iget v4, v4, Lcom/google/c/b/dr;->a:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/c/g/b;->a(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/ch;->x:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/b/ef;

    invoke-direct {v0, p0, p0}, Lcom/google/c/b/ef;-><init>(Lcom/google/c/b/ch;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/c/b/ch;->x:Ljava/util/Collection;

    goto :goto_0
.end method
