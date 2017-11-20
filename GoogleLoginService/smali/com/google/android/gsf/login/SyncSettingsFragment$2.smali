.class Lcom/google/android/gsf/login/SyncSettingsFragment$2;
.super Ljava/lang/Object;
.source "SyncSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/SyncSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/SyncSettingsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/SyncSettingsFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$2;->this$0:Lcom/google/android/gsf/login/SyncSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 123
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$2;->this$0:Lcom/google/android/gsf/login/SyncSettingsFragment;

    invoke-static {v1}, Lcom/google/android/gsf/login/SyncSettingsFragment;->access$200(Lcom/google/android/gsf/login/SyncSettingsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    .line 124
    .local v0, "item":Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->setChecked(Z)V

    .line 128
    :cond_0
    return-void

    .line 126
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
