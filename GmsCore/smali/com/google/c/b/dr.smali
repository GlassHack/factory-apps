.class final Lcom/google/c/b/dr;
.super Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field volatile a:I

.field b:I

.field volatile c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field final d:Ljava/lang/ref/ReferenceQueue;

.field final e:Ljava/lang/ref/ReferenceQueue;

.field private f:Lcom/google/c/b/ch;

.field private g:I

.field private h:I

.field private i:J

.field private j:Ljava/util/Queue;

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l:Ljava/util/Queue;

.field private m:Ljava/util/Queue;

.field private n:Lcom/google/c/b/bx;


# direct methods
.method constructor <init>(Lcom/google/c/b/ch;IJLcom/google/c/b/bx;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/c/b/dr;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iput-wide p3, p0, Lcom/google/c/b/dr;->i:J

    invoke-static {p5}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/bx;

    iput-object v0, p0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-static {p2}, Lcom/google/c/b/dr;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/c/b/dr;->h:I

    iget-object v2, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v2}, Lcom/google/c/b/ch;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/c/b/dr;->h:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/c/b/dr;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/c/b/dr;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/c/b/dr;->h:I

    :cond_0
    iput-object v0, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1}, Lcom/google/c/b/ch;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/c/b/dr;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Lcom/google/c/b/ch;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_1
    iput-object v1, p0, Lcom/google/c/b/dr;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Lcom/google/c/b/ch;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/c/b/dr;->j:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/google/c/b/ch;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/c/b/cq;

    invoke-direct {v0}, Lcom/google/c/b/cq;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/c/b/dr;->l:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/google/c/b/ch;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/c/b/cv;

    invoke-direct {v0}, Lcom/google/c/b/cv;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/c/b/ch;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/c/b/ch;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/c/b/ch;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)Lcom/google/c/b/dq;
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

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/google/c/b/ee;->d()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->k:Lcom/google/c/b/cy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/c/b/cy;->a(Lcom/google/c/b/dr;Lcom/google/c/b/dq;Lcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v0

    iget-object v3, p0, Lcom/google/c/b/dr;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/google/c/b/ee;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/c/b/dq;)Lcom/google/c/b/ee;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/c/b/dq;->a(Lcom/google/c/b/ee;)V

    goto :goto_0
.end method

