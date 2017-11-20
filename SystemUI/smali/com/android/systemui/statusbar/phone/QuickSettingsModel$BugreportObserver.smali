.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BugreportObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 165
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBugreportChanged()V

    .line 170
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "bugreport_in_power_menu"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    return-void
.end method
