.class final Lcom/google/android/gms/auth/trustagent/trustlet/aa;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/z;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a(I)V

    .line 168
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->c:Z

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    iput-boolean v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->c:Z

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    const-string v1, "User present. Revoking one time auth."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->e(Ljava/lang/String;)V

    .line 188
    :cond_2
    :goto_0
    return-void

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->b:Z

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->f()V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    iput-boolean v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->b:Z

    goto :goto_0

    .line 184
    :cond_4
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->e:Lcom/google/android/gms/auth/trustagent/trustlet/ag;

    invoke-interface {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ag;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/aa;->a:Lcom/google/android/gms/auth/trustagent/trustlet/z;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->b:Z

    goto :goto_0
.end method
