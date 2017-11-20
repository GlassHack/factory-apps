.class final Lcom/google/android/gms/fitness/sensors/local/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/data/o;

.field final synthetic b:Lcom/google/android/gms/fitness/data/DataPoint;

.field final synthetic c:Lcom/google/android/gms/fitness/sensors/local/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/local/i;Lcom/google/android/gms/fitness/data/o;Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/local/k;->c:Lcom/google/android/gms/fitness/sensors/local/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/local/k;->a:Lcom/google/android/gms/fitness/data/o;

    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/local/k;->b:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/k;->a:Lcom/google/android/gms/fitness/data/o;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/k;->b:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    const-string v0, "Couldn\'t send event to listener %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/local/k;->a:Lcom/google/android/gms/fitness/data/o;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
