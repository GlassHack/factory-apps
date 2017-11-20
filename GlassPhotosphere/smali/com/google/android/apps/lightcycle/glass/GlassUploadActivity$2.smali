.class Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$2;
.super Ljava/lang/Object;
.source "GlassUploadActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/ProgressCallback",
        "<",
        "Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$2;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
    .locals 1
    .param p1, "panoUrl"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$2;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->access$300(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    .line 106
    return-void
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$2;->onDone(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    return-void
.end method

.method public onNewProgressMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$2;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->access$200(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method
