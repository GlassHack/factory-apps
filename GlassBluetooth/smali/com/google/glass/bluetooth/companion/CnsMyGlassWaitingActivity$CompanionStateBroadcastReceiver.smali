.class Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "CnsMyGlassWaitingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompanionStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;)V
    .locals 3

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    const-string v0, "com.google.glass.extra.STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->access$100(Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity$CompanionStateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CnsMyGlassWaitingActivity;->finish()V

    .line 74
    :cond_0
    return-void
.end method
