.class Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;
.super Landroid/os/AsyncTask;
.source "NowtownSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/NowtownSettingsItemView;->refreshSettingsUi()V
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
.field final synthetic this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "result":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    invoke-virtual {v2}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 70
    iget-object v2, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nowtown_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->access$002(Lcom/google/glass/settings/ui/NowtownSettingsItemView;Z)Z

    .line 72
    iget-object v2, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->access$000(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 74
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;->access$100(Lcom/google/glass/settings/ui/NowtownSettingsItemView;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/NowtownSettingsItemView$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
