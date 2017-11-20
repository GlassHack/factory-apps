.class final Lcom/google/common/collect/HashBiMap$Inverse;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/az;
.implements Ljava/io/Serializable;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 542
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cs;)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/az;->clear()V

    .line 500
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/az;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/az;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 578
    new-instance v0, Lcom/google/common/collect/cx;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cx;-><init>(Lcom/google/common/collect/HashBiMap$Inverse;)V

    return-object v0
.end method

.method public final forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/google/common/collect/HashBiMap;->access$1100(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final forward()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    .line 510
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final inverse()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 539
    new-instance v0, Lcom/google/common/collect/da;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/da;-><init>(Lcom/google/common/collect/HashBiMap$Inverse;Lcom/google/common/collect/cs;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/common/collect/HashBiMap;->access$1100(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    .line 525
    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 529
    :goto_0
    return-object v0

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/ct;)V

    .line 529
    iget-object v0, v0, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$1000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Set;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/az;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method
