.class Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$3;
.super Ljava/lang/Object;
.source "GlassUploadActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->onUploadCompleted(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$3;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDone(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 127
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$3;->onDone(Ljava/lang/Void;)V

    return-void
.end method

.method public onDone(Ljava/lang/Void;)V
    .locals 1
    .param p1, "ignore"    # Ljava/lang/Void;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$3;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->finish()V

    .line 136
    return-void
.end method

.method public onNewProgressMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$3;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->access$200(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method
