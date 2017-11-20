.class public Lcom/google/glass/fs/DirectoryTracker$Stats;
.super Ljava/lang/Object;
.source "DirectoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/fs/DirectoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field private final length:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "length"    # J

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-wide p1, p0, Lcom/google/glass/fs/DirectoryTracker$Stats;->length:J

    .line 393
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .prologue
    .line 396
    iget-wide v0, p0, Lcom/google/glass/fs/DirectoryTracker$Stats;->length:J

    return-wide v0
.end method
