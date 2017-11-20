.class Lcom/google/glass/settings/ui/SyncSettingsItemView$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SyncSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/SyncSettingsItemView;
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
    .line 119
    iput-object p1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$3;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$700(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    .line 123
    const/4 v0, 0x1

    return v0
.end method
