.class Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity$1;
.super Ljava/lang/Object;
.source "DeveloperSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity$1;->this$0:Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;

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
    .line 43
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity$1;->this$0:Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->onConfirm()Z

    .line 44
    return-void
.end method
