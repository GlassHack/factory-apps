.class public final Lcom/google/android/location/f/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/location/p/j;

.field public d:J

.field public e:J

.field private final f:I


# direct methods
.method public constructor <init>(IIILcom/google/android/location/p/j;)V
    .locals 2

    .prologue
    const-wide/32 v0, 0x7fffffff

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p4, p0, Lcom/google/android/location/f/x;->c:Lcom/google/android/location/p/j;

    .line 48
    iput p1, p0, Lcom/google/android/location/f/x;->a:I

    .line 49
    iput p2, p0, Lcom/google/android/location/f/x;->f:I

    .line 50
    iput-wide v0, p0, Lcom/google/android/location/f/x;->e:J

    .line 51
    iput-wide v0, p0, Lcom/google/android/location/f/x;->d:J

    .line 52
    iput p3, p0, Lcom/google/android/location/f/x;->b:I

    .line 53
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/location/f/x;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(J)J
    .locals 5

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/location/f/x;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final b(J)J
    .locals 5

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/location/f/x;->f:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/location/f/x;->a:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/location/f/x;->f:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
