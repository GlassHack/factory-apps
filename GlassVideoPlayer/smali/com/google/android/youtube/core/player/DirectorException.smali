.class public final Lcom/google/android/youtube/core/player/DirectorException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final isRetriable:Z

.field public final reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DirectorException;->reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 27
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/DirectorException;->isRetriable:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p3, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DirectorException;->reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 34
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/DirectorException;->isRetriable:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;ZLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DirectorException;->reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 40
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/DirectorException;->isRetriable:Z

    .line 41
    return-void
.end method
