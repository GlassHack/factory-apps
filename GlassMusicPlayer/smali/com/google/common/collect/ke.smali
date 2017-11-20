.class final Lcom/google/common/collect/ke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field final synthetic b:Lcom/google/common/collect/kd;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kd;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/google/common/collect/ke;->b:Lcom/google/common/collect/kd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 1110
    iget v0, p0, Lcom/google/common/collect/ke;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ke;->b:Lcom/google/common/collect/kd;

    iget-object v0, v0, Lcom/google/common/collect/kd;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/ke;->b:Lcom/google/common/collect/kd;

    iget-object v1, v1, Lcom/google/common/collect/kd;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/common/collect/ke;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1117
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ke;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ke;->a:I

    .line 1118
    iget-object v0, p0, Lcom/google/common/collect/ke;->b:Lcom/google/common/collect/kd;

    iget-object v0, v0, Lcom/google/common/collect/kd;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/ke;->b:Lcom/google/common/collect/kd;

    iget-object v1, v1, Lcom/google/common/collect/kd;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1122
    iget v1, p0, Lcom/google/common/collect/ke;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    .line 1123
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ke;->a:I

    .line 1124
    iget-object v0, p0, Lcom/google/common/collect/ke;->b:Lcom/google/common/collect/kd;

    iget-object v0, v0, Lcom/google/common/collect/kd;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/ke;->b:Lcom/google/common/collect/kd;

    iget-object v1, v1, Lcom/google/common/collect/kd;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    return-void

    .line 1122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
