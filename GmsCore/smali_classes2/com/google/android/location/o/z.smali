.class final Lcom/google/android/location/o/z;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/o/y;


# direct methods
.method constructor <init>(Lcom/google/android/location/o/y;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/location/o/z;->a:Lcom/google/android/location/o/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/google/android/location/o/z;->a:Lcom/google/android/location/o/y;

    iget-object v1, p0, Lcom/google/android/location/o/z;->a:Lcom/google/android/location/o/y;

    invoke-virtual {v1}, Lcom/google/android/location/o/y;->d()Z

    move-result v1

    iget-boolean v2, v0, Lcom/google/android/location/o/y;->a:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, v0, Lcom/google/android/location/o/y;->a:Z

    iget-boolean v1, v0, Lcom/google/android/location/o/y;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/location/o/y;->c()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    iget-object v0, p0, Lcom/google/android/location/o/z;->a:Lcom/google/android/location/o/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/o/y;->a(Z)V

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/location/o/z;->a:Lcom/google/android/location/o/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/o/y;->a(Z)V

    goto :goto_0
.end method
