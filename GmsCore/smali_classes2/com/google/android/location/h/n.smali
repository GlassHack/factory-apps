.class final Lcom/google/android/location/h/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 240
    check-cast p1, Lcom/google/android/location/h/o;

    check-cast p2, Lcom/google/android/location/h/o;

    iget-wide v0, p1, Lcom/google/android/location/h/o;->c:D

    iget-wide v2, p2, Lcom/google/android/location/h/o;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method