.method private a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)Lcom/google/c/b/dq;
    .locals 1

    invoke-direct {p0, p3, p4, p5}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V

    iget-object v0, p0, Lcom/google/c/b/dr;->l:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-interface {p4}, Lcom/google/c/b/ee;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/google/c/b/ee;->a(Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/c/b/dr;->b(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;IJ)Lcom/google/c/b/dq;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/c/b/dr;->e(Ljava/lang/Object;I)Lcom/google/c/b/dq;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v2, v1, p3, p4}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p3, p4}, Lcom/google/c/b/dr;->a(J)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;ILcom/google/c/b/dq;)Lcom/google/c/b/dq;
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->k:Lcom/google/c/b/cy;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/google/c/b/cy;->a(Lcom/google/c/b/dr;Ljava/lang/Object;ILcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/c/b/dq;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/c/b/ce;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v0}, Lcom/google/c/b/ch;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/c/b/dq;->d()J

    move-result-wide v0

    sub-long v0, p5, v0

    iget-object v2, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-wide v2, v2, Lcom/google/c/b/ch;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/b/ee;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3, p7}, Lcom/google/c/b/dr;->c(Ljava/lang/Object;ILcom/google/c/b/ce;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p4, v0

    :cond_0
    return-object p4
.end method

.method private a(Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p3}, Lcom/google/c/b/ee;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Recursive load"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    :try_start_0
    invoke-interface {p3}, Lcom/google/c/b/ee;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/c/b/cf;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CacheLoader returned null for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/c/b/cf;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-interface {v1}, Lcom/google/c/b/bx;->b()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v1, v1, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v1}, Lcom/google/c/a/df;->a()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/google/c/b/dr;->b(Lcom/google/c/b/dq;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-interface {v1}, Lcom/google/c/b/bx;->b()V

    return-object v0
.end method

.method private static a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method private a(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/b/dr;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/c/b/dr;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    throw v0
.end method

.method private a(Lcom/google/c/b/dq;)V
    .locals 1

    sget-object v0, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    invoke-direct {p0, p1, v0}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/en;)V

    iget-object v0, p0, Lcom/google/c/b/dr;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/google/c/b/dq;Lcom/google/c/b/en;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/c/b/dq;->i()I

    invoke-interface {p1}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V

    return-void
.end method

.method private a(Lcom/google/c/b/dq;Ljava/lang/Object;J)V
    .locals 3

    invoke-interface {p1}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v1, v1, Lcom/google/c/b/ch;->g:Lcom/google/c/b/fb;

    const/4 v1, 0x1

    const-string v2, "Weights must be non-negative"

    invoke-static {v1, v2}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v1, v1, Lcom/google/c/b/ch;->f:Lcom/google/c/b/du;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/c/b/du;->a(Lcom/google/c/b/dr;Lcom/google/c/b/dq;Ljava/lang/Object;)Lcom/google/c/b/ee;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/c/b/dq;->a(Lcom/google/c/b/ee;)V

    invoke-direct {p0}, Lcom/google/c/b/dr;->e()V

    iget v1, p0, Lcom/google/c/b/dr;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/c/b/dr;->g:I

    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v1}, Lcom/google/c/b/ch;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p3, p4}, Lcom/google/c/b/dq;->a(J)V

    :cond_0
    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v1}, Lcom/google/c/b/ch;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p3, p4}, Lcom/google/c/b/dq;->b(J)V

    :cond_1
    iget-object v1, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/c/b/dr;->l:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Lcom/google/c/b/ee;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V
    .locals 2

    iget v0, p0, Lcom/google/c/b/dr;->g:I

    invoke-interface {p2}, Lcom/google/c/b/ee;->a()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/c/b/dr;->g:I

    invoke-virtual {p3}, Lcom/google/c/b/en;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-interface {v0}, Lcom/google/c/b/bx;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->i:Ljava/util/Queue;

    sget-object v1, Lcom/google/c/b/ch;->n:Ljava/util/Queue;

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/c/b/eu;

    invoke-direct {v1, p1, v0, p3}, Lcom/google/c/b/eu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/c/b/en;)V

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->i:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(Lcom/google/c/b/dq;ILcom/google/c/b/en;)Z
    .locals 8

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    iget-object v6, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/b/dq;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)Lcom/google/c/b/dq;

    move-result-object v0

    iget v1, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/c/b/dr;->a:I

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;ILcom/google/c/b/dm;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/c/b/dq;->i()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v6, v6, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v6, p1, v5}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v5

    if-ne v5, p3, :cond_1

    invoke-virtual {p3}, Lcom/google/c/b/dm;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p3, Lcom/google/c/b/dm;->a:Lcom/google/c/b/ee;

    invoke-interface {v2, v0}, Lcom/google/c/b/dq;->a(Lcom/google/c/b/ee;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/google/c/b/dr;->b(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move v0, v1

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/Object;ILcom/google/c/b/dm;Ljava/lang/Object;)Z
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/c/b/dr;->c(J)V

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v3, v0, 0x1

    iget v0, p0, Lcom/google/c/b/dr;->h:I

    if-le v3, v0, :cond_0

    invoke-direct {p0}, Lcom/google/c/b/dr;->g()V

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v3, v0, 0x1

    :cond_0
    iget-object v5, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4}, Lcom/google/c/b/dq;->i()I

    move-result v10

    if-ne v10, p2, :cond_4

    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v10, v10, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v10, p1, v9}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq p3, v0, :cond_1

    if-nez v5, :cond_3

    sget-object v8, Lcom/google/c/b/ch;->m:Lcom/google/c/b/ee;

    if-eq v0, v8, :cond_3

    :cond_1
    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    invoke-virtual {p3}, Lcom/google/c/b/dm;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v5, :cond_2

    sget-object v0, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    :goto_1
    invoke-direct {p0, p1, p3, v0}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V

    add-int/lit8 v0, v3, -0x1

    :goto_2
    invoke-direct {p0, v4, p4, v6, v7}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;J)V

    iput v0, p0, Lcom/google/c/b/dr;->a:I

    invoke-direct {p0}, Lcom/google/c/b/dr;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move v0, v2

    :goto_3
    return v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/c/b/en;->b:Lcom/google/c/b/en;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/c/b/cp;

    const/4 v2, 0x0

    invoke-direct {v0, p4, v2}, Lcom/google/c/b/cp;-><init>(Ljava/lang/Object;I)V

    sget-object v2, Lcom/google/c/b/en;->b:Lcom/google/c/b/en;

    invoke-direct {p0, p1, v0, v2}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move v0, v1

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-interface {v4}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v4

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/c/b/dr;->b:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v0

    invoke-direct {p0, v0, p4, v6, v7}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;J)V

    invoke-virtual {v5, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v3, p0, Lcom/google/c/b/dr;->a:I

    invoke-direct {p0}, Lcom/google/c/b/dr;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move v0, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method private b(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)Lcom/google/c/b/dq;
    .locals 4

    iget v2, p0, Lcom/google/c/b/dr;->a:I

    invoke-interface {p2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {p1}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;)V

    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/google/c/b/dr;->a:I

    return-object v1
.end method

.method private b(Ljava/lang/Object;ILcom/google/c/b/ce;)Ljava/lang/Object;
    .locals 18

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v4, v4, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v4}, Lcom/google/c/a/df;->a()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/c/b/dr;->c(J)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v14, p2, v4

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/b/dq;

    move-object v6, v4

    :goto_0
    if-eqz v6, :cond_7

    invoke-interface {v6}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v6}, Lcom/google/c/b/dq;->i()I

    move-result v9

    move/from16 v0, p2

    if-ne v9, v0, :cond_3

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v9, v9, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/c/b/ee;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move-object v8, v9

    :goto_1
    if-eqz v7, :cond_6

    new-instance v5, Lcom/google/c/b/dm;

    invoke-direct {v5}, Lcom/google/c/b/dm;-><init>()V

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/google/c/b/dq;->a(Lcom/google/c/b/ee;)V

    invoke-virtual {v13, v14, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct/range {p0 .. p0}, Lcom/google/c/b/dr;->h()V

    if-eqz v7, :cond_5

    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/google/c/b/dm;->a(Ljava/lang/Object;Lcom/google/c/b/ce;)Lcom/google/c/j/a/aq;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/dm;Lcom/google/c/j/a/aq;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-interface {v5}, Lcom/google/c/b/bx;->b()V

    :goto_3
    return-object v4

    :cond_0
    :try_start_3
    invoke-interface {v9}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9, v7}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/c/b/dr;->l:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/c/b/dr;->a:I

    move v7, v8

    move-object v8, v9

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10, v11}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;J)Z

    move-result v16

    if-eqz v16, :cond_2

    sget-object v7, Lcom/google/c/b/en;->d:Lcom/google/c/b/en;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9, v7}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct/range {p0 .. p0}, Lcom/google/c/b/dr;->h()V

    throw v4

    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10, v11}, Lcom/google/c/b/dr;->c(Lcom/google/c/b/dq;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-interface {v4}, Lcom/google/c/b/bx;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct/range {p0 .. p0}, Lcom/google/c/b/dr;->h()V

    move-object v4, v7

    goto :goto_3

    :cond_3
    :try_start_5
    invoke-interface {v6}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v6

    goto/16 :goto_0

    :cond_4
    invoke-interface {v6, v5}, Lcom/google/c/b/dq;->a(Lcom/google/c/b/ee;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v5

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-interface {v5}, Lcom/google/c/b/bx;->b()V

    throw v4

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1, v8}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :cond_7
    move/from16 v17, v8

    move-object v8, v7

    move/from16 v7, v17

    goto/16 :goto_1
.end method

.method private b(J)V
    .locals 3

    invoke-direct {p0}, Lcom/google/c/b/dr;->e()V

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/dr;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/c/b/dq;->i()I

    move-result v1

    sget-object v2, Lcom/google/c/b/en;->d:Lcom/google/c/b/en;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;ILcom/google/c/b/en;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/google/c/b/dq;->i()I

    move-result v1

    sget-object v2, Lcom/google/c/b/en;->d:Lcom/google/c/b/en;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;ILcom/google/c/b/en;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method private b(Lcom/google/c/b/dq;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v0}, Lcom/google/c/b/ch;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/google/c/b/dq;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/dr;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(Ljava/lang/Object;ILcom/google/c/b/ce;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/c/b/dr;->d(Ljava/lang/Object;I)Lcom/google/c/b/dm;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v4, p1, p3}, Lcom/google/c/b/dm;->a(Ljava/lang/Object;Lcom/google/c/b/ce;)Lcom/google/c/j/a/aq;

    move-result-object v5

    new-instance v0, Lcom/google/c/b/ds;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/c/b/ds;-><init>(Lcom/google/c/b/dr;Ljava/lang/Object;ILcom/google/c/b/dm;Lcom/google/c/j/a/aq;)V

    sget-object v1, Lcom/google/c/b/ch;->b:Lcom/google/c/j/a/as;

    invoke-interface {v5, v0, v1}, Lcom/google/c/j/a/aq;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v5}, Lcom/google/c/j/a/aq;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/google/c/j/a/ay;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method private c()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/b/dr;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/google/c/b/dr;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    throw v0
