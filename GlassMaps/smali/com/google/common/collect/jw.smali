.class final Lcom/google/common/collect/jw;
.super Lcom/google/common/collect/in;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/jv;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jv;)V
    .locals 0

    .prologue
    .line 2044
    iput-object p1, p0, Lcom/google/common/collect/jw;->a:Lcom/google/common/collect/jv;

    invoke-direct {p0}, Lcom/google/common/collect/in;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/google/common/collect/jw;->a:Lcom/google/common/collect/jv;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/google/common/collect/jw;->a:Lcom/google/common/collect/jv;

    invoke-virtual {v0}, Lcom/google/common/collect/jv;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 2057
    invoke-virtual {p0, p1}, Lcom/google/common/collect/jw;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2058
    const/4 v0, 0x0

    .line 2062
    :goto_0
    return v0

    .line 2060
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2061
    iget-object v0, p0, Lcom/google/common/collect/jw;->a:Lcom/google/common/collect/jv;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/jv;->a(Ljava/lang/Object;)V

    .line 2062
    const/4 v0, 0x1

    goto :goto_0
.end method
