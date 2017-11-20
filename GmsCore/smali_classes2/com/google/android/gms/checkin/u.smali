.class final Lcom/google/android/gms/checkin/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/checkin/y;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/checkin/t;

.field private c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/checkin/t;I)V
    .locals 1

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/android/gms/checkin/u;->b:Lcom/google/android/gms/checkin/t;

    iput p2, p0, Lcom/google/android/gms/checkin/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/checkin/u;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/gms/checkin/u;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/checkin/u;->a:I

    invoke-static {p1, v0}, Lcom/google/android/gms/checkin/i;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/u;->c:Ljava/lang/Object;

    .line 518
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/u;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/d/a;->a(Ljava/lang/String;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    const-string v1, "EventLogAggregator"

    const-string v2, "IOException writing StringBuilder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
