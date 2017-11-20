.class public Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;
.super Landroid/content/BroadcastReceiver;
.source "StitchingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/StitchingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.lightcycle.panorama.PAUSE"

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->pause()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.lightcycle.panorama.RESUME"

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->resume()V

    goto :goto_0
.end method
