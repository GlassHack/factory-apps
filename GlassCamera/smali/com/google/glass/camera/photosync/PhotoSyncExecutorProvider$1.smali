.class Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider$1;
.super Lcom/google/glass/async/PriorityThreadFactory;
.source "PhotoSyncExecutorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider$1;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/google/glass/async/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 21
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "photoSyncSerialInstance Executor Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 22
    return-object v0
.end method
