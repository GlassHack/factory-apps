.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$4;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

.field final synthetic val$unstitchedPanos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$4;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$4;->val$unstitchedPanos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 282
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$4;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/Void;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$4;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$4;->val$unstitchedPanos:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1100(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Ljava/util/List;)V

    .line 286
    return-void
.end method
