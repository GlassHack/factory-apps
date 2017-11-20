.class Lcom/google/glass/settings/ui/WifiSettingsItemView$5;
.super Ljava/lang/Object;
.source "WifiSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/WifiSettingsItemView;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$5;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$5;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$800(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$5;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/WifiSettingsItemView$WifiStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 393
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$5;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$700(Lcom/google/glass/settings/ui/WifiSettingsItemView;)Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$5;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 394
    return-void
.end method
