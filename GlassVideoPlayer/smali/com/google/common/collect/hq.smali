.class final Lcom/google/common/collect/hq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hs;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1683
    iput-object p1, p0, Lcom/google/common/collect/hq;->a:Ljava/lang/Object;

    .line 1684
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1691
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)Lcom/google/common/collect/hs;
    .locals 0

    .prologue
    .line 1695
    return-object p0
.end method

.method public final a(Lcom/google/common/collect/hs;)V
    .locals 0

    .prologue
    .line 1706
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1699
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1703
    invoke-virtual {p0}, Lcom/google/common/collect/hq;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/google/common/collect/hq;->a:Ljava/lang/Object;

    return-object v0
.end method
