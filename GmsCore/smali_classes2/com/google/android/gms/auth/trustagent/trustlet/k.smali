.class final Lcom/google/android/gms/auth/trustagent/trustlet/k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/j;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/k;->a:Lcom/google/android/gms/auth/trustagent/trustlet/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/k;->a:Lcom/google/android/gms/auth/trustagent/trustlet/j;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/j;->a(Lcom/google/android/gms/auth/trustagent/trustlet/j;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/k;->a:Lcom/google/android/gms/auth/trustagent/trustlet/j;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/j;->b(Lcom/google/android/gms/auth/trustagent/trustlet/j;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/google/android/gms/auth/trustagent/trustlet/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/k;->a:Lcom/google/android/gms/auth/trustagent/trustlet/j;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/j;->c(Lcom/google/android/gms/auth/trustagent/trustlet/j;)V

    goto :goto_0
.end method
