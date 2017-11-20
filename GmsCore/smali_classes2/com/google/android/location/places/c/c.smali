.class final Lcom/google/android/location/places/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/google/android/location/places/c/k;

.field final synthetic b:Lcom/google/android/location/places/c/b;

.field private final c:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/c/b;Ljava/util/concurrent/Callable;Lcom/google/android/location/places/c/k;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/location/places/c/c;->b:Lcom/google/android/location/places/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p3, p0, Lcom/google/android/location/places/c/c;->a:Lcom/google/android/location/places/c/k;

    .line 29
    iput-object p2, p0, Lcom/google/android/location/places/c/c;->c:Ljava/util/concurrent/Callable;

    .line 30
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/places/c/c;->b:Lcom/google/android/location/places/c/b;

    iget-object v0, v0, Lcom/google/android/location/places/c/b;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/location/places/c/d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/places/c/d;-><init>(Lcom/google/android/location/places/c/c;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/c/c;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/google/android/location/places/c/c;->b:Lcom/google/android/location/places/c/b;

    iget-object v1, v1, Lcom/google/android/location/places/c/b;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/location/places/c/e;

    invoke-direct {v2, p0, v0}, Lcom/google/android/location/places/c/e;-><init>(Lcom/google/android/location/places/c/c;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/location/places/c/c;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-direct {p0, v0}, Lcom/google/android/location/places/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
