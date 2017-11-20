.class final Lcom/google/android/gms/analytics/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field final b:J

.field final c:J

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "https:"

    iput-object v0, p0, Lcom/google/android/gms/analytics/av;->d:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/av;->a:Ljava/lang/String;

    .line 37
    iput-wide p1, p0, Lcom/google/android/gms/analytics/av;->b:J

    .line 38
    iput-wide p3, p0, Lcom/google/android/gms/analytics/av;->c:J

    .line 39
    return-void
.end method
