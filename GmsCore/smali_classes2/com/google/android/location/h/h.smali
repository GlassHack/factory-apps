.class final Lcom/google/android/location/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 264
    check-cast p1, Lcom/google/android/location/h/c;

    check-cast p2, Lcom/google/android/location/h/c;

    iget v0, p1, Lcom/google/android/location/h/c;->a:I

    iget v1, p2, Lcom/google/android/location/h/c;->a:I

    sub-int/2addr v0, v1

    return v0
.end method
