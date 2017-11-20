.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$8;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->showActionsDialog(Lcom/google/android/apps/lightcycle/util/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

.field final synthetic val$action:Lcom/google/android/apps/lightcycle/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$8;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$8;->val$action:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$8;->val$action:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 425
    return-void
.end method
