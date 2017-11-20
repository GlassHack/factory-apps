.class final Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskInfo"
.end annotation


# instance fields
.field mExecuted:J

.field mFinished:J

.field final mName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field mQueued:J

.field mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;


# direct methods
.method constructor <init>(Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;)V
    .locals 4
    .param p1, "periodic"    # Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;

    .prologue
    const-wide/16 v2, -0x1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iget-wide v0, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mQueued:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 263
    iget-object v0, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mName:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

    iput-object v0, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

    .line 265
    iput-wide v2, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mQueued:J

    .line 266
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/shared/logger/RequestLoggingContext;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestLoggingContext"    # Lcom/google/android/shared/logger/RequestLoggingContext;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mName:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor$TaskInfo;->mRequestLoggingContext:Lcom/google/android/shared/logger/RequestLoggingContext;

    .line 259
    return-void
.end method
