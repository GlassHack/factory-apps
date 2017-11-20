.class Lcom/android/shell/BugreportReceiver$1;
.super Landroid/os/AsyncTask;
.source "BugreportReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shell/BugreportReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shell/BugreportReceiver;

.field final synthetic val$bugreportFile:Ljava/io/File;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/shell/BugreportReceiver;Ljava/io/File;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/shell/BugreportReceiver$1;->this$0:Lcom/android/shell/BugreportReceiver;

    iput-object p2, p0, Lcom/android/shell/BugreportReceiver$1;->val$bugreportFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/shell/BugreportReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/shell/BugreportReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/shell/BugreportReceiver$1;->val$bugreportFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->deleteOlderFiles(Ljava/io/File;IJ)V

    .line 104
    iget-object v0, p0, Lcom/android/shell/BugreportReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
