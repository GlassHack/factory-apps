.class public Lcom/google/glass/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 18
    if-eqz p0, :cond_1

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 20
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 25
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 19
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 29
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 10
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static iterable([Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/google/glass/util/ArrayUtils$2;

    invoke-direct {v0, p0}, Lcom/google/glass/util/ArrayUtils$2;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/google/glass/util/ArrayUtils$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/ArrayUtils$1;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static length([B)I
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 33
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    goto :goto_0
.end method

.method public static length([Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 14
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    goto :goto_0
.end method
