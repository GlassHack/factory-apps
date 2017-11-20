.class final Lcom/google/android/location/fused/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/a;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/a;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/location/fused/b;->a:Lcom/google/android/location/fused/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 91
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/google/android/location/fused/b;->a:Lcom/google/android/location/fused/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/location/fused/a;->a(Lcom/google/android/location/fused/a;Z)Z

    .line 93
    iget-object v0, p0, Lcom/google/android/location/fused/b;->a:Lcom/google/android/location/fused/a;

    invoke-static {v0}, Lcom/google/android/location/fused/a;->a(Lcom/google/android/location/fused/a;)D

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/location/fused/b;->a:Lcom/google/android/location/fused/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/location/fused/a;->a(Lcom/google/android/location/fused/a;Z)Z

    goto :goto_0
.end method
