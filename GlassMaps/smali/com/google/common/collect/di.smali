.class public abstract Lcom/google/common/collect/di;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(II)I
    .locals 2

    .prologue
    .line 291
    if-gez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 295
    :cond_0
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 296
    if-ge v0, p1, :cond_1

    .line 297
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 299
    :cond_1
    if-gez v0, :cond_2

    .line 300
    const v0, 0x7fffffff

    .line 303
    :cond_2
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .locals 2

    .prologue
    .line 352
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 353
    invoke-virtual {p0, v1}, Lcom/google/common/collect/di;->a(Ljava/lang/Object;)Lcom/google/common/collect/di;

    goto :goto_0

    .line 355
    :cond_0
    return-object p0
.end method

.method public abstract a(Ljava/lang/Object;)Lcom/google/common/collect/di;
.end method

.method public a(Ljava/util/Iterator;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 371
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/di;->a(Ljava/lang/Object;)Lcom/google/common/collect/di;

    goto :goto_0

    .line 374
    :cond_0
    return-object p0
.end method
