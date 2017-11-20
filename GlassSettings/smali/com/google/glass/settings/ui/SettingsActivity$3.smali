.class Lcom/google/glass/settings/ui/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/SettingsActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SettingsActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsActivity$3;->this$0:Lcom/google/glass/settings/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invalidateVoiceMenu()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity$3;->this$0:Lcom/google/glass/settings/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsActivity$3;->invalidateVoiceMenu()V

    .line 95
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsActivity$3;->invalidateVoiceMenu()V

    .line 100
    return-void
.end method
