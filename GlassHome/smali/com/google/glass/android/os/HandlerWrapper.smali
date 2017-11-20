.class public Lcom/google/glass/android/os/HandlerWrapper;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# static fields
.field private static volatile handlerWrapperForTesting:Lcom/google/glass/android/os/HandlerWrapper;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/android/os/HandlerWrapper;-><init>(Landroid/os/Looper;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/android/os/HandlerWrapper;->handler:Landroid/os/Handler;

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/android/os/HandlerWrapper;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public static createHandlerWrapper()Lcom/google/glass/android/os/HandlerWrapper;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/glass/android/os/HandlerWrapper;->createHandlerWrapper(Landroid/os/Looper;)Lcom/google/glass/android/os/HandlerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static createHandlerWrapper(Landroid/os/Looper;)Lcom/google/glass/android/os/HandlerWrapper;
    .locals 1
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/android/os/HandlerWrapper;->handlerWrapperForTesting:Lcom/google/glass/android/os/HandlerWrapper;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/google/glass/android/os/HandlerWrapper;->handlerWrapperForTesting:Lcom/google/glass/android/os/HandlerWrapper;

    .line 36
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/android/os/HandlerWrapper;

    invoke-direct {v0, p0}, Lcom/google/glass/android/os/HandlerWrapper;-><init>(Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public static setHandlerWrapperForTest(Lcom/google/glass/android/os/HandlerWrapper;)V
    .locals 0
    .param p0, "wrapper"    # Lcom/google/glass/android/os/HandlerWrapper;

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 41
    sput-object p0, Lcom/google/glass/android/os/HandlerWrapper;->handlerWrapperForTesting:Lcom/google/glass/android/os/HandlerWrapper;

    .line 42
    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/android/os/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/android/os/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/android/os/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/android/os/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
