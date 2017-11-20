.class Lcom/google/glass/settings/ui/WinkSettingsItemView$2;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WinkSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/WinkSettingsItemView;->showErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/WinkSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/WinkSettingsItemView;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method
