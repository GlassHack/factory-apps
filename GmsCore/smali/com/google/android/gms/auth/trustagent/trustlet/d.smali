.class public Lcom/google/android/gms/auth/trustagent/trustlet/d;
.super Lcom/google/android/gms/auth/trustagent/trustlet/af;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/trustagent/trustlet/c;


# instance fields
.field private a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

.field private final b:Ljava/util/Set;

.field private c:Landroid/content/SharedPreferences;

.field private g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/d;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "auth_trust_agent_pref_trusted_bluetooth_address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/trustlet/d;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->e(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->f()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    invoke-static {p1}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->e(Z)V

    .line 138
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->f()V

    .line 140
    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 154
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 160
    const-string v1, "Coffee - BluetoothTrustlet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Non bonded Bluetooth device in preferences: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v1

    const-string v1, "Coffee - BluetoothTrustlet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal Bluetooth address in preferences: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 163
    goto :goto_0
.end method

.method private e(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 179
    new-instance v0, Lcom/google/android/gms/auth/d/f;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/d/f;-><init>(Landroid/content/Context;)V

    .line 180
    iput v2, v0, Lcom/google/android/gms/auth/d/f;->d:I

    .line 181
    if-eqz p1, :cond_0

    .line 182
    iput v2, v0, Lcom/google/android/gms/auth/d/f;->f:I

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/auth/d/f;->g:I

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/f;->a()V

    .line 188
    return-void

    .line 184
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/auth/d/f;->f:I

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 88
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->f:Z

    if-nez v0, :cond_1

    .line 89
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->h:Z

    if-eqz v0, :cond_0

    .line 90
    iput-boolean v5, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->h:Z

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->e(Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 99
    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/a;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->h:Z

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 106
    iput-boolean v5, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->h:Z

    .line 107
    const-string v0, "Coffee - BluetoothTrustlet"

    const-string v2, "No trusted connected device, revoking trust."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->h:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 112
    iput-boolean v4, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->h:Z

    .line 113
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    const v2, 0x7f10018f

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v2, "Coffee - BluetoothTrustlet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Enabling trust, connected to trusted device: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private g()V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->f()V

    .line 219
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 207
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->g()V

    .line 212
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->f()V

    .line 214
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 47
    const-string v0, "Coffee - BluetoothTrustlet"

    const-string v1, "Bluetooth not available, Bluetooth trustlet not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c(Z)V

    .line 78
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c:Landroid/content/SharedPreferences;

    .line 53
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/e;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/d;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 72
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/a;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/c;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c(Z)V

    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->g()V

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->f()V

    goto :goto_1
.end method

.method protected final b(Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->f()V

    .line 42
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->c()V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a:Lcom/google/android/gms/auth/trustagent/trustlet/a;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    return-void
.end method

.method protected final d()Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    return-object v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method
