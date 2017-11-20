.class final Lcom/google/maps/api/android/lib6/gmm6/o/c/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/s;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 3

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    return-object v0
.end method
