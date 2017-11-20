.class final Lcom/google/android/gms/checkin/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/checkin/x;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/checkin/y;
    .locals 2

    .prologue
    .line 434
    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count: unexpected param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    new-instance v0, Lcom/google/android/gms/checkin/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/checkin/k;-><init>(Lcom/google/android/gms/checkin/j;)V

    return-object v0
.end method
