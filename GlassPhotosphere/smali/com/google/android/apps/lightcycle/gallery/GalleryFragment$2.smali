.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;

    invoke-direct {v1, p0, p3}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;I)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$900(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Lcom/google/android/apps/lightcycle/util/Callback;Z)V

    .line 223
    return-void
.end method
