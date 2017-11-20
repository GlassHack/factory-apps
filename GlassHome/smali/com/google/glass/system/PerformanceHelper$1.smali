.class final Lcom/google/glass/system/PerformanceHelper$1;
.super Ljava/lang/ThreadLocal;
.source "PerformanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/system/PerformanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/glass/system/PerformanceHelper$1;->initialValue()[B

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[B
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x400

    new-array v0, v0, [B

    return-object v0
.end method
