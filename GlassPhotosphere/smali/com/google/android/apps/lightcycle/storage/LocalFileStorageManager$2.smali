.class Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;
.super Ljava/lang/Object;
.source "LocalFileStorageManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->cleanUpOldSessions(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;->this$0:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 431
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
