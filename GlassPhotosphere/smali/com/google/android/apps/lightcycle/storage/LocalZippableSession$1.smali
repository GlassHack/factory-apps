.class Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;
.super Landroid/os/AsyncTask;
.source "LocalZippableSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->saveAs(Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

.field final synthetic val$doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->this$0:Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->val$doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 49
    const/4 v5, 0x0

    .line 51
    .local v5, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->val$file:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v6, "zos":Ljava/util/zip/ZipOutputStream;
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->this$0:Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$100(Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v7

    iget-boolean v7, v7, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailExists:Z

    if-eqz v7, :cond_0

    .line 61
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->this$0:Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$100(Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->thumbnailFile:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v4, "thumbnail":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    const-string v7, "thumbnail.jpg"

    invoke-static {v7, v4, v6}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$200(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    .line 68
    .end local v4    # "thumbnail":Ljava/io/File;
    :cond_0
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->this$0:Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$100(Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v7

    iget-boolean v7, v7, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedExists:Z

    if-eqz v7, :cond_1

    .line 69
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->this$0:Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$100(Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->stitchedFile:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "stitchedPano":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v6}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$200(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    .line 77
    .end local v3    # "stitchedPano":Ljava/io/File;
    :cond_1
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->this$0:Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$100(Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->this$0:Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$100(Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;->captureDirectory:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "captureDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "capture"

    invoke-static {v7, v8, v0, v6}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    .line 87
    .end local v0    # "captureDirectory":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    invoke-static {}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ZIP file successfully written."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->val$doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    move-object v5, v6

    .line 95
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_0
    return-object v9

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->val$doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;->val$doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    move-object v5, v6

    .line 90
    .end local v6    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method
