.class final Lcom/google/android/location/fused/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/location/fused/al;->a:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/google/android/location/fused/al;->b:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/al;->c:Z

    .line 55
    iput-wide p3, p0, Lcom/google/android/location/fused/al;->d:J

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/location/fused/al;->a:Ljava/lang/String;

    .line 46
    iput v0, p0, Lcom/google/android/location/fused/al;->b:I

    .line 47
    iput-boolean v0, p0, Lcom/google/android/location/fused/al;->c:Z

    .line 48
    iput-wide p2, p0, Lcom/google/android/location/fused/al;->d:J

    .line 49
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    instance-of v1, p1, Lcom/google/android/location/fused/al;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    check-cast p1, Lcom/google/android/location/fused/al;

    .line 72
    iget-object v1, p0, Lcom/google/android/location/fused/al;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/fused/al;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/location/fused/al;->b:I

    iget v2, p1, Lcom/google/android/location/fused/al;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/location/fused/al;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
