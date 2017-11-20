.class final Lcom/google/android/gms/fitness/sensors/a/u;
.super Lcom/google/android/gms/fitness/sensors/a/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/c/j/a/ad;

.field final synthetic c:Lcom/google/android/gms/fitness/sensors/a/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/a/t;Ljava/lang/String;Lcom/google/c/j/a/ad;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/u;->c:Lcom/google/android/gms/fitness/sensors/a/t;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/u;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/a/u;->b:Lcom/google/c/j/a/ad;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/a/x;-><init>(Lcom/google/android/gms/fitness/sensors/a/t;B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/u;->b:Lcom/google/c/j/a/ad;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Scan stopped before device found"

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Throwable;)Z

    .line 68
    return-void
.end method

.method protected final a(Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/u;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/sensors/a/u;->b()Z

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/u;->b:Lcom/google/c/j/a/ad;

    invoke-virtual {v0, p1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    return-void
.end method
