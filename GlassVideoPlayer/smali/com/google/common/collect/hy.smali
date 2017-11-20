.class final Lcom/google/common/collect/hy;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hs;


# instance fields
.field final a:Lcom/google/common/collect/hk;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1618
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1619
    iput-object p3, p0, Lcom/google/common/collect/hy;->a:Lcom/google/common/collect/hk;

    .line 1620
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/google/common/collect/hy;->a:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)Lcom/google/common/collect/hs;
    .locals 1

    .prologue
    .line 1631
    new-instance v0, Lcom/google/common/collect/hy;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/hy;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)V

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/hs;)V
    .locals 0

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->clear()V

    .line 1628
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1635
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1639
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
