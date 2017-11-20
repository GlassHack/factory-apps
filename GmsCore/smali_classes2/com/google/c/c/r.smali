.class final Lcom/google/c/c/r;
.super Lcom/google/c/c/cf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/c/q;


# direct methods
.method constructor <init>(Lcom/google/c/c/q;)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/google/c/c/r;->a:Lcom/google/c/c/q;

    invoke-direct {p0}, Lcom/google/c/c/cf;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/google/c/c/r;->a:Lcom/google/c/c/q;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/c/c/r;->a:Lcom/google/c/c/q;

    iget-object v0, v0, Lcom/google/c/c/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/al;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1251
    new-instance v0, Lcom/google/c/c/s;

    iget-object v1, p0, Lcom/google/c/c/r;->a:Lcom/google/c/c/q;

    invoke-direct {v0, v1}, Lcom/google/c/c/s;-><init>(Lcom/google/c/c/q;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1261
    invoke-virtual {p0, p1}, Lcom/google/c/c/r;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    const/4 v0, 0x0

    .line 1266
    :goto_0
    return v0

    .line 1264
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1265
    iget-object v0, p0, Lcom/google/c/c/r;->a:Lcom/google/c/c/q;

    iget-object v0, v0, Lcom/google/c/c/q;->c:Lcom/google/c/c/m;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;Ljava/lang/Object;)I

    .line 1266
    const/4 v0, 0x1

    goto :goto_0
.end method
