.class Lcom/google/glass/settings/ui/WinkSettingsItemView$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WinkSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/WinkSettingsItemView;->onTurnOffWinkDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/WinkSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/WinkSettingsItemView;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 238
    invoke-static {}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Turn off wink detection cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public onDone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-static {}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Turn off wink detection confirmed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;

    invoke-static {v0, v3}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->access$300(Lcom/google/glass/settings/ui/WinkSettingsItemView;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to turn off wink detection."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;

    sget v1, Lcom/google/glass/settings/ui/R$string;->wink_toggle_failure:I

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->access$400(Lcom/google/glass/settings/ui/WinkSettingsItemView;I)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;

    invoke-static {v0, v3}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->access$500(Lcom/google/glass/settings/ui/WinkSettingsItemView;Z)V

    .line 249
    return-void
.end method
