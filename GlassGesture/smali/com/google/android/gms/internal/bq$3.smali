.class Lcom/google/android/gms/internal/bq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bq;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BO:Lcom/google/android/gms/internal/bq;

.field final synthetic BP:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

.field final synthetic BS:Lcom/google/android/gms/internal/bp;

.field final synthetic BT:Ljava/lang/String;

.field final synthetic BU:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bp;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bq$3;->BO:Lcom/google/android/gms/internal/bq;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq$3;->BS:Lcom/google/android/gms/internal/bp;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq$3;->BT:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq$3;->BU:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq$3;->BP:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq$3;->BO:Lcom/google/android/gms/internal/bq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bq;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bv;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq$3;->BS:Lcom/google/android/gms/internal/bp;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq$3;->BT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/bq$3;->BU:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/internal/bt;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bq$3;->BP:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;->onDroidGuardResults(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bq$3;->BP:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

    const-string v1, "Disconnected."

    invoke-static {v1}, Lcom/google/android/gms/internal/bq;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;->onDroidGuardResults(Ljava/lang/String;)V

    return-void
.end method
