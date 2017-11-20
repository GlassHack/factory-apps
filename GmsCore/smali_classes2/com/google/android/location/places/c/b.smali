.class public final Lcom/google/android/location/places/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/location/places/c/b;->a:Ljava/util/concurrent/Executor;

    .line 16
    iput-object p2, p0, Lcom/google/android/location/places/c/b;->b:Ljava/util/concurrent/Executor;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;Lcom/google/android/location/places/c/k;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/location/places/c/b;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/location/places/c/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/location/places/c/c;-><init>(Lcom/google/android/location/places/c/b;Ljava/util/concurrent/Callable;Lcom/google/android/location/places/c/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method
