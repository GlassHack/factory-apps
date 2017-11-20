.class final Lcom/google/android/location/activity/bn;
.super Lcom/google/android/location/activity/bp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/l;


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/bk;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/bk;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    iput-object p1, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bp;-><init>(Lcom/google/android/location/activity/bk;)V

    .line 210
    iput v0, p0, Lcom/google/android/location/activity/bn;->c:I

    .line 211
    iput v0, p0, Lcom/google/android/location/activity/bn;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/bk;B)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bn;-><init>(Lcom/google/android/location/activity/bk;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-super {p0}, Lcom/google/android/location/activity/bp;->a()V

    .line 222
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->b:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/location/activity/k;->a(IZ)V

    .line 223
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->b:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/location/activity/l;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    iget-object v1, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    iget-object v1, v1, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    const-wide/32 v4, 0x15f90

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/bk;->a(J)V

    .line 227
    return-void
.end method

.method protected final a(Lcom/google/android/location/activity/bp;)V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/google/android/location/activity/bp;->a(Lcom/google/android/location/activity/bp;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->b:Lcom/google/android/location/activity/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/k;->a(I)V

    .line 233
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->b:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p0}, Lcom/google/android/location/activity/k;->b(Lcom/google/android/location/activity/l;)V

    .line 234
    return-void
.end method

.method public final a_(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    invoke-static {p1}, Lcom/google/android/location/activity/bk;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget v0, p0, Lcom/google/android/location/activity/bn;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/bn;->c:I

    .line 240
    iget v0, p0, Lcom/google/android/location/activity/bn;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    invoke-static {v0}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    invoke-static {p1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget v0, p0, Lcom/google/android/location/activity/bn;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/bn;->d:I

    .line 245
    iget v0, p0, Lcom/google/android/location/activity/bn;->d:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    new-instance v1, Lcom/google/android/location/activity/bm;

    iget-object v2, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/bm;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "MaybeLeavingVehicleState"

    return-object v0
.end method

.method protected final c()V
    .locals 4

    .prologue
    .line 253
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "VehExitDetector"

    const-string v1, "Timed out waiting for exit"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    new-instance v1, Lcom/google/android/location/activity/bm;

    iget-object v2, p0, Lcom/google/android/location/activity/bn;->a:Lcom/google/android/location/activity/bk;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/bm;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V

    .line 255
    return-void
.end method
