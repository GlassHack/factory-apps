.class Lcom/google/glass/settings/ui/DonDoffSettingsItemView$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "DonDoffSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->showErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/DonDoffSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/DonDoffSettingsItemView;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/DonDoffSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method
