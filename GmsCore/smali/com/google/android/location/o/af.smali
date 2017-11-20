.class public final Lcom/google/android/location/o/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/util/i;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/i;)V
    .locals 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/location/o/af;->a:Lcom/google/android/gms/common/util/i;

    .line 20
    iget-object v0, p0, Lcom/google/android/location/o/af;->a:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/o/af;->a:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/o/af;->b:J

    .line 21
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/google/android/location/o/af;->b:J

    iget-object v2, p0, Lcom/google/android/location/o/af;->a:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
