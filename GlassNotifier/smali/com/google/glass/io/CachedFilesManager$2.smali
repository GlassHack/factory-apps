.class Lcom/google/glass/io/CachedFilesManager$2;
.super Ljava/lang/Object;
.source "CachedFilesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/io/CachedFilesManager;->saveLink(Lcom/google/glass/io/FileType;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/io/CachedFilesManager;


# direct methods
.method constructor <init>(Lcom/google/glass/io/CachedFilesManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/io/CachedFilesManager;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/glass/io/CachedFilesManager$2;->this$0:Lcom/google/glass/io/CachedFilesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/glass/io/CachedFilesManager$2;->this$0:Lcom/google/glass/io/CachedFilesManager;

    invoke-static {v0}, Lcom/google/glass/io/CachedFilesManager;->access$200(Lcom/google/glass/io/CachedFilesManager;)V

    .line 375
    return-void
.end method
