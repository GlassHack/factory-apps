.class final Lcom/google/android/location/fused/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/g;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/g;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/location/fused/j;->a:Lcom/google/android/location/fused/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/google/android/location/fused/j;->a:Lcom/google/android/location/fused/g;

    iget-object v0, v0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bc;->a()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/android/location/fused/j;->a:Lcom/google/android/location/fused/g;

    iget-object v0, v0, Lcom/google/android/location/fused/g;->a:Lcom/google/android/location/fused/bc;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bc;->b()V

    goto :goto_0
.end method
