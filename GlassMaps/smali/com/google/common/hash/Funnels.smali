.class public final Lcom/google/common/hash/Funnels;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()Lcom/google/common/hash/Funnel;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/common/hash/Funnels$ByteBufferFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$ByteBufferFunnel;

    return-object v0
.end method

.method public static a(Lcom/google/common/hash/r;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/google/common/hash/i;

    invoke-direct {v0, p0}, Lcom/google/common/hash/i;-><init>(Lcom/google/common/hash/r;)V

    return-object v0
.end method
