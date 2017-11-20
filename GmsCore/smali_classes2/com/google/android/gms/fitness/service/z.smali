.class final Lcom/google/android/gms/fitness/service/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;

.field final synthetic b:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic c:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/z;->c:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/z;->a:Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/z;->b:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/z;->a:Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->a()Ljava/lang/String;

    move-result-object v0

    .line 1851
    const-string v1, "Claiming device with address %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1852
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/z;->c:Lcom/google/android/gms/fitness/service/i;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/z;->a:Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;)Lcom/google/c/j/a/v;

    move-result-object v1

    .line 1853
    new-instance v2, Lcom/google/android/gms/fitness/service/aa;

    invoke-direct {v2, p0}, Lcom/google/android/gms/fitness/service/aa;-><init>(Lcom/google/android/gms/fitness/service/z;)V

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/z;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v3}, Lcom/google/android/gms/fitness/service/i;->l(Lcom/google/android/gms/fitness/service/i;)Lcom/google/c/j/a/x;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/e;Ljava/util/concurrent/Executor;)Lcom/google/c/j/a/v;

    move-result-object v1

    .line 1869
    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/c/a/aa;

    invoke-direct {v3, v2}, Lcom/google/c/a/aa;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/google/c/j/a/n;->b(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)Lcom/google/c/j/a/v;

    move-result-object v1

    .line 1872
    new-instance v2, Lcom/google/android/gms/fitness/service/ab;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/fitness/service/ab;-><init>(Lcom/google/android/gms/fitness/service/z;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    .line 1899
    return-void
.end method
