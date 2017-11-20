.class Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;
.super Ljava/lang/Object;
.source "DataMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/DataMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MissInfo"
.end annotation


# instance fields
.field count:I

.field timeOfFirstMiss:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;->count:I

    .line 126
    return-void
.end method
