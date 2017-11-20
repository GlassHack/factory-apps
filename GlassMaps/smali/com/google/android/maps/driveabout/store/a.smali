.class public final Lcom/google/android/maps/driveabout/store/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/a;

.field private final b:Lcom/google/android/maps/driveabout/store/b;

.field private final c:I

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/a;IJLcom/google/android/maps/driveabout/store/b;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/a;->a:Lcom/google/googlenav/common/a;

    .line 57
    iput-object p5, p0, Lcom/google/android/maps/driveabout/store/a;->b:Lcom/google/android/maps/driveabout/store/b;

    .line 58
    iput p2, p0, Lcom/google/android/maps/driveabout/store/a;->c:I

    .line 59
    iput-wide p3, p0, Lcom/google/android/maps/driveabout/store/a;->d:J

    .line 60
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 66
    iget v2, p0, Lcom/google/android/maps/driveabout/store/a;->c:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/a;->b:Lcom/google/android/maps/driveabout/store/b;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/store/b;->a()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/a;->b:Lcom/google/android/maps/driveabout/store/b;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/store/b;->b()J

    move-result-wide v2

    .line 71
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    move v0, v1

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/a;->a:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v4

    .line 76
    iget-wide v6, p0, Lcom/google/android/maps/driveabout/store/a;->d:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    .line 80
    iget-wide v6, p0, Lcom/google/android/maps/driveabout/store/a;->d:J

    add-long/2addr v2, v6

    .line 81
    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
