.class Lcom/google/glass/camera/TakePictureActivity$3;
.super Ljava/lang/Object;
.source "TakePictureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 275
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$300(Lcom/google/glass/camera/TakePictureActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$400(Lcom/google/glass/camera/TakePictureActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/TakePictureActivity;->access$500(Lcom/google/glass/camera/TakePictureActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/TakePictureActivity;->access$600(Lcom/google/glass/camera/TakePictureActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/TakePictureActivity;->access$500(Lcom/google/glass/camera/TakePictureActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$3;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/TakePictureActivity;->access$600(Lcom/google/glass/camera/TakePictureActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    goto :goto_0
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
    .line 285
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
