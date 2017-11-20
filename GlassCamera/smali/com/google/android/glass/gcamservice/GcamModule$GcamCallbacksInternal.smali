.class Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacksInternal;
.super Lcom/google/android/glass/gcamservice/IGcamCallbacksInternal$Stub;
.source "GcamModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/gcamservice/GcamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GcamCallbacksInternal"
.end annotation


# instance fields
.field private final mCallbacks:Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;

.field final synthetic this$0:Lcom/google/android/glass/gcamservice/GcamModule;


# direct methods
.method public constructor <init>(Lcom/google/android/glass/gcamservice/GcamModule;Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;)V
    .locals 2
    .param p2, "callbacks"    # Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacksInternal;->this$0:Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-direct {p0}, Lcom/google/android/glass/gcamservice/IGcamCallbacksInternal$Stub;-><init>()V

    .line 80
    if-nez p2, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbacks is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object p2, p0, Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacksInternal;->mCallbacks:Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;

    .line 84
    return-void
.end method


# virtual methods
.method public onPostview(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "burstId"    # I
    .param p2, "postview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacksInternal;->mCallbacks:Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;->onPostview(ILandroid/graphics/Bitmap;)V

    .line 94
    return-void
.end method

.method public onSnapshotComplete(ILjava/lang/String;)V
    .locals 1
    .param p1, "burstId"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacksInternal;->mCallbacks:Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;->onSnapshotComplete(ILjava/lang/String;)V

    .line 89
    return-void
.end method
