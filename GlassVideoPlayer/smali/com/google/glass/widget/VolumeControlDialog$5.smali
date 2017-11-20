.class Lcom/google/glass/widget/VolumeControlDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$5;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$5;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->access$602(Lcom/google/glass/widget/VolumeControlDialog;Z)Z

    .line 154
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$5;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->dismiss()V

    .line 155
    return-void
.end method
