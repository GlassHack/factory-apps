.class Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView$1;
.super Lcom/google/glass/settings/ui/CheckinReceiver;
.source "DeviceInfoSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/settings/ui/CheckinReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCheckin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->access$000(Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;)V

    .line 58
    return-void
.end method
