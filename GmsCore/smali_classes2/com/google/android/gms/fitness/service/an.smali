.class final Lcom/google/android/gms/fitness/service/an;
.super Landroid/os/RemoteCallbackList;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/service/i;)V
    .locals 0

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/an;->a:Lcom/google/android/gms/fitness/service/i;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/service/i;B)V
    .locals 0

    .prologue
    .line 2048
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/service/an;-><init>(Lcom/google/android/gms/fitness/service/i;)V

    return-void
.end method


# virtual methods
.method public final synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 2

    .prologue
    .line 2048
    check-cast p1, Lcom/google/android/gms/fitness/data/o;

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/an;->a:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->b(Lcom/google/android/gms/fitness/service/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/fitness/service/ao;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/fitness/service/ao;-><init>(Lcom/google/android/gms/fitness/service/an;Lcom/google/android/gms/fitness/data/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
