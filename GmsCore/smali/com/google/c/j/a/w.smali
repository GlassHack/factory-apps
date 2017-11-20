.class public final Lcom/google/c/j/a/w;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/j/a/v;


# instance fields
.field private final a:Lcom/google/c/j/a/h;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 38
    new-instance v0, Lcom/google/c/j/a/h;

    invoke-direct {v0}, Lcom/google/c/j/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/c/j/a/w;->a:Lcom/google/c/j/a/h;

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 38
    new-instance v0, Lcom/google/c/j/a/h;

    invoke-direct {v0}, Lcom/google/c/j/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/c/j/a/w;->a:Lcom/google/c/j/a/h;

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/c/j/a/w;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/google/c/j/a/w;

    invoke-direct {v0, p0, p1}, Lcom/google/c/j/a/w;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lcom/google/c/j/a/w;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/c/j/a/w;

    invoke-direct {v0, p0}, Lcom/google/c/j/a/w;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/c/j/a/w;->a:Lcom/google/c/j/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/j/a/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 79
    return-void
.end method

.method protected final done()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/c/j/a/w;->a:Lcom/google/c/j/a/h;

    invoke-virtual {v0}, Lcom/google/c/j/a/h;->a()V

    .line 87
    return-void
.end method
