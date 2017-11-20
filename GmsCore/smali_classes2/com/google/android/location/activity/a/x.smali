.class final Lcom/google/android/location/activity/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/location/activity/a/s;

    check-cast p2, Lcom/google/android/location/activity/a/s;

    iget v0, p2, Lcom/google/android/location/activity/a/s;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/google/android/location/activity/a/s;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/location/activity/a/s;->a:Lcom/google/android/location/activity/a/t;

    iget-object v1, p2, Lcom/google/android/location/activity/a/s;->a:Lcom/google/android/location/activity/a/t;

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/a/t;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    :cond_0
    return v0
.end method
