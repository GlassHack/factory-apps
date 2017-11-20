.class final Lcom/google/common/collect/hl;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hs;


# instance fields
.field final a:Lcom/google/common/collect/hk;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1651
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1652
    iput-object p3, p0, Lcom/google/common/collect/hl;->a:Lcom/google/common/collect/hk;

    .line 1653
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/google/common/collect/hl;->a:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)Lcom/google/common/collect/hs;
    .locals 1

    .prologue
    .line 1664
    new-instance v0, Lcom/google/common/collect/hl;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/hl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)V

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/hs;)V
    .locals 0

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/google/common/collect/hl;->clear()V

    .line 1661
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1668
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/google/common/collect/hl;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
