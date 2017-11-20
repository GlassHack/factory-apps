.class final Lcom/google/android/gms/auth/trustagent/trustlet/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$NfcUnlockHandler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/u;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/v;->a:Lcom/google/android/gms/auth/trustagent/trustlet/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUnlockAttempted(Landroid/nfc/Tag;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/v;->a:Lcom/google/android/gms/auth/trustagent/trustlet/u;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/trustagent/trustlet/af;->f:Z

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/v;->a:Lcom/google/android/gms/auth/trustagent/trustlet/u;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/u;->a(Lcom/google/android/gms/auth/trustagent/trustlet/u;)Lcom/google/android/gms/auth/trustagent/trustlet/x;

    move-result-object v1

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a(Landroid/nfc/Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/v;->a:Lcom/google/android/gms/auth/trustagent/trustlet/u;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/u;->a(Z)V

    .line 44
    :cond_1
    return v0
.end method
