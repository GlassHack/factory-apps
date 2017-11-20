.class final Lcom/google/android/gms/auth/setup/d2d/ae;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/ac;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->a(Lcom/google/android/gms/auth/setup/d2d/ac;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/af;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/setup/d2d/af;-><init>(Lcom/google/android/gms/auth/setup/d2d/ae;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/ac;->a(Lcom/google/android/gms/auth/setup/d2d/ac;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/setup/d2d/ac;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v2}, Lcom/google/android/gms/auth/setup/d2d/ac;->c(Lcom/google/android/gms/auth/setup/d2d/ac;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->d(Lcom/google/android/gms/auth/setup/d2d/ac;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->d(Lcom/google/android/gms/auth/setup/d2d/ac;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "D2D.TargetResourcesFragment"

    const-string v1, "Enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->e(Lcom/google/android/gms/auth/setup/d2d/ac;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->g(Lcom/google/android/gms/auth/setup/d2d/ac;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->g(Lcom/google/android/gms/auth/setup/d2d/ac;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "D2D.TargetResourcesFragment"

    const-string v1, "Enabling NFC."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->h(Lcom/google/android/gms/auth/setup/d2d/ac;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const-string v0, "D2D.TargetResourcesFragment"

    const-string v1, "Could not enable Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->f(Lcom/google/android/gms/auth/setup/d2d/ac;)Lcom/google/android/gms/auth/setup/d2d/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/auth/setup/d2d/ai;->d()V

    goto :goto_0

    :cond_3
    const-string v0, "D2D.TargetResourcesFragment"

    const-string v1, "Could not enable NFC."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ae;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->f(Lcom/google/android/gms/auth/setup/d2d/ac;)Lcom/google/android/gms/auth/setup/d2d/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/auth/setup/d2d/ai;->d()V

    goto :goto_0
.end method
