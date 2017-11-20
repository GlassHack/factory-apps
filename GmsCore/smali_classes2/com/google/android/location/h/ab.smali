.class final Lcom/google/android/location/h/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/location/h/aa;


# direct methods
.method private constructor <init>(Lcom/google/android/location/h/aa;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/location/h/ab;->a:Lcom/google/android/location/h/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/h/aa;B)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/location/h/ab;-><init>(Lcom/google/android/location/h/aa;)V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 80
    check-cast p1, Lcom/google/android/location/h/ad;

    check-cast p2, Lcom/google/android/location/h/ad;

    iget-object v0, p1, Lcom/google/android/location/h/ad;->b:Ljava/lang/Long;

    iget-object v1, p2, Lcom/google/android/location/h/ad;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
