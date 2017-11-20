.class final Lcom/google/android/location/places/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 305
    check-cast p1, Lcom/google/android/location/f/bb;

    check-cast p2, Lcom/google/android/location/f/bb;

    iget v0, p2, Lcom/google/android/location/f/bb;->d:I

    iget v1, p1, Lcom/google/android/location/f/bb;->d:I

    sub-int/2addr v0, v1

    return v0
.end method
