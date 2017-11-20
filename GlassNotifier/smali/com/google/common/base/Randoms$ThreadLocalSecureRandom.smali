.class final Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;
.super Ljava/util/Random;
.source "Randoms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Randoms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadLocalSecureRandom"
.end annotation


# instance fields
.field private initializationComplete:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->initializationComplete:Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->initializationComplete:Z

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Randoms$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/base/Randoms$1;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;-><init>()V

    return-void
.end method


# virtual methods
.method current()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/google/common/base/Randoms;->access$300()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    return-object v0
.end method

.method protected next(I)I
    .locals 1
    .param p1, "bits"    # I

    .prologue
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nextBoolean()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->current()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->current()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 187
    return-void
.end method

.method public nextDouble()D
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->current()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->current()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextFloat()F

    move-result v0

    return v0
.end method

.method public nextGaussian()D
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->current()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->current()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->current()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->current()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 3
    .param p1, "seed"    # J

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;->initializationComplete:Z

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting the seed on a thread-local Random object is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 226
    return-void
.end method
