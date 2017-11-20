.class final Lcom/google/android/location/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/location/h/g;


# direct methods
.method private constructor <init>(Lcom/google/android/location/h/g;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/google/android/location/h/k;->a:Lcom/google/android/location/h/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/h/g;B)V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/google/android/location/h/k;-><init>(Lcom/google/android/location/h/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 545
    check-cast p1, Lcom/google/android/location/h/j;

    check-cast p2, Lcom/google/android/location/h/j;

    iget-object v0, p2, Lcom/google/android/location/h/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/location/h/j;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
