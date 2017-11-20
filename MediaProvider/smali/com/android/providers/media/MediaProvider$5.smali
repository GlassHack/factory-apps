.class Lcom/android/providers/media/MediaProvider$5;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->processNewNoMediaPath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

.field final synthetic val$nomedia:Ljava/io/File;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Ljava/io/File;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3633
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$5;->val$nomedia:Ljava/io/File;

    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$5;->val$helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    iput-object p4, p0, Lcom/android/providers/media/MediaProvider$5;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p5, p0, Lcom/android/providers/media/MediaProvider$5;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3636
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 3637
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$5;->val$nomedia:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3638
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$5;->val$helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$5;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$5;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3642
    :goto_0
    return-void

    .line 3640
    :cond_0
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$5;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
