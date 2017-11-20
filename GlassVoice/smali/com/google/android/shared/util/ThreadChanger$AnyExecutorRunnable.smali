.class final Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;
.super Ljava/lang/Object;
.source "ThreadChanger.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/shared/util/TaggedTask;
.implements Lcom/google/android/shared/util/UiTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/util/ThreadChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnyExecutorRunnable"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/Object;

.field private final mCallerThrowable:Ljava/lang/Throwable;

.field private final mDelegate:Ljava/lang/Object;

.field private final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "callerThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mDelegate:Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mMethod:Ljava/lang/reflect/Method;

    .line 95
    iput-object p3, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mArgs:[Ljava/lang/Object;

    .line 96
    iput-object p4, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mCallerThrowable:Ljava/lang/Throwable;

    .line 97
    return-void
.end method


# virtual methods
.method public getPermissions()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mDelegate:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 107
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mCallerThrowable:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lcom/google/android/shared/util/ThreadChanger;->addCallerStackTrace(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 111
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 112
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 114
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_1

    .line 115
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 122
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ThreadChanger: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .local v5, "s":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mDelegate:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v6, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/4 v2, 0x1

    .line 138
    .local v2, "first":Z
    iget-object v6, p0, Lcom/google/android/shared/util/ThreadChanger$AnyExecutorRunnable;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 139
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 140
    const/4 v2, 0x0

    .line 144
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_0
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 146
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
