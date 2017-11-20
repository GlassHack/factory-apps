.class Lcom/google/android/speech/audio/AudioController$1;
.super Ljava/lang/Object;
.source "AudioController.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/audio/AudioController;->createFactoryForRecordedUri(Landroid/net/Uri;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mNumStreamsCreated:I

.field final synthetic this$0:Lcom/google/android/speech/audio/AudioController;

.field final synthetic val$recordedAudioUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/speech/audio/AudioController;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioController$1;->this$0:Lcom/google/android/speech/audio/AudioController;

    iput-object p2, p0, Lcom/google/android/speech/audio/AudioController$1;->val$recordedAudioUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/speech/audio/AudioController$1;->mNumStreamsCreated:I

    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget v1, p0, Lcom/google/android/speech/audio/AudioController$1;->mNumStreamsCreated:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/speech/audio/AudioController$1;->mNumStreamsCreated:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController$1;->this$0:Lcom/google/android/speech/audio/AudioController;

    iget-object v1, v1, Lcom/google/android/speech/audio/AudioController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/audio/AudioController$1;->val$recordedAudioUri:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 119
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_1

    .line 120
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/speech/audio/AudioController$1;->val$recordedAudioUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": null file descriptor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 122
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v1
.end method
