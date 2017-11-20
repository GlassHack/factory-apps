.class public final Lcom/google/common/base/Randoms;
.super Ljava/lang/Object;
.source "Randoms.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;,
        Lcom/google/common/base/Randoms$ReadOnlyRandom;
    }
.end annotation


# static fields
.field private static final RANDOM:Ljava/util/Random;

.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;

.field private static final THREAD_LOCAL_SECURE_RANDOM:Ljava/util/Random;

.field private static final localRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v0, Lcom/google/common/base/Randoms$ReadOnlyRandom;

    invoke-direct {v0, v1}, Lcom/google/common/base/Randoms$ReadOnlyRandom;-><init>(Lcom/google/common/base/Randoms$1;)V

    sput-object v0, Lcom/google/common/base/Randoms;->RANDOM:Ljava/util/Random;

    .line 39
    invoke-static {}, Lcom/google/common/base/Randoms;->newDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Randoms;->SECURE_RANDOM:Ljava/security/SecureRandom;

    .line 40
    new-instance v0, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;

    invoke-direct {v0, v1}, Lcom/google/common/base/Randoms$ThreadLocalSecureRandom;-><init>(Lcom/google/common/base/Randoms$1;)V

    sput-object v0, Lcom/google/common/base/Randoms;->THREAD_LOCAL_SECURE_RANDOM:Ljava/util/Random;

    .line 152
    new-instance v0, Lcom/google/common/base/Randoms$1;

    invoke-direct {v0}, Lcom/google/common/base/Randoms$1;-><init>()V

    sput-object v0, Lcom/google/common/base/Randoms;->localRandom:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/common/base/Randoms;->newDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/common/base/Randoms;->localRandom:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static insecureRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/common/base/Randoms;->RANDOM:Ljava/util/Random;

    return-object v0
.end method

.method public static insecureRandom(J)Ljava/util/Random;
    .locals 2
    .param p0, "seed"    # J

    .prologue
    .line 120
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p0, p1}, Ljava/util/Random;-><init>(J)V

    return-object v0
.end method

.method private static newDefaultSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 148
    .local v0, "retval":Ljava/security/SecureRandom;
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    .line 149
    return-object v0
.end method

.method public static secureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/common/base/Randoms;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static secureRandom([B)Ljava/security/SecureRandom;
    .locals 1
    .param p0, "seed"    # [B

    .prologue
    .line 84
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0, p0}, Ljava/security/SecureRandom;-><init>([B)V

    .line 85
    .local v0, "retval":Ljava/security/SecureRandom;
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    .line 86
    return-object v0
.end method

.method public static threadLocalSecureRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/common/base/Randoms;->THREAD_LOCAL_SECURE_RANDOM:Ljava/util/Random;

    return-object v0
.end method
