.class final Lcom/google/android/gms/gcm/u;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/16 v1, 0x64

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 69
    sget-object v0, Lcom/google/android/gms/gcm/GcmDiagnostics;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a()V

    .line 70
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 71
    iput v1, v0, Landroid/os/Message;->what:I

    .line 72
    invoke-static {}, Lcom/google/android/gms/gcm/GcmDiagnostics;->c()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 75
    sget-object v0, Lcom/google/android/gms/gcm/GcmDiagnostics;->a:Lcom/google/android/gms/gcm/GcmDiagnostics;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GcmDiagnostics;->a()V

    goto :goto_0
.end method
