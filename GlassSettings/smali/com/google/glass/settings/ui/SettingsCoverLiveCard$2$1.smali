.class Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$1;
.super Ljava/lang/Object;
.source "SettingsCoverLiveCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2$1;->this$1:Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;->access$000(Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;)V

    .line 58
    return-void
.end method
