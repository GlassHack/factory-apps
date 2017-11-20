.class public Lcom/google/glass/logging/audio/SyncFailedException;
.super Ljava/lang/Exception;
.source "SyncFailedException.java"


# instance fields
.field private final deleteRecord:Z


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Z)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "deleteRecord"    # Z

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 11
    iput-boolean p2, p0, Lcom/google/glass/logging/audio/SyncFailedException;->deleteRecord:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "deleteRecord"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    iput-boolean p3, p0, Lcom/google/glass/logging/audio/SyncFailedException;->deleteRecord:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "deleteRecord"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    iput-boolean p2, p0, Lcom/google/glass/logging/audio/SyncFailedException;->deleteRecord:Z

    .line 17
    return-void
.end method


# virtual methods
.method public shouldDeleteRecord()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/SyncFailedException;->deleteRecord:Z

    return v0
.end method
