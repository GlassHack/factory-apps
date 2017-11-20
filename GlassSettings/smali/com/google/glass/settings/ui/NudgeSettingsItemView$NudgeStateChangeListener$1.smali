.class Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;
.super Landroid/os/AsyncTask;
.source "NudgeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "result":Ljava/lang/Boolean;
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    iget-object v1, v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/NudgeSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    iget-boolean v2, v2, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->enableState:Z

    invoke-static {v1, v2}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->access$300(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 276
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 281
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 283
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Turn %s nudge-screen-off confirmed"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    invoke-static {v4}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->access$400(Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    iget-object v1, v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/NudgeSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    iget-boolean v2, v2, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->enableState:Z

    invoke-static {v1, v2}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->access$500(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)V

    .line 286
    iget-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    iget-object v1, v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/NudgeSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    iget-boolean v2, v2, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->enableState:Z

    invoke-static {v1, v2}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->access$600(Lcom/google/glass/settings/ui/NudgeSettingsItemView;Z)V

    .line 292
    .end local v0    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 288
    .restart local v0    # "success":Z
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    iget-object v1, v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->this$0:Lcom/google/glass/settings/ui/NudgeSettingsItemView;

    sget v2, Lcom/google/glass/settings/ui/R$string;->nudge_toggle_failure:I

    invoke-static {v1, v2}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->access$700(Lcom/google/glass/settings/ui/NudgeSettingsItemView;I)V

    .line 289
    invoke-static {}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Fail to set the status of nudge-screen-off to %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->this$1:Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;

    iget-boolean v4, v4, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener;->enableState:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 269
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/NudgeSettingsItemView$NudgeStateChangeListener$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
