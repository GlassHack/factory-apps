.class final Lcom/google/android/gms/auth/trustagent/trustlet/o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/m;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/m;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/o;->a:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/m;B)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/o;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/m;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "Coffee - LocationProviderTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receive location provider state changed action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/o;->a:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/m;->a()Z

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/o;->a:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/trustagent/trustlet/m;->e:Z

    if-eq v1, v0, :cond_0

    .line 80
    const-string v1, "Coffee - LocationProviderTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Provider Enable state changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/o;->a:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    iget-boolean v3, v3, Lcom/google/android/gms/auth/trustagent/trustlet/m;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/o;->a:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    iget-object v1, v1, Lcom/google/android/gms/auth/trustagent/trustlet/m;->b:Lcom/google/android/gms/auth/trustagent/trustlet/n;

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/n;->a(Z)V

    .line 83
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/o;->a:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    iput-boolean v0, v1, Lcom/google/android/gms/auth/trustagent/trustlet/m;->e:Z

    .line 85
    :cond_0
    return-void
.end method
