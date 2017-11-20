.class final Lcom/google/android/gms/fitness/sensors/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/data/o;

.field final synthetic b:Lcom/google/android/gms/fitness/sensors/c/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/c/f;Lcom/google/android/gms/fitness/data/o;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/c/g;->b:Lcom/google/android/gms/fitness/sensors/c/f;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/c/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/g;->b:Lcom/google/android/gms/fitness/sensors/c/f;

    invoke-static {v0}, Lcom/google/android/gms/fitness/sensors/c/f;->a(Lcom/google/android/gms/fitness/sensors/c/f;)Lcom/google/android/gms/common/util/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v4

    .line 146
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/g;->b:Lcom/google/android/gms/fitness/sensors/c/f;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/c/g;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/fitness/sensors/c/f;->a(Lcom/google/android/gms/fitness/sensors/c/f;Lcom/google/android/gms/fitness/data/o;JJ)V

    .line 148
    return-void
.end method
