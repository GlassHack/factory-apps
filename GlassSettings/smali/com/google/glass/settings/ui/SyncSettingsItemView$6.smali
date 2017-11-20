.class Lcom/google/glass/settings/ui/SyncSettingsItemView$6;
.super Ljava/lang/Object;
.source "SyncSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/SyncSettingsItemView;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$6;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 223
    iget-object v2, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$6;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$1000(Lcom/google/glass/settings/ui/SyncSettingsItemView;)I

    move-result v1

    .line 224
    .local v1, "totalUnsyncedCount":I
    new-instance v0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$6;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-direct {v0, v2, v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;-><init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;I)V

    .line 226
    .local v0, "helper":Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;
    if-nez v1, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->showAllSynced()V

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$6;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$200(Lcom/google/glass/settings/ui/SyncSettingsItemView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->showSyncActive()V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->showUnsyncedStatus()V

    goto :goto_0
.end method
