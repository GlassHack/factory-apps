.class final Lcom/google/android/gms/checkin/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/checkin/y;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/checkin/l;

.field private c:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/checkin/l;I)V
    .locals 2

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/android/gms/checkin/m;->b:Lcom/google/android/gms/checkin/l;

    iput p2, p0, Lcom/google/android/gms/checkin/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/checkin/m;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/google/android/gms/checkin/m;->c:J

    iget v2, p0, Lcom/google/android/gms/checkin/m;->a:I

    invoke-static {p1, v2}, Lcom/google/android/gms/checkin/i;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/checkin/i;->a(Ljava/lang/Object;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/checkin/m;->c:J

    .line 451
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 448
    iget-wide v0, p0, Lcom/google/android/gms/checkin/m;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method
