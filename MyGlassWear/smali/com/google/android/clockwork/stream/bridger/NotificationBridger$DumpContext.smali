.class Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;
.super Ljava/lang/Object;
.source "NotificationBridger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/bridger/NotificationBridger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpContext"
.end annotation


# instance fields
.field public final dumpCompleted:Ljava/util/concurrent/Semaphore;

.field public final ipw:Lcom/google/android/wearable/util/IndentingPrintWriter;

.field public final verbose:Z


# direct methods
.method public constructor <init>(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V
    .locals 2
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .prologue
    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;->dumpCompleted:Ljava/util/concurrent/Semaphore;

    .line 1115
    iput-object p1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;->ipw:Lcom/google/android/wearable/util/IndentingPrintWriter;

    .line 1116
    iput-boolean p2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;->verbose:Z

    .line 1117
    return-void
.end method
