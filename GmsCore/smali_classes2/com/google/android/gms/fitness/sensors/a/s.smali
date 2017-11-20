.class final Lcom/google/android/gms/fitness/sensors/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/a/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/a/r;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/s;->a:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 38
    const-string v0, "BLE request timed out: holder=%s, timeoutSecs=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/s;->a:Lcom/google/android/gms/fitness/sensors/a/r;

    iget-object v3, v3, Lcom/google/android/gms/fitness/sensors/a/r;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/fitness/i/a;->V:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/s;->a:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 43
    return-void
.end method
