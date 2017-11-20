.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->startPhotoUpload(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$picture:Lorg/apache/http/HttpEntity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;->val$picture:Lorg/apache/http/HttpEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 324
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 329
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1200(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    sget v0, Lcom/google/android/apps/lightcycle/R$string;->authentication_error:I

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->cannot_get_authtoken:I

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;->val$picture:Lorg/apache/http/HttpEntity;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1300(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V

    goto :goto_0
.end method
