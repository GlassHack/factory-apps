.class public Lcom/google/android/gms/auth/trustagent/trustlet/u;
.super Lcom/google/android/gms/auth/trustagent/trustlet/z;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field protected final a:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

.field private g:Landroid/nfc/NfcAdapter;

.field private h:Lcom/google/android/gms/auth/trustagent/trustlet/x;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;-><init>()V

    .line 35
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/v;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/v;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/u;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->a:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/u;)Lcom/google/android/gms/auth/trustagent/trustlet/x;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->h:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/trustlet/u;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/u;->i()V

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->f:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->h:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->g:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->a:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->h:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/u;->i()V

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->b()V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->g:Landroid/nfc/NfcAdapter;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->g:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/u;->c(Z)V

    .line 78
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/x;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->h:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    .line 57
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/w;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/u;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->i:Landroid/content/BroadcastReceiver;

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->i:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/u;->i()V

    .line 76
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/u;->c(Z)V

    goto :goto_1
.end method

.method protected final b(Z)V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->b(Z)V

    .line 103
    monitor-enter p0

    .line 104
    if-eqz p1, :cond_1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->h:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->g:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->a:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->h:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->g:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->a:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->c()V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method

.method protected final d()Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/google/android/gms/auth/b/a;->M:Lcom/google/android/gms/common/a/b;

    return-object v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x4

    return v0
.end method

.method protected final f()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 132
    const-string v0, "nfc_trustlet_tech_codes"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->g:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->a:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/nfc/NfcAdapter;->addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->g:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/u;->a:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Z

    goto :goto_0
.end method
