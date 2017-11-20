.class final Lcom/google/android/gms/fitness/n/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/y;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/n/az;)V
    .locals 0

    .prologue
    .line 2608
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/bb;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2608
    check-cast p1, Ljava/lang/Exception;

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/fitness/n/aw;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/aw;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/n/aw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/fitness/n/aw;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
