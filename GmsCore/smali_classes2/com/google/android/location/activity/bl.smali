.class final Lcom/google/android/location/activity/bl;
.super Lcom/google/android/location/activity/bp;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/bk;

.field private c:J

.field private d:J

.field private e:I


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/bk;)V
    .locals 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bp;-><init>(Lcom/google/android/location/activity/bk;)V

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/activity/bl;->d:J

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/activity/bl;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/bk;B)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bl;-><init>(Lcom/google/android/location/activity/bk;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/activity/bl;->c:J

    .line 110
    iget-wide v0, p0, Lcom/google/android/location/activity/bl;->c:J

    iput-wide v0, p0, Lcom/google/android/location/activity/bl;->d:J

    .line 111
    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->b:Lcom/google/android/location/activity/k;

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/activity/k;->a(IZ)V

    .line 113
    return-void
.end method

.method final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    invoke-static {p1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/activity/bl;->d:J

    .line 125
    iget v0, p0, Lcom/google/android/location/activity/bl;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/bl;->e:I

    .line 126
    iget v0, p0, Lcom/google/android/location/activity/bl;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/activity/bl;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    new-instance v1, Lcom/google/android/location/activity/bm;

    iget-object v2, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {v1, v2, v4}, Lcom/google/android/location/activity/bm;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    invoke-static {p1}, Lcom/google/android/location/activity/bk;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/activity/bl;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    new-instance v1, Lcom/google/android/location/activity/bs;

    iget-object v2, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {v1, v2, v4}, Lcom/google/android/location/activity/bs;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/location/activity/bp;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/google/android/location/activity/bp;->a(Lcom/google/android/location/activity/bp;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/location/activity/bl;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->b:Lcom/google/android/location/activity/k;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/k;->a(I)V

    .line 119
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "ConfirmingInVehicle"

    return-object v0
.end method
