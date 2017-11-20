.class Lcom/google/glass/settings/ui/WifiSettingsItemView$6;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WifiSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/WifiSettingsItemView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 449
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$6;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "forget canceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    return-void
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 457
    invoke-static {}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "forget confirmed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$6;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$1000(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    .line 459
    return-void
.end method
