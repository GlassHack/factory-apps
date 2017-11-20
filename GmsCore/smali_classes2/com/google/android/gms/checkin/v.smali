.class final Lcom/google/android/gms/checkin/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/checkin/x;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/checkin/y;
    .locals 2

    .prologue
    .line 525
    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packages: unexpected param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    new-instance v0, Lcom/google/android/gms/checkin/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/checkin/w;-><init>(Lcom/google/android/gms/checkin/v;)V

    return-object v0
.end method