.end method

.method private c(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/c/b/dr;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/google/c/b/dr;->d()V

    invoke-direct {p0, p1, p2}, Lcom/google/c/b/dr;->b(J)V

    iget-object v0, p0, Lcom/google/c/b/dr;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    throw v0
.end method

.method private c(Lcom/google/c/b/dq;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v0}, Lcom/google/c/b/ch;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/google/c/b/dq;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d(Ljava/lang/Object;I)Lcom/google/c/b/dm;
    .locals 8

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/c/b/dr;->c(J)V

    iget-object v4, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Lcom/google/c/b/dq;->i()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v7, v7, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v7, p1, v6}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/c/b/ee;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/google/c/b/dq;->d()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-wide v6, v0, Lcom/google/c/b/ch;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    new-instance v0, Lcom/google/c/b/dm;

    invoke-direct {v0, v4}, Lcom/google/c/b/dm;-><init>(Lcom/google/c/b/ee;)V

    invoke-interface {v1, v0}, Lcom/google/c/b/dq;->a(Lcom/google/c/b/ee;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v1}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/c/b/dr;->b:I

    new-instance v1, Lcom/google/c/b/dm;

    invoke-direct {v1}, Lcom/google/c/b/dm;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/c/b/dq;->a(Lcom/google/c/b/ee;)V

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0
.end method

