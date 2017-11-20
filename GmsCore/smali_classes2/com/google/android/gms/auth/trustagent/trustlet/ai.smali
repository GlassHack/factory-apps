.class final Lcom/google/android/gms/auth/trustagent/trustlet/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/trustagent/trustlet/l;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ai;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ai;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ai;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/ah;Z)Z

    .line 96
    const-string v0, "Coffee - TrustletManager"

    const-string v1, "Device active, revalidating trust."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ai;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->b(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "Coffee - TrustletManager"

    const-string v1, "Device became inactive, revoking trust."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ai;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/ah;Z)Z

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ai;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->b(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)V

    .line 106
    return-void
.end method
