.class final Lcom/google/android/gms/analytics/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field final b:J

.field final c:J

.field final d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/l;->a:Ljava/lang/String;

    .line 29
    iput-wide p1, p0, Lcom/google/android/gms/analytics/internal/l;->b:J

    .line 30
    iput-wide p3, p0, Lcom/google/android/gms/analytics/internal/l;->c:J

    .line 31
    iput-object p5, p0, Lcom/google/android/gms/analytics/internal/l;->d:Ljava/lang/String;

    .line 32
    return-void
.end method
