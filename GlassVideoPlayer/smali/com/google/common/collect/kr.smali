.class final Lcom/google/common/collect/kr;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/common/collect/kq;Lcom/google/common/collect/kq;)I
    .locals 2

    .prologue
    .line 1086
    invoke-interface {p1}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    invoke-interface {p0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1082
    check-cast p1, Lcom/google/common/collect/kq;

    check-cast p2, Lcom/google/common/collect/kq;

    invoke-static {p1, p2}, Lcom/google/common/collect/kr;->a(Lcom/google/common/collect/kq;Lcom/google/common/collect/kq;)I

    move-result v0

    return v0
.end method
