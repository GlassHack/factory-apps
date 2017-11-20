.class final Lcom/google/android/gms/checkin/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/checkin/y;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/checkin/n;

.field private c:D

.field private d:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/checkin/n;I)V
    .locals 2

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/android/gms/checkin/o;->b:Lcom/google/android/gms/checkin/n;

    iput p2, p0, Lcom/google/android/gms/checkin/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/checkin/o;->c:D

    .line 461
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/checkin/o;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/google/android/gms/checkin/o;->c:D

    iget v2, p0, Lcom/google/android/gms/checkin/o;->a:I

    invoke-static {p1, v2}, Lcom/google/android/gms/checkin/i;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/checkin/i;->a(Ljava/lang/Object;)J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/checkin/o;->c:D

    .line 467
    iget v0, p0, Lcom/google/android/gms/checkin/o;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/checkin/o;->d:I

    .line 468
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 463
    iget v0, p0, Lcom/google/android/gms/checkin/o;->d:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/checkin/o;->c:D

    iget v2, p0, Lcom/google/android/gms/checkin/o;->d:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 464
    return-void

    .line 463
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
