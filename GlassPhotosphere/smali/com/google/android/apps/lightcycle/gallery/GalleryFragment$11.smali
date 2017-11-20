.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->zipAndSendPano(I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

.field final synthetic val$progressDialog:Landroid/app/AlertDialog;

.field final synthetic val$tempZipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Landroid/app/AlertDialog;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;->val$progressDialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;->val$tempZipFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 541
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;->val$progressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 543
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;->val$tempZipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 551
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Panorama for debugging"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lightcycle-debug-dump@google.com"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "(Explain what is wrong with the panorama.)"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    const-string v2, "Send using:"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->startActivity(Landroid/content/Intent;)V

    .line 558
    .end local v0    # "sendIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 538
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;->onCallback(Ljava/lang/Boolean;)V

    return-void
.end method
