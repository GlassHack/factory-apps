.class Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;
.super Landroid/os/AsyncTask;
.source "LayoutOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->updatePersistentLayoutOverlay(Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

.field final synthetic val$overlayName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    iput-object p2, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->val$overlayName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->val$overlayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->val$overlayName:Ljava/lang/String;

    .line 149
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Updating persistent layout settings to \'%s\'."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-static {v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->access$000(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;)Lcom/google/glass/util/SettingsContract;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    const-string v3, "glass_developer_settings_layout_overlay"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/glass/util/SettingsContract;->updateOrInsert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    const/4 v1, 0x0

    return-object v1

    .line 148
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->this$0:Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayService$2;->val$overlayName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;->access$200(Lcom/google/glass/settings/ui/developer/LayoutOverlayService;Ljava/lang/String;)V

    .line 158
    return-void
.end method
