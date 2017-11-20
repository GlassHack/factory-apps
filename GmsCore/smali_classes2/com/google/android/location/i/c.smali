.class public final Lcom/google/android/location/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field public b:J

.field private final c:Lcom/google/android/gms/common/util/i;

.field private d:J

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(ZLcom/google/android/gms/common/util/i;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/i/c;->a:Z

    .line 20
    iput-wide v2, p0, Lcom/google/android/location/i/c;->d:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/i/c;->e:Z

    .line 24
    iput-wide v2, p0, Lcom/google/android/location/i/c;->f:J

    .line 27
    iput-wide v2, p0, Lcom/google/android/location/i/c;->b:J

    .line 30
    iput-object p2, p0, Lcom/google/android/location/i/c;->c:Lcom/google/android/gms/common/util/i;

    .line 31
    iget-object v0, p0, Lcom/google/android/location/i/c;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    .line 32
    iput-boolean p1, p0, Lcom/google/android/location/i/c;->a:Z

    .line 33
    iput-wide v0, p0, Lcom/google/android/location/i/c;->d:J

    .line 34
    iput-wide v0, p0, Lcom/google/android/location/i/c;->f:J

    .line 35
    invoke-direct {p0}, Lcom/google/android/location/i/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/i/c;->b:J

    .line 36
    return-void
.end method

.method private a()J
    .locals 4

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/google/android/location/i/c;->d:J

    iget-wide v2, p0, Lcom/google/android/location/i/c;->f:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/android/location/i/c;->a:Z

    .line 77
    iget-object v0, p0, Lcom/google/android/location/i/c;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/i/c;->d:J

    .line 78
    invoke-direct {p0}, Lcom/google/android/location/i/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/i/c;->b:J

    .line 79
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/android/location/i/c;->e:Z

    .line 83
    iget-object v0, p0, Lcom/google/android/location/i/c;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/i/c;->f:J

    .line 84
    invoke-direct {p0}, Lcom/google/android/location/i/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/i/c;->b:J

    .line 85
    return-void
.end method
