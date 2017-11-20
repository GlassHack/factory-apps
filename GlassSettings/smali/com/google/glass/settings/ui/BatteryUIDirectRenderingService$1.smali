.class Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BatteryUIDirectRenderingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;
    .param p2, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService$1;->this$0:Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService$1;->this$0:Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;

    invoke-static {v0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->access$000(Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;)V

    .line 49
    return-void
.end method
