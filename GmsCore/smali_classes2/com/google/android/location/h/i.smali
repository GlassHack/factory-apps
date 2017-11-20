.class final Lcom/google/android/location/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 377
    check-cast p1, Lcom/google/android/location/f/ai;

    check-cast p2, Lcom/google/android/location/f/ai;

    iget-object v0, p2, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ay;

    invoke-static {v0}, Lcom/google/android/location/h/g;->a(Lcom/google/android/location/f/ay;)D

    move-result-wide v2

    iget-object v0, p1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ay;

    invoke-static {v0}, Lcom/google/android/location/h/g;->a(Lcom/google/android/location/f/ay;)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method
