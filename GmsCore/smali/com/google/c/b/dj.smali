.class abstract Lcom/google/c/b/dj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/google/c/b/dr;

.field private d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private e:Lcom/google/c/b/dq;

.field private f:Lcom/google/c/b/ct;

.field private g:Lcom/google/c/b/ct;

.field private synthetic h:Lcom/google/c/b/ch;


# direct methods
.method constructor <init>(Lcom/google/c/b/ch;)V
    .locals 1

    iput-object p1, p0, Lcom/google/c/b/dj;->h:Lcom/google/c/b/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/c/b/dj;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/b/dj;->b:I

    invoke-direct {p0}, Lcom/google/c/b/dj;->b()V

    return-void
.end method

.method private a(Lcom/google/c/b/dq;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/dj;->h:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->j:Lcom/google/c/a/df;

    invoke-virtual {v0}, Lcom/google/c/a/df;->a()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/c/b/dq;->g()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/c/b/dj;->h:Lcom/google/c/b/ch;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/c/b/ch;->a(Lcom/google/c/b/dq;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/c/b/ct;

    iget-object v3, p0, Lcom/google/c/b/dj;->h:Lcom/google/c/b/ch;

    invoke-direct {v1, v2, v0}, Lcom/google/c/b/ct;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/c/b/dj;->f:Lcom/google/c/b/ct;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/c/b/dj;->c:Lcom/google/c/b/dr;

    invoke-virtual {v0}, Lcom/google/c/b/dr;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/dj;->c:Lcom/google/c/b/dr;

    invoke-virtual {v0}, Lcom/google/c/b/dr;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/b/dj;->c:Lcom/google/c/b/dr;

    invoke-virtual {v1}, Lcom/google/c/b/dr;->b()V

    throw v0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/b/dj;->f:Lcom/google/c/b/ct;

    invoke-direct {p0}, Lcom/google/c/b/dj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/c/b/dj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget v0, p0, Lcom/google/c/b/dj;->a:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/b/dj;->h:Lcom/google/c/b/ch;

    iget-object v0, v0, Lcom/google/c/b/ch;->c:[Lcom/google/c/b/dr;

    iget v1, p0, Lcom/google/c/b/dj;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/c/b/dj;->a:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/c/b/dj;->c:Lcom/google/c/b/dr;

    iget-object v0, p0, Lcom/google/c/b/dj;->c:Lcom/google/c/b/dr;

    iget v0, v0, Lcom/google/c/b/dr;->a:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/c/b/dj;->c:Lcom/google/c/b/dr;

    iget-object v0, v0, Lcom/google/c/b/dr;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/c/b/dj;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v0, p0, Lcom/google/c/b/dj;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/c/b/dj;->b:I

    invoke-direct {p0}, Lcom/google/c/b/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dj;->e:Lcom/google/c/b/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/c/b/dj;->e:Lcom/google/c/b/dq;

    invoke-interface {v0}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/dj;->e:Lcom/google/c/b/dq;

    :goto_0
    iget-object v0, p0, Lcom/google/c/b/dj;->e:Lcom/google/c/b/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/c/b/dj;->e:Lcom/google/c/b/dq;

    invoke-direct {p0, v0}, Lcom/google/c/b/dj;->a(Lcom/google/c/b/dq;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/dj;->e:Lcom/google/c/b/dq;

    invoke-interface {v0}, Lcom/google/c/b/dq;->j()Lcom/google/c/b/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/dj;->e:Lcom/google/c/b/dq;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()Z
    .locals 3

    :cond_0
    iget v0, p0, Lcom/google/c/b/dj;->b:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/c/b/dj;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/c/b/dj;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/c/b/dj;->b:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/dq;

    iput-object v0, p0, Lcom/google/c/b/dj;->e:Lcom/google/c/b/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/b/dj;->e:Lcom/google/c/b/dq;

    invoke-direct {p0, v0}, Lcom/google/c/b/dj;->a(Lcom/google/c/b/dq;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/c/b/dj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/c/b/ct;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dj;->f:Lcom/google/c/b/ct;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/dj;->f:Lcom/google/c/b/ct;

    iput-object v0, p0, Lcom/google/c/b/dj;->g:Lcom/google/c/b/ct;

    invoke-direct {p0}, Lcom/google/c/b/dj;->b()V

    iget-object v0, p0, Lcom/google/c/b/dj;->g:Lcom/google/c/b/ct;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dj;->f:Lcom/google/c/b/ct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/dj;->g:Lcom/google/c/b/ct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    iget-object v0, p0, Lcom/google/c/b/dj;->h:Lcom/google/c/b/ch;

    iget-object v1, p0, Lcom/google/c/b/dj;->g:Lcom/google/c/b/ct;

    invoke-virtual {v1}, Lcom/google/c/b/ct;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/b/ch;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/b/dj;->g:Lcom/google/c/b/ct;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