.method private d()V
    .locals 5

    const/16 v4, 0x10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v0}, Lcom/google/c/b/ch;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/c/b/dr;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/c/b/dq;

    iget-object v3, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v3, v0}, Lcom/google/c/b/ch;->a(Lcom/google/c/b/dq;)V

    add-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v0}, Lcom/google/c/b/ch;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/c/b/dr;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/google/c/b/ee;

    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v1, v0}, Lcom/google/c/b/ch;->a(Lcom/google/c/b/ee;)V

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private e(Ljava/lang/Object;I)Lcom/google/c/b/dq;
    .locals 3

    iget-object v0, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/c/b/dq;->i()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-interface {v0}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/c/b/dr;->c()V

    :cond_0
    invoke-interface {v0}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v2, v2, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v2, p1, v1}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/c/b/dr;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v0}, Lcom/google/c/b/ch;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/c/b/dr;->e()V

    :cond_2
    iget v0, p0, Lcom/google/c/b/dr;->g:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/c/b/dr;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    invoke-interface {v0}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/c/b/ee;->a()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Lcom/google/c/b/dq;->i()I

    move-result v1

    sget-object v2, Lcom/google/c/b/en;->e:Lcom/google/c/b/en;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;ILcom/google/c/b/en;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private g()V
    .locals 11

    iget-object v7, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    const/high16 v0, 0x40000000    # 2.0f

    if-lt v8, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v5, p0, Lcom/google/c/b/dr;->a:I

    shl-int/lit8 v0, v8, 0x1

    invoke-static {v0}, Lcom/google/c/b/dr;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/c/b/dr;->h:I

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/c/b/dq;->i()I

    move-result v1

    and-int v4, v1, v10

    if-nez v2, :cond_2

    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v2, v5

    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_3
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/google/c/b/dq;->i()I

    move-result v3

    and-int/2addr v3, v10

    if-eq v3, v4, :cond_6

    move-object v1, v2

    :goto_4
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v2

    move v4, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v3, v0

    move v2, v5

    :goto_5
    if-eq v3, v1, :cond_1

    invoke-interface {v3}, Lcom/google/c/b/dq;->i()I

    move-result v0

    and-int v4, v0, v10

    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    invoke-direct {p0, v3, v0}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v2

    :goto_6
    invoke-interface {v3}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    goto :goto_5

    :cond_4
    invoke-direct {p0, v3}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;)V

    add-int/lit8 v0, v2, -0x1

    goto :goto_6

    :cond_5
    iput-object v9, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v5, p0, Lcom/google/c/b/dr;->a:I

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_4

    :cond_7
    move v2, v5

    goto :goto_2
