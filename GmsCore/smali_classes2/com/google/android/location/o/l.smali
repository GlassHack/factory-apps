.class final Lcom/google/android/location/o/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic a:[Lcom/google/android/location/o/k;


# direct methods
.method constructor <init>([Lcom/google/android/location/o/k;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/location/o/l;->a:[Lcom/google/android/location/o/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/location/o/l;->a:[Lcom/google/android/location/o/k;

    array-length v0, v0

    new-array v0, v0, [I

    .line 121
    new-instance v1, Lcom/google/android/location/o/m;

    invoke-direct {v1, p0, v0}, Lcom/google/android/location/o/m;-><init>(Lcom/google/android/location/o/l;[I)V

    return-object v1
.end method
