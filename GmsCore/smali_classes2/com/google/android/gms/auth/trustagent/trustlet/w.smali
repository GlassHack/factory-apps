.class final Lcom/google/android/gms/auth/trustagent/trustlet/w;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/u;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/w;->a:Lcom/google/android/gms/auth/trustagent/trustlet/u;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 60
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/w;->a:Lcom/google/android/gms/auth/trustagent/trustlet/u;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/u;->b(Lcom/google/android/gms/auth/trustagent/trustlet/u;)V

    .line 66
    :cond_0
    return-void
.end method
