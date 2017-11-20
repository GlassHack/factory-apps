.class final Lcom/google/android/gms/auth/trustagent/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/ak;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/al;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/al;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-static {p2}, Lcom/google/android/gms/auth/trustagent/r;->a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/trustagent/q;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/auth/trustagent/ak;->f:Lcom/google/android/gms/auth/trustagent/q;

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/al;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/ak;->b()V

    .line 63
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/al;->a:Lcom/google/android/gms/auth/trustagent/ak;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/auth/trustagent/ak;->f:Lcom/google/android/gms/auth/trustagent/q;

    .line 67
    return-void
.end method
