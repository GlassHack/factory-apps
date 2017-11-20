.class Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "AndroidUpdateService.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/update/AndroidUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DonStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/update/AndroidUpdateService;


# direct methods
.method private constructor <init>(Lcom/google/glass/update/AndroidUpdateService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/update/AndroidUpdateService;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;->this$0:Lcom/google/glass/update/AndroidUpdateService;

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.glass.action.ON_HEAD_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/update/AndroidUpdateService;Lcom/google/glass/update/AndroidUpdateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/update/AndroidUpdateService;
    .param p2, "x1"    # Lcom/google/glass/update/AndroidUpdateService$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;-><init>(Lcom/google/glass/update/AndroidUpdateService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/google/glass/update/AndroidUpdateService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateService$DonStateReceiver;->this$0:Lcom/google/glass/update/AndroidUpdateService;

    invoke-virtual {v0}, Lcom/google/glass/update/AndroidUpdateService;->startUpdateActivityIfReady()V

    .line 137
    return-void
.end method
