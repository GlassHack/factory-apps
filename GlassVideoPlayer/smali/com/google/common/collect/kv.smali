.class abstract Lcom/google/common/collect/kv;
.super Lcom/google/common/collect/ma;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/google/common/collect/ma;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/kp;
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/google/common/collect/kv;->a()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->clear()V

    .line 1006
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 970
    instance-of v1, p1, Lcom/google/common/collect/kq;

    if-eqz v1, :cond_0

    .line 975
    check-cast p1, Lcom/google/common/collect/kq;

    .line 976
    invoke-interface {p1}, Lcom/google/common/collect/kq;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v0

    .line 979
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/kv;->a()Lcom/google/common/collect/kp;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/kp;->count(Ljava/lang/Object;)I

    move-result v1

    .line 980
    invoke-interface {p1}, Lcom/google/common/collect/kq;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 989
    instance-of v1, p1, Lcom/google/common/collect/kq;

    if-eqz v1, :cond_0

    .line 990
    check-cast p1, Lcom/google/common/collect/kq;

    .line 991
    invoke-interface {p1}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 992
    invoke-interface {p1}, Lcom/google/common/collect/kq;->getCount()I

    move-result v2

    .line 993
    if-eqz v2, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/google/common/collect/kv;->a()Lcom/google/common/collect/kp;

    move-result-object v3

    .line 997
    invoke-interface {v3, v1, v2, v0}, Lcom/google/common/collect/kp;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    .line 1000
    :cond_0
    return v0
.end method
