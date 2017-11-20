.class public final Lcom/google/android/gms/wearable/node/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/google/android/gms/wearable/node/a/c;->b:I

    .line 13
    iput p2, p0, Lcom/google/android/gms/wearable/node/a/c;->c:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 21
    iget v0, p0, Lcom/google/android/gms/wearable/node/a/c;->c:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/wearable/node/a/c;->a:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/a/c;->a:J

    .line 22
    iget v0, p0, Lcom/google/android/gms/wearable/node/a/c;->b:I

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/wearable/node/a/c;->a:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    shl-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/gms/wearable/node/a/c;->c:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/a/c;->a:J

    .line 28
    return-void
.end method
