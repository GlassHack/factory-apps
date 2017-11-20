.class Lcom/google/common/base/Suppliers$MemoizingSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/base/av;

.field volatile transient initialized:Z

.field transient value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/base/av;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->delegate:Lcom/google/common/base/av;

    .line 118
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    if-nez v0, :cond_1

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->delegate:Lcom/google/common/base/av;

    invoke-interface {v0}, Lcom/google/common/base/av;->get()Ljava/lang/Object;

    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->value:Ljava/lang/Object;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    return-object v0

    .line 130
    :cond_0
    monitor-exit p0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->value:Ljava/lang/Object;

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppliers.memoize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->delegate:Lcom/google/common/base/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
