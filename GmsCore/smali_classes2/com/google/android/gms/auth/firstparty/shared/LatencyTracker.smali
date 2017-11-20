.class public Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/g;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:J

.field public final d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/g;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a:I

    .line 58
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->c:J

    .line 60
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    .line 61
    const-string v0, "constructed"

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
    .locals 1

    .prologue
    .line 35
    const-string v0, "latency.tracker"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
    .locals 1

    .prologue
    .line 39
    const-string v0, "latency.tracker"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
    .locals 7

    .prologue
    .line 31
    new-instance v1, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;-><init>(ILjava/lang/String;JLcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)V

    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 65
    const-string v0, "GLSLogging"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 68
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->c:J

    sub-long v4, v0, v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-string v3, "[%s, %,d.%03ds]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v11

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->d:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    goto :goto_0

    :cond_0
    const-string v0, " > "

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "GLSLogging"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
    .locals 7

    .prologue
    .line 109
    new-instance v1, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;-><init>(ILjava/lang/String;JLcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)V

    return-object v1
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 105
    const-string v0, "latency.tracker"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 101
    const-string v0, "latency.tracker"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b:Ljava/lang/String;

    const-string v1, "writing to parcel"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/g;->a(Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;Landroid/os/Parcel;I)V

    .line 121
    return-void
.end method
