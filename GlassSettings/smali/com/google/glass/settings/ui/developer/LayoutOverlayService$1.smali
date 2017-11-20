.class Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;
.super Landroid/os/AsyncTask;
.source "LayoutOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->queryAndShowOverlay()V
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
.field final synthetic this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-static {v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->access$000(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;)Lcom/google/glass/util/SettingsContract;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    const-string v3, "glass_developer_settings_layout_overlay"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/SettingsContract;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "value":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Found persistent layout setting \'%s\'."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
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
    .line 124
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "overlayName"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$1;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-static {v0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->access$200(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;Ljava/lang/String;)V

    .line 136
    return-void
.end method
