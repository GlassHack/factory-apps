.class public final Lcom/google/common/hash/HashCodes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/common/hash/HashCodes$IntHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCodes$IntHashCode;-><init>(I)V

    return-object v0
.end method

.method public static a(J)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/google/common/hash/HashCodes$LongHashCode;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/HashCodes$LongHashCode;-><init>(J)V

    return-object v0
.end method

.method static a([B)Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/google/common/hash/HashCodes$BytesHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCodes$BytesHashCode;-><init>([B)V

    return-object v0
.end method
