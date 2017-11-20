.class public final Lcom/google/android/gms/panorama/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/android/gms/panorama/b/c;


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lcom/google/android/gms/panorama/b/c;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/panorama/b/c;-><init>(FFF)V

    sput-object v0, Lcom/google/android/gms/panorama/b/c;->d:Lcom/google/android/gms/panorama/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/panorama/b/c;->a(FFF)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/gms/panorama/b/c;->a:F

    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->b:F

    iget v2, p0, Lcom/google/android/gms/panorama/b/c;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->c:F

    iget v2, p0, Lcom/google/android/gms/panorama/b/c;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 114
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 115
    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->a:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/panorama/b/c;->a:F

    .line 116
    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->b:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/panorama/b/c;->b:F

    .line 117
    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->c:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/panorama/b/c;->c:F

    .line 120
    :cond_0
    return v0
.end method

.method public final a(Lcom/google/android/gms/panorama/b/c;)F
    .locals 3

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/gms/panorama/b/c;->a:F

    iget v1, p1, Lcom/google/android/gms/panorama/b/c;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->b:F

    iget v2, p1, Lcom/google/android/gms/panorama/b/c;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->c:F

    iget v2, p1, Lcom/google/android/gms/panorama/b/c;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final a(FFF)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/google/android/gms/panorama/b/c;->a:F

    .line 88
    iput p2, p0, Lcom/google/android/gms/panorama/b/c;->b:F

    .line 89
    iput p3, p0, Lcom/google/android/gms/panorama/b/c;->c:F

    .line 90
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/panorama/b/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
