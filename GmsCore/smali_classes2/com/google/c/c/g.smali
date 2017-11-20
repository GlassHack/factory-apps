.class final Lcom/google/c/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/c/c/f;


# direct methods
.method constructor <init>(Lcom/google/c/c/f;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/c/c/g;->c:Lcom/google/c/c/f;

    iput-object p2, p0, Lcom/google/c/c/g;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/c/c/g;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/c/c/g;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/c/c/g;->a:Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/c/c/h;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/h;-><init>(Lcom/google/c/c/g;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public final remove()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/c/c/g;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/c/a/ah;->b(ZLjava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/google/c/c/g;->c:Lcom/google/c/c/f;

    iget-object v0, p0, Lcom/google/c/c/g;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    invoke-virtual {v0}, Lcom/google/c/c/ao;->b()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/c/c/f;->a(Lcom/google/c/c/f;J)J

    .line 130
    iget-object v0, p0, Lcom/google/c/c/g;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/c/g;->a:Ljava/util/Map$Entry;

    .line 132
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
