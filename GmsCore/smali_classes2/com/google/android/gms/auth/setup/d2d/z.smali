.class public final Lcom/google/android/gms/auth/setup/d2d/z;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/auth/setup/d2d/ab;

.field private b:Landroid/nfc/NfcAdapter;

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private d:[B

.field private e:Lcom/google/android/gms/auth/setup/d2d/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/z;)Lcom/google/android/gms/auth/setup/d2d/ab;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->a:Lcom/google/android/gms/auth/setup/d2d/ab;

    return-object v0
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    check-cast p1, Lcom/google/android/gms/auth/setup/d2d/ab;

    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/z;->a:Lcom/google/android/gms/auth/setup/d2d/ab;

    .line 64
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/setup/d2d/z;->setRetainInstance(Z)V

    .line 70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->c:Landroid/bluetooth/BluetoothAdapter;

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/z;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->b:Landroid/nfc/NfcAdapter;

    .line 72
    new-instance v5, Lcom/google/m/b/a/d/h;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/m/b/a/d/h;-><init>(B)V

    iget-boolean v0, v5, Lcom/google/m/b/a/d/h;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PartialConnectionContext can only generate one InitiatorHello message. Create additional PartialConnectionContexts for new connections."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v1, v5, Lcom/google/m/b/a/d/h;->b:Z

    new-instance v0, Lcom/google/m/b/a/d/d;

    invoke-direct {v0}, Lcom/google/m/b/a/d/d;-><init>()V

    iget-object v1, v5, Lcom/google/m/b/a/d/h;->a:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/m/b/a/e/d;->a(Ljava/security/PublicKey;)Lcom/google/m/b/a/e/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/d/d;->a(Lcom/google/m/b/a/e/m;)Lcom/google/m/b/a/d/d;

    invoke-virtual {v0}, Lcom/google/m/b/a/d/d;->g()[B

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/aa;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/z;->c:Landroid/bluetooth/BluetoothAdapter;

    const-string v4, "D2D Account Setup"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/setup/d2d/aa;-><init>(Lcom/google/android/gms/auth/setup/d2d/z;Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;Ljava/lang/String;Lcom/google/m/b/a/d/h;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->e:Lcom/google/android/gms/auth/setup/d2d/a/e;

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->e:Lcom/google/android/gms/auth/setup/d2d/a/e;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/a/e;->start()V

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/d;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/z;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/d;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/d;->a:Ljava/lang/String;

    iput-object v6, v0, Lcom/google/android/gms/auth/setup/d2d/b/d;->c:[B

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->d:[B

    .line 73
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->e:Lcom/google/android/gms/auth/setup/d2d/a/e;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->e:Lcom/google/android/gms/auth/setup/d2d/a/e;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/a/e;->b()V

    .line 92
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 93
    return-void
.end method

.method public final onPause()V
    .locals 4

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->b:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/z;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 85
    return-void
.end method

.method public final onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 77
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 78
    const-string v0, "com.google.android.gms.auth.setup.d2d"

    const-string v1, "nfc2bt_bootstrap"

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/z;->d:[B

    invoke-static {v0, v1, v2}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v0

    new-instance v1, Landroid/nfc/NdefMessage;

    new-array v2, v4, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/z;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/z;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V

    .line 79
    return-void
.end method
