.class public final Lcom/google/common/primitives/SignedBytes;
.super Ljava/lang/Object;
.source "SignedBytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = 0x40t


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .locals 4
    .param p0, "value"    # J

    .prologue
    .line 56
    long-to-int v1, p0

    int-to-byte v0, v1

    .line 57
    .local v0, "result":B
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Out of range: %s"

    invoke-static {v1, v2, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 58
    return v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static compare(BB)I
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B

    .prologue
    .line 92
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [B

    .prologue
    .line 142
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    array-length v2, p1

    if-nez v2, :cond_0

    .line 144
    const-string v2, ""

    .line 153
    :goto_0
    return-object v2

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 149
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 171
    sget-object v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .locals 4
    .param p0, "array"    # [B

    .prologue
    const/4 v3, 0x0

    .line 123
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 124
    aget-byte v1, p0, v3

    .line 125
    .local v1, "max":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 126
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_0

    .line 127
    aget-byte v1, p0, v0

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "max":B
    :cond_1
    move v2, v3

    .line 123
    goto :goto_0

    .line 130
    .restart local v0    # "i":I
    .restart local v1    # "max":B
    :cond_2
    return v1
.end method

.method public static varargs min([B)B
    .locals 4
    .param p0, "array"    # [B

    .prologue
    const/4 v3, 0x0

    .line 104
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 105
    aget-byte v1, p0, v3

    .line 106
    .local v1, "min":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 107
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 108
    aget-byte v1, p0, v0

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "min":B
    :cond_1
    move v2, v3

    .line 104
    goto :goto_0

    .line 111
    .restart local v0    # "i":I
    .restart local v1    # "min":B
    :cond_2
    return v1
.end method

.method public static saturatedCast(J)B
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 69
    const-wide/16 v0, 0x7f

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 70
    const/16 v0, 0x7f

    .line 75
    :goto_0
    return v0

    .line 72
    :cond_0
    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 73
    const/16 v0, -0x80

    goto :goto_0

    .line 75
    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_0
.end method
