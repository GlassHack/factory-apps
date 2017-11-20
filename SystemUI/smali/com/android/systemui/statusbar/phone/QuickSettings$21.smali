.class Lcom/android/systemui/statusbar/phone/QuickSettings$21;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$21;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 625
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$21;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 626
    .local v1, "newLocationEnabledState":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$21;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, "closeDialog":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$21;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 633
    .end local v0    # "closeDialog":Landroid/content/Intent;
    :cond_0
    return v2

    .line 625
    .end local v1    # "newLocationEnabledState":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
