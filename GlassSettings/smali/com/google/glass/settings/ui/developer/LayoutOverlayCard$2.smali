.class Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;
.super Landroid/os/AsyncTask;
.source "LayoutOverlayCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->queryCurrentLayoutOverlay()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    invoke-static {v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->access$000(Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;)Lcom/google/glass/util/SettingsContract;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    invoke-virtual {v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "glass_developer_settings_layout_overlay"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/SettingsContract;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "layoutOverlayName"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    invoke-static {v0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->access$102(Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCard;->refresh()V

    .line 201
    return-void
.end method
