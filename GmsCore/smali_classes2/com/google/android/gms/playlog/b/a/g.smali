.class public final Lcom/google/android/gms/playlog/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/gms/playlog/a/b;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Lcom/google/android/gms/playlog/a/b;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/gms/playlog/b/a/g;-><init>(JJ)V

    .line 79
    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide p1, p0, Lcom/google/android/gms/playlog/b/a/g;->a:J

    .line 83
    iput-wide p3, p0, Lcom/google/android/gms/playlog/b/a/g;->b:J

    .line 84
    return-void
.end method
