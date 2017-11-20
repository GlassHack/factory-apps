.class final Lcom/google/android/gms/auth/trustagent/trustlet/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/p;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/q;->a:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 136
    const-string v0, "Coffee - NearbyAlertTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleApiClient connection suspended - cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/q;->a:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->b:Lcom/google/android/gms/auth/trustagent/trustlet/s;

    invoke-interface {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/s;->a()V

    .line 142
    const-string v0, "Coffee - NearbyAlertTracker"

    const-string v1, "GoogleApiClient connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
