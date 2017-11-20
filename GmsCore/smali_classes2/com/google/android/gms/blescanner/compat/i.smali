.class final Lcom/google/android/gms/blescanner/compat/i;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/blescanner/compat/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/blescanner/compat/k;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gms/blescanner/compat/i;->a:Lcom/google/android/gms/blescanner/compat/k;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatchScanResults(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    invoke-static {v0}, Lcom/google/android/gms/blescanner/compat/h;->a(Landroid/bluetooth/le/ScanResult;)Lcom/google/android/gms/blescanner/compat/ScanResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/i;->a:Lcom/google/android/gms/blescanner/compat/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/blescanner/compat/k;->a(Ljava/util/List;)V

    .line 121
    :cond_1
    return-void
.end method

.method public final onScanFailed(I)V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LBluetoothLeScannerCompat::onScanFailed("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/blescanner/b/c;->b(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/i;->a:Lcom/google/android/gms/blescanner/compat/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/blescanner/compat/k;->a(I)V

    .line 127
    return-void
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/i;->a:Lcom/google/android/gms/blescanner/compat/k;

    invoke-static {p2}, Lcom/google/android/gms/blescanner/compat/h;->a(Landroid/bluetooth/le/ScanResult;)Lcom/google/android/gms/blescanner/compat/ScanResult;

    .line 113
    return-void
.end method
