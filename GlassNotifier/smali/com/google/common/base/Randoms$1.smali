.class final Lcom/google/common/base/Randoms$1;
.super Ljava/lang/ThreadLocal;
.source "Randoms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Randoms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/security/SecureRandom;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/common/base/Randoms$1;->initialValue()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/google/common/base/Randoms;->access$200()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
