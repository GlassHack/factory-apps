.class final Lcom/google/android/gms/checkin/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/checkin/x;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/checkin/y;
    .locals 2

    .prologue
    .line 458
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mean: param expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    new-instance v0, Lcom/google/android/gms/checkin/o;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/checkin/o;-><init>(Lcom/google/android/gms/checkin/n;I)V

    return-object v0
.end method
