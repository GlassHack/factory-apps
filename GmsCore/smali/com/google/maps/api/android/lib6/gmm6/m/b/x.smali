.class final Lcom/google/maps/api/android/lib6/gmm6/m/b/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/b/r;


# instance fields
.field a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field b:Ljava/util/Queue;

.field c:Ljava/util/Map;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/m/b/g;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/b/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->c:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/z;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/x;B)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/ab;

    invoke-direct {v1, p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ab;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/x;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(J)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/ae;

    invoke-direct {v2, p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ae;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/x;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(J)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/ac;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ac;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/x;Lcom/google/maps/api/android/lib6/gmm6/l/ae;I)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/y;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->d:Lcom/google/maps/api/android/lib6/gmm6/m/b/g;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/y;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "SDCardTileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tiles were not inserted into the disk cache."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public final b(JI)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(J)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/ad;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ad;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/x;Lcom/google/maps/api/android/lib6/gmm6/l/ah;I)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
