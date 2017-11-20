.class final Lcom/google/android/location/reporting/ble/c;
.super Lcom/google/android/gms/blescanner/compat/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/reporting/ble/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/reporting/ble/b;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/location/reporting/ble/c;->a:Lcom/google/android/location/reporting/ble/b;

    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 196
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to scan for BLE beacons - errorCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/location/reporting/ble/c;->a:Lcom/google/android/location/reporting/ble/b;

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/ble/b;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/google/android/location/reporting/ble/c;->a:Lcom/google/android/location/reporting/ble/b;

    iget-object v1, v1, Lcom/google/android/location/reporting/ble/b;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 191
    :cond_0
    return-void
.end method
