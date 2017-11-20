.class final Lcom/google/android/gms/fitness/service/aw;
.super Lcom/google/android/gms/fitness/data/p;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/data/DataSource;

.field private final b:Lcom/google/android/gms/fitness/n/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/n/d;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/p;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/aw;->a:Lcom/google/android/gms/fitness/data/DataSource;

    .line 281
    iput-object p2, p0, Lcom/google/android/gms/fitness/service/aw;->b:Lcom/google/android/gms/fitness/n/d;

    .line 282
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 3

    .prologue
    .line 286
    const-string v0, "Recording %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/aw;->b:Lcom/google/android/gms/fitness/n/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/n/d;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 288
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordingListener{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/aw;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
