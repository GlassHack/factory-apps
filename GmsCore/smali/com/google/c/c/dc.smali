.class final Lcom/google/c/c/dc;
.super Lcom/google/c/c/bm;
.source "SourceFile"


# instance fields
.field final transient c:Lcom/google/c/c/db;


# direct methods
.method constructor <init>(Lcom/google/c/c/db;)V
    .locals 1

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/c/c/db;->a(Lcom/google/c/c/db;)[Lcom/google/c/c/de;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/c/c/bm;-><init>([Ljava/lang/Object;)V

    .line 203
    iput-object p1, p0, Lcom/google/c/c/dc;->c:Lcom/google/c/c/db;

    .line 204
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 207
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 208
    check-cast p1, Ljava/util/Map$Entry;

    .line 209
    iget-object v1, p0, Lcom/google/c/c/dc;->c:Lcom/google/c/c/db;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/c/c/db;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 212
    :cond_0
    return v0
.end method
