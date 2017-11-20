.class public Lcom/google/android/gsf/usagestats/StatsUploadService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "StatsUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/StatsUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    invoke-static {p1}, Lcom/google/android/gsf/usagestats/StatsUploadService;->access$000(Landroid/content/Context;)V

    .line 278
    return-void
.end method
