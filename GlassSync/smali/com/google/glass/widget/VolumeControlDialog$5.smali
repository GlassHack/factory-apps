.class Lcom/google/glass/widget/VolumeControlDialog$5;
.super Ljava/lang/Object;
.source "VolumeControlDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/VolumeControlDialog;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/VolumeControlDialog;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$5;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

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
    .line 153
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$5;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->access$602(Lcom/google/glass/widget/VolumeControlDialog;Z)Z

    .line 154
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$5;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->dismiss()V

    .line 155
    return-void
.end method
