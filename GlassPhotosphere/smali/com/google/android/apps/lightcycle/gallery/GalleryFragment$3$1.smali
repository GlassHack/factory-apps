.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3$1;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1000(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V

    .line 258
    return-void
.end method
