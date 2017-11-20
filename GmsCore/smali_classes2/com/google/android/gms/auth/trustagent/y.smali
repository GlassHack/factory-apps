.class final Lcom/google/android/gms/auth/trustagent/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/x;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/y;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/y;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/x;->a(Lcom/google/android/gms/auth/trustagent/x;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/y;->a:Lcom/google/android/gms/auth/trustagent/x;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/trustagent/x;->a(Lcom/google/android/gms/auth/trustagent/x;Landroid/nfc/Tag;)V

    .line 78
    :cond_0
    return-void
.end method
