.class final Lcom/google/android/shared/util/ThreadChanger$1;
.super Ljava/lang/Object;
.source "ThreadChanger.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/shared/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:Ljava/lang/Object;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/shared/util/ThreadChanger$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/shared/util/ThreadChanger$1;->val$delegate:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 72
    invoke-static {}, Lcom/google/android/shared/util/ThreadChanger;->getCallerThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 73
    .local v0, "callerThrowable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/android/shared/util/ThreadChanger$1;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;

    iget-object v3, p0, Lcom/google/android/shared/util/ThreadChanger$1;->val$delegate:Ljava/lang/Object;

    invoke-direct {v2, v3, p2, p3, v0}, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    const/4 v1, 0x0

    return-object v1
.end method
