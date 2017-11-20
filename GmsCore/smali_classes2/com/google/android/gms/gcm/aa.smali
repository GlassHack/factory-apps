.class final Lcom/google/android/gms/gcm/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:Lcom/google/b/a/a/e;


# direct methods
.method constructor <init>(Lcom/google/b/a/a/e;)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/aa;->a:J

    .line 128
    iput-object p1, p0, Lcom/google/android/gms/gcm/aa;->b:Lcom/google/b/a/a/e;

    .line 129
    return-void
.end method
