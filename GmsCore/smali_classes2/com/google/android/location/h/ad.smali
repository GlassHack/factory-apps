.class final Lcom/google/android/location/h/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/f/ak;

.field final b:Ljava/lang/Long;

.field c:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/google/android/location/f/ak;)V
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/h/ad;->c:I

    .line 605
    iput-object p1, p0, Lcom/google/android/location/h/ad;->b:Ljava/lang/Long;

    .line 606
    iput-object p2, p0, Lcom/google/android/location/h/ad;->a:Lcom/google/android/location/f/ak;

    .line 607
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/google/android/location/h/ad;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/h/ad;->c:I

    .line 611
    return-void
.end method
