.class final Lcom/google/android/gms/auth/trustagent/av;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/at;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/trustagent/at;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 389
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/av;->a:Lcom/google/android/gms/auth/trustagent/at;

    .line 390
    const v0, 0x1090003

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 391
    return-void
.end method


# virtual methods
.method public final isEnabled(I)Z
    .locals 2

    .prologue
    .line 395
    if-nez p1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
