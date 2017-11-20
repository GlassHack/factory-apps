.class public final Lcom/google/android/location/f/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/f/am;->d:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/f/ak;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/f/am;->d:I

    .line 36
    iget v0, p1, Lcom/google/android/location/f/ak;->d:I

    iput v0, p0, Lcom/google/android/location/f/am;->a:I

    .line 37
    iget v0, p1, Lcom/google/android/location/f/ak;->e:I

    iput v0, p0, Lcom/google/android/location/f/am;->b:I

    .line 38
    iget v0, p1, Lcom/google/android/location/f/ak;->f:I

    iput v0, p0, Lcom/google/android/location/f/am;->c:I

    .line 39
    iget v0, p1, Lcom/google/android/location/f/ak;->g:I

    iput v0, p0, Lcom/google/android/location/f/am;->d:I

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/location/f/ak;
    .locals 5

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/location/f/ak;

    iget v1, p0, Lcom/google/android/location/f/am;->a:I

    iget v2, p0, Lcom/google/android/location/f/am;->b:I

    iget v3, p0, Lcom/google/android/location/f/am;->c:I

    iget v4, p0, Lcom/google/android/location/f/am;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/f/ak;-><init>(IIII)V

    return-object v0
.end method

.method public final a(II)Lcom/google/android/location/f/am;
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/location/f/am;->a:I

    .line 48
    iput p2, p0, Lcom/google/android/location/f/am;->b:I

    .line 49
    return-object p0
.end method
