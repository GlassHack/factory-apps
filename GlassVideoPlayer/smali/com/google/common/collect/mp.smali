.class final Lcom/google/common/collect/mp;
.super Lcom/google/common/collect/np;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/common/collect/mp;->a:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/np;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/google/common/collect/mp;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 294
    instance-of v0, p1, Lcom/google/common/collect/nx;

    if-eqz v0, :cond_0

    .line 295
    check-cast p1, Lcom/google/common/collect/nx;

    .line 296
    iget-object v0, p0, Lcom/google/common/collect/mp;->a:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lcom/google/common/collect/mo;

    iget-object v1, p0, Lcom/google/common/collect/mp;->a:Lcom/google/common/collect/StandardTable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/mo;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 303
    instance-of v0, p1, Lcom/google/common/collect/nx;

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Lcom/google/common/collect/nx;

    .line 305
    iget-object v0, p0, Lcom/google/common/collect/mp;->a:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/nx;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/common/collect/mp;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->size()I

    move-result v0

    return v0
.end method
