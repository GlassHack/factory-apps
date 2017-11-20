.class final Lcom/google/common/collect/bi;
.super Lcom/google/common/collect/bh;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/bh;-><init>(Lcom/google/common/collect/bi;)V

    return-void
.end method

.method private static a(I)Lcom/google/common/collect/bh;
    .locals 1

    .prologue
    .line 111
    if-gez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/bh;->c()Lcom/google/common/collect/bh;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lcom/google/common/collect/bh;->d()Lcom/google/common/collect/bh;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/bh;->e()Lcom/google/common/collect/bh;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bh;
    .locals 1

    .prologue
    .line 72
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/bi;->a(I)Lcom/google/common/collect/bh;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
