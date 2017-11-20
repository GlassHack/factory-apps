.class Lcom/google/common/util/concurrent/Striped$PaddedLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# instance fields
.field q1:J

.field q2:J

.field q3:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 371
    return-void
.end method
