.class final Lcom/google/android/gms/checkin/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/checkin/x;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/checkin/y;
    .locals 2

    .prologue
    .line 488
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max: param expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    new-instance v0, Lcom/google/android/gms/checkin/s;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/checkin/s;-><init>(Lcom/google/android/gms/checkin/r;I)V

    return-object v0
.end method
