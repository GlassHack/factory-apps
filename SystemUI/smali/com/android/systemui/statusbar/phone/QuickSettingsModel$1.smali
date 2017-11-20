.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onAlarmChanged(Landroid/content/Intent;)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onNextAlarmChanged()V

    .line 141
    :cond_0
    return-void
.end method
