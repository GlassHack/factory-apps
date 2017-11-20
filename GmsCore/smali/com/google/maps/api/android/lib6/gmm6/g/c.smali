.class public abstract Lcom/google/maps/api/android/lib6/gmm6/g/c;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/g/c;->a:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/g/c;->b:J

    return-void
.end method
