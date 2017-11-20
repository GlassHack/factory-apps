.class public Lcom/google/android/shared/logger/EventLogger$LogData;
.super Ljava/lang/Object;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/logger/EventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogData"
.end annotation


# instance fields
.field public final audioPath:I

.field public final networkType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "audioPath"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Lcom/google/android/shared/logger/EventLogger$LogData;->audioPath:I

    .line 144
    iput p2, p0, Lcom/google/android/shared/logger/EventLogger$LogData;->networkType:I

    .line 145
    return-void
.end method