.end method

.method private h()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/b/dr;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v0}, Lcom/google/c/b/ch;->m()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lcom/google/c/b/dq;J)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/c/b/dr;->c()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/c/b/dr;->c()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/google/c/b/dr;->a(J)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/google/c/b/dr;->a:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v1, v1, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v1}, Lcom/google/c/a/df;->a()J

    move-result-wide v6

    invoke-direct {p0, p1, p2, v6, v7}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;IJ)Lcom/google/c/b/dq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v2, v6, v7}, Lcom/google/c/b/dr;->b(Lcom/google/c/b/dq;J)V

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v8, v0, Lcom/google/c/b/ch;->l:Lcom/google/c/b/ce;

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/c/b/ce;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/c/b/dr;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILcom/google/c/b/ce;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget v0, p0, Lcom/google/c/b/dr;->a:I

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/c/b/dr;->e(Ljava/lang/Object;I)Lcom/google/c/b/dq;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v2, v6, v7}, Lcom/google/c/b/dr;->b(Lcom/google/c/b/dq;J)V

    iget-object v0, p0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-interface {v0}, Lcom/google/c/b/bx;->a()V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/c/b/ce;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/b/ee;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, p1, v0}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/c/b/dr;->b(Ljava/lang/Object;ILcom/google/c/b/ce;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2

    new-instance v1, Lcom/google/c/j/a/ai;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {v1, v0}, Lcom/google/c/j/a/ai;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    throw v0

    :cond_2
    :try_start_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    new-instance v1, Lcom/google/c/j/a/ax;

    invoke-direct {v1, v0}, Lcom/google/c/j/a/ax;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method final a(Ljava/lang/Object;ILcom/google/c/b/dm;Lcom/google/c/j/a/aq;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p4}, Lcom/google/c/j/a/ay;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/c/b/cf;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CacheLoader returned null for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/c/b/cf;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-virtual {p3}, Lcom/google/c/b/dm;->f()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/c/b/bx;->b(J)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/dm;)Z

    :cond_0
    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-virtual {p3}, Lcom/google/c/b/dm;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/c/b/bx;->a(J)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/dm;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/c/b/dr;->n:Lcom/google/c/b/bx;

    invoke-virtual {p3}, Lcom/google/c/b/dm;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/c/b/bx;->b(J)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/dm;)Z

    :cond_2
    return-object v1
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/google/c/b/dr;->c(J)V

    iget-object v7, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v10, p2, v0

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/b/dq;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/c/b/dq;->i()I

    move-result v0

    if-ne v0, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v0, p1, v3}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {v4}, Lcom/google/c/b/ee;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    sget-object v5, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)Lcom/google/c/b/dq;

    move-result-object v0

    iget v1, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/c/b/dr;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/c/b/dr;->b:I

    sget-object v1, Lcom/google/c/b/en;->b:Lcom/google/c/b/en;

    invoke-direct {p0, p1, v4, v1}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V

    invoke-direct {p0, v2, p3, v8, v9}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;J)V

    invoke-direct {p0}, Lcom/google/c/b/dr;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/c/b/dr;->c(J)V

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/google/c/b/dr;->h:I

    if-le v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/c/b/dr;->g()V

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    :cond_0
    iget-object v3, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, Lcom/google/c/b/dq;->i()I

    move-result v8

    if-ne v8, p2, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v8, v8, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v8, p1, v7}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    invoke-interface {v3}, Lcom/google/c/b/ee;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    invoke-direct {p0, p1, v3, v0}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V

    invoke-direct {p0, v2, p3, v4, v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;J)V

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    :goto_1
    iput v0, p0, Lcom/google/c/b/dr;->a:I

    invoke-direct {p0}, Lcom/google/c/b/dr;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, v2, p3, v4, v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;J)V

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0, v2, v4, v5}, Lcom/google/c/b/dr;->c(Lcom/google/c/b/dq;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_2

    :cond_3
    :try_start_2
    iget v1, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/c/b/dr;->b:I

    sget-object v1, Lcom/google/c/b/en;->b:Lcom/google/c/b/en;

    invoke-direct {p0, p1, v3, v1}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V

    invoke-direct {p0, v2, p3, v4, v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;J)V

    invoke-direct {p0}, Lcom/google/c/b/dr;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_2

    :cond_4
    :try_start_3
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/c/b/dr;->b:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;ILcom/google/c/b/dq;)Lcom/google/c/b/dq;

    move-result-object v0

    invoke-direct {p0, v0, p3, v4, v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;J)V

    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->a:I

    invoke-direct {p0}, Lcom/google/c/b/dr;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0
