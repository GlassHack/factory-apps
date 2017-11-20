.class public Lcom/google/glass/async/MainThreadExecutorManager;
.super Ljava/lang/Object;
.source "MainThreadExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/async/MainThreadExecutorManager$MainThreadExecutorHolder;,
        Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static getMainThreadExecutor()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager$MainThreadExecutorHolder;->access$100()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    move-result-object v0

    return-object v0
.end method
