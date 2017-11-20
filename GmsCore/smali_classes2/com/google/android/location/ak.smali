.class final Lcom/google/android/location/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/google/android/location/ah;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/location/ah;I)V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/ak;-><init>(Lcom/google/android/location/ah;II)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/ah;II)V
    .locals 1

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/android/location/ak;->c:Lcom/google/android/location/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput p2, p0, Lcom/google/android/location/ak;->a:I

    .line 458
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/ak;->b:I

    .line 459
    return-void
.end method
