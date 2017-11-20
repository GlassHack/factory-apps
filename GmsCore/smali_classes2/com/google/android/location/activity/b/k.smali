.class public final Lcom/google/android/location/activity/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D

.field private static final b:J

.field private static final c:J

.field private static d:[Lcom/google/android/location/activity/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 12
    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    sput-wide v0, Lcom/google/android/location/activity/b/k;->a:D

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/activity/b/k;->b:J

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/activity/b/k;->c:J

    .line 19
    sget-object v0, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/location/activity/b/l;

    sput-object v0, Lcom/google/android/location/activity/b/k;->d:[Lcom/google/android/location/activity/b/l;

    .line 22
    new-instance v0, Lcom/google/android/location/activity/b/l;

    sget-wide v2, Lcom/google/android/location/activity/b/k;->b:J

    invoke-direct {v0, v2, v3, v4, v4}, Lcom/google/android/location/activity/b/l;-><init>(JIB)V

    .line 23
    sget-object v1, Lcom/google/android/location/activity/b/k;->d:[Lcom/google/android/location/activity/b/l;

    aput-object v0, v1, v4

    .line 24
    sget-object v1, Lcom/google/android/location/activity/b/k;->d:[Lcom/google/android/location/activity/b/l;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 26
    new-instance v0, Lcom/google/android/location/activity/b/l;

    sget-wide v2, Lcom/google/android/location/activity/b/k;->c:J

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/google/android/location/activity/b/l;-><init>(JIB)V

    .line 27
    sget-object v1, Lcom/google/android/location/activity/b/k;->d:[Lcom/google/android/location/activity/b/l;

    aput-object v0, v1, v5

    .line 28
    sget-object v1, Lcom/google/android/location/activity/b/k;->d:[Lcom/google/android/location/activity/b/l;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 29
    return-void
.end method

.method public static a(I)Lcom/google/android/location/activity/b/l;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/location/activity/b/k;->d:[Lcom/google/android/location/activity/b/l;

    aget-object v0, v0, p0

    return-object v0
.end method
