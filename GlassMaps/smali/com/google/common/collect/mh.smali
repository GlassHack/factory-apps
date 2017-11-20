.class final Lcom/google/common/collect/mh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Lcom/google/common/collect/kq;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/google/common/collect/mh;->b(Lcom/google/common/collect/kq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/common/collect/kq;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 83
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