.end method

.method final a()V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/c/b/ee;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/c/b/en;->a:Lcom/google/c/b/en;

    invoke-direct {p0, v0, v4}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/en;)V

    :cond_0
    invoke-interface {v0}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v0}, Lcom/google/c/b/ch;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/c/b/dr;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_5
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    invoke-virtual {v0}, Lcom/google/c/b/ch;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/c/b/dr;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_7
    iget-object v0, p0, Lcom/google/c/b/dr;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/c/b/dr;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/c/b/dr;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/b/dr;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0
.end method

.method final a(Lcom/google/c/b/dq;I)Z
    .locals 8

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/c/b/dr;->a:I

    iget-object v6, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/b/dq;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v4

    sget-object v5, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)Lcom/google/c/b/dq;

    move-result-object v0

    iget v1, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/c/b/dr;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILcom/google/c/b/ee;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget v1, p0, Lcom/google/c/b/dr;->a:I

    iget-object v6, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v7, p2, v1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/b/dq;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/c/b/dq;->i()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v4, v4, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v4, p1, v3}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v4

    if-ne v4, p3, :cond_2

    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    sget-object v5, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)Lcom/google/c/b/dq;

    move-result-object v0

    iget v1, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/c/b/dr;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-virtual {p0}, Lcom/google/c/b/dr;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-virtual {p0}, Lcom/google/c/b/dr;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-virtual {p0}, Lcom/google/c/b/dr;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-virtual {p0}, Lcom/google/c/b/dr;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    :cond_5
    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/google/c/b/dr;->c(J)V

    iget-object v7, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v10, p2, v0

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/b/dq;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/c/b/dq;->i()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v0, p1, v3}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {v4}, Lcom/google/c/b/ee;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    sget-object v5, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)Lcom/google/c/b/dq;

    move-result-object v0

    iget v1, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/c/b/dr;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move v0, v6

    :goto_1
    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v1, v1, Lcom/google/c/b/ch;->e:Lcom/google/c/a/bw;

    invoke-virtual {v1, p3, v0}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    sget-object v0, Lcom/google/c/b/en;->b:Lcom/google/c/b/en;

    invoke-direct {p0, p1, v4, v0}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)V

    invoke-direct {p0, v2, p4, v8, v9}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Ljava/lang/Object;J)V

    invoke-direct {p0}, Lcom/google/c/b/dr;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-direct {p0, v2, v8, v9}, Lcom/google/c/b/dr;->c(Lcom/google/c/b/dq;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move v0, v6

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/dr;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/c/b/dr;->c(J)V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    :cond_0
    return-void
.end method

.method final b(Ljava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/google/c/b/dr;->a:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v1, v1, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v1}, Lcom/google/c/a/df;->a()J

    move-result-wide v2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/c/b/dr;->a(Ljava/lang/Object;IJ)Lcom/google/c/b/dq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->b()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/c/b/dr;->c(J)V

    iget v0, p0, Lcom/google/c/b/dr;->a:I

    iget-object v7, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/b/dq;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/c/b/dq;->i()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v0, p1, v3}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v5, v5, Lcom/google/c/b/ch;->e:Lcom/google/c/a/bw;

    invoke-virtual {v5, p3, v0}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/c/b/en;->a:Lcom/google/c/b/en;

    :goto_1
    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)Lcom/google/c/b/dq;

    move-result-object v0

    iget v1, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/c/b/dr;->a:I

    sget-object v0, Lcom/google/c/b/en;->a:Lcom/google/c/b/en;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move v6, v0

    :goto_3
    return v6

    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {v4}, Lcom/google/c/b/ee;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v5, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_3

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0
.end method

