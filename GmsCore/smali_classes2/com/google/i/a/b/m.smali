.class final Lcom/google/i/a/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 60
    check-cast p1, Lcom/google/android/location/f/ai;

    check-cast p2, Lcom/google/android/location/f/ai;

    iget-object v0, p2, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    iget-object v1, p1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method
