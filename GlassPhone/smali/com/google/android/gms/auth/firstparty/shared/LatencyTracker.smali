.class public Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/g;


# instance fields
.field final mName:Ljava/lang/String;

.field public final parent:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

.field final pe:I

.field final rX:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/g;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startRealtimeMillis"    # J
    .param p5, "parent"    # Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->pe:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->rX:J

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->parent:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v0, "constructed"

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;-><init>(ILjava/lang/String;JLcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)V

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "latency.tracker"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "latency.tracker"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    return-object v0
.end method


# virtual methods
.method b(J)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->rX:J

    sub-long v1, p1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-string v5, "[%s, %,d.%03ds]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->mName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->parent:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    goto :goto_0

    :cond_0
    const-string v1, " > "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createChild(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;-><init>(ILjava/lang/String;JLcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "eventDescription"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    const-string v1, "GLSLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GLSLogging"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "latency.tracker"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public toIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "latency.tracker"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->mName:Ljava/lang/String;

    const-string v1, "writing to parcel"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/g;->a(Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;Landroid/os/Parcel;I)V

    return-void
.end method
