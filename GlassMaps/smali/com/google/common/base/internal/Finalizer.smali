.class public Lcom/google/common/base/internal/Finalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final e:Ljava/lang/reflect/Field;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/lang/ref/PhantomReference;

.field private final d:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/common/base/internal/Finalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/internal/Finalizer;->a:Ljava/util/logging/Logger;

    .line 101
    invoke-static {}, Lcom/google/common/base/internal/Finalizer;->b()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/internal/Finalizer;->e:Ljava/lang/reflect/Field;

    return-void
.end method

.method private a()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 166
    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/google/common/base/internal/Finalizer$ShutDown;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/internal/Finalizer$ShutDown;-><init>(Lcom/google/common/base/internal/a;)V

    throw v0

    .line 178
    :cond_0
    :try_start_0
    const-string v1, "finalizeReferent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private a(Ljava/lang/ref/Reference;)V
    .locals 5

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/common/base/internal/Finalizer;->a()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 140
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->c:Ljava/lang/ref/PhantomReference;

    if-ne p1, v0, :cond_1

    .line 145
    new-instance v0, Lcom/google/common/base/internal/Finalizer$ShutDown;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/internal/Finalizer$ShutDown;-><init>(Lcom/google/common/base/internal/a;)V

    throw v0

    .line 149
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    if-nez p1, :cond_0

    .line 159
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    sget-object v2, Lcom/google/common/base/internal/Finalizer;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Error cleaning up after reference."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b()Ljava/lang/reflect/Field;
    .locals 3

    .prologue
    .line 186
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const-string v1, "inheritableThreadLocals"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/common/base/internal/Finalizer;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/internal/Finalizer;->a(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/common/base/internal/Finalizer$ShutDown; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    return-void
.end method
