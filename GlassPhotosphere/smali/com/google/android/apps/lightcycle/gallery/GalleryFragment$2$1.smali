.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;I)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

    iput p2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "actionIndex"    # Ljava/lang/Integer;

    .prologue
    .line 194
    invoke-static {}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->values()[Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v1, v2

    .line 195
    .local v0, "action":Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;
    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$12;->$SwitchMap$com$google$android$apps$lightcycle$gallery$GalleryFragment$StitchedAction:[I

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->val$position:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$400(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;IZ)V

    .line 221
    :goto_0
    return-void

    .line 197
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->val$position:I

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$300(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V

    goto :goto_0

    .line 206
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->val$position:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$400(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;IZ)V

    goto :goto_0

    .line 209
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->val$position:I

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$500(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V

    goto :goto_0

    .line 212
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->val$position:I

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$600(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V

    goto :goto_0

    .line 215
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->val$position:I

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$700(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V

    goto :goto_0

    .line 218
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->val$position:I

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$800(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;->onCallback(Ljava/lang/Integer;)V

    return-void
.end method
