.class public final Lcom/google/common/util/concurrent/n;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/m;


# instance fields
.field private final a:Lcom/google/common/util/concurrent/c;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 42
    new-instance v0, Lcom/google/common/util/concurrent/c;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/c;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/n;->a:Lcom/google/common/util/concurrent/c;

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 42
    new-instance v0, Lcom/google/common/util/concurrent/c;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/c;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/n;->a:Lcom/google/common/util/concurrent/c;

    .line 73
    return-void
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/n;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    new-instance v0, Lcom/google/common/util/concurrent/n;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/n;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/n;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/common/util/concurrent/n;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/n;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/common/util/concurrent/n;->a:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/c;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 81
    return-void
.end method

.method protected final done()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/common/util/concurrent/n;->a:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c;->a()V

    .line 90
    return-void
.end method
