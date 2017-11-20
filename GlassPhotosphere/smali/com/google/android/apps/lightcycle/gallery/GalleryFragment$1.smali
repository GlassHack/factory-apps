.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$1;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 165
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    const/16 v2, 0x17

    if-ne p2, v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$000(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v2, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$002(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Z)Z

    .line 180
    :goto_0
    return v0

    .line 175
    :cond_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Show Panorama."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$200(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$300(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 180
    goto :goto_0
.end method
