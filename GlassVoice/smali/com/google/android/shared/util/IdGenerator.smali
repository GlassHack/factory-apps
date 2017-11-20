.class public Lcom/google/android/shared/util/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# static fields
.field public static final INSTANCE:Lcom/google/android/shared/util/IdGenerator;


# instance fields
.field private mClientSequenceId:J

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/shared/util/IdGenerator;

    invoke-direct {v0}, Lcom/google/android/shared/util/IdGenerator;-><init>()V

    sput-object v0, Lcom/google/android/shared/util/IdGenerator;->INSTANCE:Lcom/google/android/shared/util/IdGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/shared/util/IdGenerator;->mClientSequenceId:J

    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/shared/util/IdGenerator;->mRandom:Ljava/util/Random;

    .line 37
    return-void
.end method

.method public static generateAppInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "requestId"    # Ljava/lang/String;

    .prologue
    .line 61
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->fromByteArray([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2
    .param p0, "requestId"    # J

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/google/common/primitives/Longs;->toByteArray(J)[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNextVeSeqId()J
    .locals 4

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/android/shared/util/IdGenerator;->mClientSequenceId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/shared/util/IdGenerator;->mClientSequenceId:J

    .line 85
    :cond_0
    iget-wide v0, p0, Lcom/google/android/shared/util/IdGenerator;->mClientSequenceId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/shared/util/IdGenerator;->mClientSequenceId:J

    return-wide v0
.end method

.method public getRandomId()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/shared/util/IdGenerator;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method
