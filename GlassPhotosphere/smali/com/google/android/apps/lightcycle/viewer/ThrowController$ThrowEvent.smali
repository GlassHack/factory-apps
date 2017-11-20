.class public Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;
.super Ljava/lang/Object;
.source "ThrowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/viewer/ThrowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThrowEvent"
.end annotation


# instance fields
.field public final from:Landroid/graphics/PointF;

.field public final startTime:J

.field public final throwVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "from"    # Landroid/graphics/PointF;
    .param p2, "throwVector"    # Landroid/graphics/PointF;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;->from:Landroid/graphics/PointF;

    .line 25
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;->throwVector:Landroid/graphics/PointF;

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/viewer/ThrowController$ThrowEvent;->startTime:J

    .line 27
    return-void
.end method
