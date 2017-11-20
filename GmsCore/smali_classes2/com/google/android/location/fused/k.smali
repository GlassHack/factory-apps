.class final Lcom/google/android/location/fused/k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/g;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/g;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/location/fused/k;->a:Lcom/google/android/location/fused/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 317
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/google/android/location/fused/k;->a:Lcom/google/android/location/fused/g;

    iget-object v0, v0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bc;->d()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/android/location/fused/k;->a:Lcom/google/android/location/fused/g;

    iget-object v0, v0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bc;->c()V

    goto :goto_0
.end method
