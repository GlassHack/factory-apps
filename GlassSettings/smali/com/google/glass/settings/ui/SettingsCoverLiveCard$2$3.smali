.class Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$3;
.super Ljava/lang/Object;
.source "SettingsCoverLiveCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->renderingPaused(Landroid/view/SurfaceHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

.field final synthetic val$pause:Z


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$3;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    iput-boolean p2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$3;->val$pause:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$3;->val$pause:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$3;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->access$000(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$3;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->access$100(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;)V

    goto :goto_0
.end method