.method final c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v1, v1, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v1}, Lcom/google/c/a/df;->a()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/c/b/dr;->c(J)V

    iget v1, p0, Lcom/google/c/b/dr;->a:I

    iget-object v7, p0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/b/dq;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/c/b/dq;->i()I

    move-result v4

    if-ne v4, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/c/b/dr;->f:Lcom/google/c/b/ch;

    iget-object v4, v4, Lcom/google/c/b/ch;->d:Lcom/google/c/a/bw;

    invoke-virtual {v4, p1, v3}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/google/c/b/dq;->h()Lcom/google/c/b/ee;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/c/b/ee;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v5, Lcom/google/c/b/en;->a:Lcom/google/c/b/en;

    :goto_1
    iget v0, p0, Lcom/google/c/b/dr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/dr;->b:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/c/b/dr;->a(Lcom/google/c/b/dq;Lcom/google/c/b/dq;Ljava/lang/Object;Lcom/google/c/b/ee;Lcom/google/c/b/en;)Lcom/google/c/b/dq;

    move-result-object v0

    iget v1, p0, Lcom/google/c/b/dr;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/c/b/dr;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v4}, Lcom/google/c/b/ee;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/google/c/b/en;->c:Lcom/google/c/b/en;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/c/b/dr;->unlock()V

    invoke-direct {p0}, Lcom/google/c/b/dr;->h()V

    throw v0
.end method
