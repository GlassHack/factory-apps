.class Lcom/google/glass/settings/ui/NudgeSettingsItemView$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "NudgeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/NudgeSettingsItemView;->showErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/NudgeSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/NudgeSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/NudgeSettingsItemView;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/glass/settings/ui/NudgeSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/NudgeSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method
