.class public final Lcom/google/android/youtube/core/async/Timestamped;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final element:Ljava/lang/Object;

.field public final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    .line 29
    iput-wide p2, p0, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    .line 30
    return-void
.end method
