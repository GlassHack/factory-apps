.class public abstract Lcom/google/maps/api/android/lib6/gmm6/e/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/LinkedList;

.field protected b:I

.field public c:Ljava/lang/Object;

.field public d:I

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/e/e;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(IILcom/google/maps/api/android/lib6/gmm6/e/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a:Ljava/util/LinkedList;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->h:I

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->f:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->g:I

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/e;

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/e/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->i:I

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a()V

    return-void
.end method

.method private d(I)I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->h:I

    shr-int v1, p1, v0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->g:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->i:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index out of bound : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(index) > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(size)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/e;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/e/e;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->b:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->d:I

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a()V

    move v1, v2

    :goto_0
    if-ge v1, p2, :cond_2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->f:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->f:I

    add-int/2addr v3, v1

    if-le v3, p2, :cond_0

    sub-int v0, p2, v1

    :cond_0
    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->b:I

    invoke-virtual {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->f:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->b:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->d:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->d:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->h:I

    shl-int/2addr v0, v1

    return v0
.end method

.method public final b(I)V
    .locals 5

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->f:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->g:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->b:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->b:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->i:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->c:Ljava/lang/Object;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->b:I

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->f:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->c:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->d:I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->d:I

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/e;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->b:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->a:I

    if-ne v4, v5, :cond_0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/e/e;->b:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public final c(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/e/a;->d(I)I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/a;->i:I

    return-void
.end method
