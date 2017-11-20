.class public Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "PhotoSyncExecutorProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/InitializableProvider",
        "<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;

    invoke-direct {v0}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;-><init>()V

    sput-object v0, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->instance:Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    .line 16
    new-instance v0, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider$1;

    const/16 v1, 0x13

    const-string v2, "PhotoSyncExecutor"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider$1;-><init>(Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->init(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->instance:Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;

    return-object v0
.end method
