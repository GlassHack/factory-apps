.class final Lcom/google/android/gms/fitness/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 216
    check-cast p1, Lcom/google/android/gms/fitness/data/Bucket;

    check-cast p2, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Bucket;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
