.class public final Lcom/google/c/j/a/ar;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Lcom/google/c/j/a/aq;


# instance fields
.field private final a:Lcom/google/c/j/a/aj;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/c/j/a/aj;

    invoke-direct {v0}, Lcom/google/c/j/a/aj;-><init>()V

    iput-object v0, p0, Lcom/google/c/j/a/ar;->a:Lcom/google/c/j/a/aj;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/google/c/j/a/aj;

    invoke-direct {v0}, Lcom/google/c/j/a/aj;-><init>()V

    iput-object v0, p0, Lcom/google/c/j/a/ar;->a:Lcom/google/c/j/a/aj;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/c/j/a/ar;
    .locals 1

    new-instance v0, Lcom/google/c/j/a/ar;

    invoke-direct {v0, p0, p1}, Lcom/google/c/j/a/ar;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lcom/google/c/j/a/ar;
    .locals 1

    new-instance v0, Lcom/google/c/j/a/ar;

    invoke-direct {v0, p0}, Lcom/google/c/j/a/ar;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/c/j/a/ar;->a:Lcom/google/c/j/a/aj;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/j/a/aj;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected final done()V
    .locals 1

    iget-object v0, p0, Lcom/google/c/j/a/ar;->a:Lcom/google/c/j/a/aj;

    invoke-virtual {v0}, Lcom/google/c/j/a/aj;->a()V

    return-void
.end method
