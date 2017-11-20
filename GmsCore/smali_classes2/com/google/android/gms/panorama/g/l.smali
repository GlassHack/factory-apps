.class public final Lcom/google/android/gms/panorama/g/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Landroid/graphics/PointF;

.field public final c:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/l;->b:Landroid/graphics/PointF;

    .line 25
    iput-object p2, p0, Lcom/google/android/gms/panorama/g/l;->c:Landroid/graphics/PointF;

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/panorama/g/l;->a:J

    .line 27
    return-void
.end method
