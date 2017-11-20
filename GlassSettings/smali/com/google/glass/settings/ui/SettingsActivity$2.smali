.class Lcom/google/glass/settings/ui/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 81
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsActivity$2;->this$0:Lcom/google/glass/settings/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 84
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p2, Lcom/google/glass/settings/ui/SettingsCard;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/google/glass/settings/ui/SettingsCard;->onConfirm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsActivity$2;->this$0:Lcom/google/glass/settings/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SettingsActivity;->onConfirm()Z

    .line 88
    :cond_0
    return-void
.end method
