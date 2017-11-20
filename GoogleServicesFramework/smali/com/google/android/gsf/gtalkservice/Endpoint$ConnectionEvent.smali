.class public Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
.super Ljava/lang/Object;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionEvent"
.end annotation


# instance fields
.field protected mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;->mTimestamp:J

    .line 1495
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1498
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1499
    .local v0, "time":Landroid/text/format/Time;
    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1500
    const-string v1, "%H:%M:%S: "

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    return-void
.end method
