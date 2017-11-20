.class Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;
.super Landroid/os/AsyncTask;
.source "DemoAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/glass/DemoAssets;->loadNextDemoPanoAsync(Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/glass/DemoAssets;

.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/glass/DemoAssets;Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;->this$0:Lcom/google/android/apps/lightcycle/glass/DemoAssets;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;->val$tempFile:Ljava/io/File;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;->this$0:Lcom/google/android/apps/lightcycle/glass/DemoAssets;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;->val$tempFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/glass/DemoAssets;->loadNextPano(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "source":Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;->val$tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;->doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;)V
    .locals 1
    .param p1, "result"    # Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/glass/DemoAssets$1;->onPostExecute(Lcom/google/android/apps/lightcycle/glass/DemoAssets$CopiedPanoFile;)V

    return-void
.end method
