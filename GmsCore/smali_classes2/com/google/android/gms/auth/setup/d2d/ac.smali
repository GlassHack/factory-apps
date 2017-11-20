.class public final Lcom/google/android/gms/auth/setup/d2d/ac;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/auth/setup/d2d/ai;

.field private c:Landroid/nfc/NfcAdapter;

.field private d:Landroid/bluetooth/BluetoothAdapter;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Lcom/google/c/j/a/w;

.field private i:Landroid/os/AsyncTask;

.field private j:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->a:Ljava/lang/Object;

    .line 61
    iput-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->e:Z

    .line 62
    iput-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->f:Z

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/ac;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->g:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/ac;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/ac;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/setup/d2d/ac;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/ac;->c()V

    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->c:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->b:Lcom/google/android/gms/auth/setup/d2d/ai;

    invoke-interface {v0}, Lcom/google/android/gms/auth/setup/d2d/ai;->c()V

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/setup/d2d/ac;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->g:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/ac;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->g:Landroid/content/BroadcastReceiver;

    .line 213
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/google/android/gms/auth/setup/d2d/ac;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->d:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/auth/setup/d2d/ac;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/auth/setup/d2d/ac;)Lcom/google/android/gms/auth/setup/d2d/ai;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->b:Lcom/google/android/gms/auth/setup/d2d/ai;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/auth/setup/d2d/ac;)Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->c:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/auth/setup/d2d/ac;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->e:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/auth/setup/d2d/ac;)Lcom/google/c/j/a/w;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->h:Lcom/google/c/j/a/w;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/d/b;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->h:Lcom/google/c/j/a/w;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->h:Lcom/google/c/j/a/w;

    invoke-virtual {v0}, Lcom/google/c/j/a/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/b;

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TargetResourcesFragment has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 74
    check-cast p1, Lcom/google/android/gms/auth/setup/d2d/ai;

    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->b:Lcom/google/android/gms/auth/setup/d2d/ai;

    .line 75
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->setRetainInstance(Z)V

    .line 82
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/ac;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->c:Landroid/nfc/NfcAdapter;

    .line 84
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/ad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/setup/d2d/ad;-><init>(Lcom/google/android/gms/auth/setup/d2d/ac;)V

    invoke-static {v0}, Lcom/google/c/j/a/w;->a(Ljava/util/concurrent/Callable;)Lcom/google/c/j/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->h:Lcom/google/c/j/a/w;

    .line 92
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/ae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/setup/d2d/ae;-><init>(Lcom/google/android/gms/auth/setup/d2d/ac;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/ae;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->i:Landroid/os/AsyncTask;

    .line 135
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/ag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/setup/d2d/ag;-><init>(Lcom/google/android/gms/auth/setup/d2d/ac;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->j:Landroid/os/AsyncTask;

    .line 142
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->i:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->i:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 156
    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->i:Landroid/os/AsyncTask;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->j:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->j:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 161
    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->j:Landroid/os/AsyncTask;

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/ac;->c()V

    .line 166
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->f:Z

    if-eqz v0, :cond_2

    .line 167
    const-string v0, "D2D.TargetResourcesFragment"

    const-string v1, "Disabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 171
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->e:Z

    if-eqz v0, :cond_3

    .line 172
    const-string v0, "D2D.TargetResourcesFragment"

    const-string v1, "Disabling NFC."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->c:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->h:Lcom/google/c/j/a/w;

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->h:Lcom/google/c/j/a/w;

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/ah;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/setup/d2d/ah;-><init>(Lcom/google/android/gms/auth/setup/d2d/ac;)V

    invoke-static {v0, v1}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    .line 187
    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/ac;->h:Lcom/google/c/j/a/w;

    .line 189
    :cond_4
    return-void
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/ac;->b()Z

    .line 148
    return-void
.end method
