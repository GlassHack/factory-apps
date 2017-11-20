.class public final Lcom/google/android/gms/fitness/n/at;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 422
    iput-object p2, p0, Lcom/google/android/gms/fitness/n/at;->a:Lcom/google/android/gms/fitness/data/DataType;

    .line 423
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/at;->a:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method
