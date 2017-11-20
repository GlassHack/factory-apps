.class final Lcom/google/android/gms/auth/trustagent/trustlet/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/p;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/r;->a:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 3

    .prologue
    .line 150
    const-string v0, "Coffee - NearbyAlertTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleApiClient connection failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method
